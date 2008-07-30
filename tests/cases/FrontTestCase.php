<?php

require_once 'TestCase.php';

class FrontTestCase extends TestCase
{
	// {{{ class constants

	const MAX_POSTS = 10;

	// }}}
	// {{{ public function testLoad()

	public function testLoad()
	{
		$this->selenium->open('');
		$this->assertNoExceptions();
		$this->assertHasPosts();

		// make sure footer summary is there
		$text = sprintf('posts, displaying 1 to %s', self::MAX_POSTS);
		$this->assertTrue($this->selenium->isTextPresent($text));
	}

	// }}}
	// {{{ public function testPagination()

	public function testPagination()
	{
		$this->selenium->open('page2');
		$this->assertNoExceptions();
		$this->assertHasPosts();

		// make sure footer summary is correct
		$start = self::MAX_POSTS + 1;
		$end   = self::MAX_POSTS * 2;
		$text  = sprintf('posts, displaying %s to %s', $start, $end);
		$this->assertTrue($this->selenium->isTextPresent($text));
	}

	// }}}
	// {{{ public function testInvalidPagination()

	public function testInvalidPagination()
	{
		$this->selenium->open('page20000');
		$this->assertNotFound();
	}

	// }}}
}

?>
