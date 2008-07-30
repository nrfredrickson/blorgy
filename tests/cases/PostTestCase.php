<?php

require_once 'TestCase.php';

class PostTestCase extends TestCase
{
	// {{{ class constants

	const COMMENT_FULLNAME = 'John Smith';
	const COMMENT_LINK     = 'http://www.example.com/';
	const COMMENT_EMAIL    = 'test@example.com';
	const COMMENT_BODYTEXT = 'This is a test comment left by Selenium.';

	// }}}
	// {{{ public function testLoad()

	public function testLoad()
	{
		$this->loadCommentablePost();

		// make sure the post is displayed
		$this->assertTrue($this->selenium->isElementPresent(
			"xpath=//div[contains(@class, 'entry')]/".
			"h3[@class='entry-title']"));

		$this->assertTrue($this->selenium->isElementPresent(
			"xpath=//div[contains(@class, 'entry')]/".
			"div[@class='entry-content']"));

		// make sure the comments are displayed
		$this->assertTrue($this->selenium->isElementPresent(
			"xpath=//div[@class='entry-comments']"));

		$this->assertTrue($this->selenium->isElementPresent(
			"xpath=//div[@class='entry-comments']/".
			"div[@class='comment']/".
			"h4[@class='comment-title']"));

		// make sure the comment form is displayed
		$this->assertTrue($this->selenium->isElementPresent(
			"xpath=//form[@id='comment_edit_form']"));
	}

	// }}}
	// {{{ public function testNotFound()

	public function testNotFound()
	{
		// TODO: ensure the year and month are valid for this blorg
		$this->selenium->open('archive/2006/november/thispostdoesnotexist');
		$this->assertNotFound();
	}

	// }}}
	// {{{ public function testValidateComment()

	public function testValidateComment()
	{
		$this->loadCommentablePost();

		$this->assertNoExceptions();

		// make sure the comment form is displayed
		$this->assertTrue($this->selenium->isElementPresent(
			"xpath=//form[@id='comment_edit_form']"));

		// just enter the link
		$this->selenium->type('link',     self::COMMENT_LINK);

		$this->selenium->click('post_button');
		$this->selenium->waitForPageToLoad(30000);

		$this->assertTrue($this->selenium->isTextPresent(
			'The Name field is required.'));

		$this->assertTrue($this->selenium->isTextPresent(
			'The Comment field is required.'));

		$this->assertEquals(self::COMMENT_LINK,
			$this->selenium->getValue('link'));
	}

	// }}}
	// {{{ public function testPreviewComment()

	public function testPreviewComment()
	{
		$this->loadCommentablePost();

		$this->enterComment();

		$this->selenium->click('preview_button');
		$this->selenium->waitForPageToLoad(30000);
		$this->assertTrue($this->selenium->isTextPresent(
			'Your comment has not yet been published.'));

		$this->assertTrue($this->selenium->isElementPresent(
			"xpath=//div[@id='comment']"));

		$this->assertEquals(self::COMMENT_FULLNAME,
			$this->selenium->getValue('fullname'));

		$this->assertEquals(self::COMMENT_LINK,
			$this->selenium->getValue('link'));

		$this->assertEquals(self::COMMENT_EMAIL,
			$this->selenium->getValue('email'));

		$this->assertEquals(self::COMMENT_BODYTEXT,
			$this->selenium->getValue('bodytext'));

		$this->assertEquals(
			self::COMMENT_BODYTEXT,
			$this->selenium->getText(
				"xpath=//div[@id='comment']/div[@class='comment-content']/p"));
	}

	// }}}
	// {{{ public function testRememberMeCookie()

	public function testRememberMeCookie()
	{
		$this->loadCommentablePost();

		$this->assertNotContains(TestCase::INSTANCE.'_comment_credentials=',
			$this->selenium->getCookie());

		$this->enterComment();

		$this->selenium->click('remember_me');
		$this->selenium->click('post_button');
		$this->selenium->waitForPageToLoad(30000);

		$this->assertContains(TestCase::INSTANCE.'_comment_credentials=',
			$this->selenium->getCookie());
	}

	// }}}
	// {{{ public function testPostComment()

	public function testPostComment()
	{
		$this->loadCommentablePost();

		$this->enterComment();

		$this->selenium->click('post_button');
		$this->selenium->waitForPageToLoad(30000);
		$this->assertTrue($this->selenium->isTextPresent(
			'Your comment has been published.'));

		// make sure form was cleared
		$this->assertEquals('', $this->selenium->getValue('fullname'));
		$this->assertEquals('', $this->selenium->getValue('link'));
		$this->assertEquals('', $this->selenium->getValue('email'));
		$this->assertEquals('', $this->selenium->getValue('bodytext'));

		// get new comment id
		$location = $this->selenium->getLocation();
		$comment_id = end(explode('#', $location));

		// make sure new comment exists
		$this->assertTrue($this->selenium->isElementPresent(
			"xpath=//div[@id='{$comment_id}']"));

		// make sure new comment bodytext displayed
		$this->assertEquals(
			self::COMMENT_BODYTEXT,
			$this->selenium->getText(
				"xpath=//div[@id='{$comment_id}']/".
				"div[@class='comment-content']/p"));
	}

	// }}}
	// {{{ protected function enterComment()

	protected function enterComment()
	{
		// make sure the comment form is displayed
		$this->assertTrue($this->selenium->isElementPresent(
			"xpath=//form[@id='comment_edit_form']"));

		$this->selenium->type('fullname', self::COMMENT_FULLNAME);
		$this->selenium->type('link',     self::COMMENT_LINK);
		$this->selenium->type('email',    self::COMMENT_EMAIL);
		$this->selenium->type('bodytext', self::COMMENT_BODYTEXT);
	}

	// }}}
	// {{{ protected function loadPost()

	protected function loadPost()
	{
		$this->selenium->open('');
		$this->assertNoExceptions();

		$post_link_xpath =
			"xpath=//div[contains(@class, 'entry')]/".
			"h3[@class='entry-title']/a";

		// page through posts until we find a linked post
		while (!$this->selenium->isElementPresent($post_link_xpath)) {
			$this->selenium->click(
				"xpath=//div[@class='swat-pagination']/a[last()]");

			$this->selenium->waitForPageToLoad(30000);
			$this->assertNoExceptions();
		}

		$element = $this->selenium->click($post_link_xpath);
		$this->selenium->waitForPageToLoad(30000);
		$this->assertNoExceptions();
	}

	// }}}
	// {{{ protected function loadCommentablePost()

	protected function loadCommentablePost()
	{
		$this->selenium->open('');
		$this->assertNoExceptions();

		$comment_link_xpath =
			"xpath=//div[contains(@class, 'entry')]/".
			"div[@class='entry-subtitle']/".
			"a[@class='comment-count']";

		// page through posts until we find a commentable post
		while (!$this->selenium->isElementPresent($comment_link_xpath)) {
			$this->selenium->click(
				"xpath=//div[@class='swat-pagination']/a[last()]");

			$this->selenium->waitForPageToLoad(30000);
			$this->assertNoExceptions();
		}

		$element = $this->selenium->click($comment_link_xpath);
		$this->selenium->waitForPageToLoad(30000);
		$this->assertNoExceptions();
	}

	// }}}
}

?>
