<?php

require_once 'TestCase.php';

class FeedTestCase extends TestCase
{
	// {{{ protected properties

	/**
	 * @var DOMXPath
	 */
	protected $xpath;

	/**
	 * @var DOMDocument
	 */
	protected $document;

	/**
	 * @var array
	 */
	protected $request_info;

	/**
	 * @var string
	 */
	protected $location;

	// }}}
	// {{{ protected function load()

	protected function load($uri)
	{
		if (preg_match('/^https?:/i', $uri) === 0) {
			$uri = $this->base_href.$uri;
		}

		$curl = curl_init($uri);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
		$feed = curl_exec($curl);
		$this->request_info = curl_getinfo($curl);
		curl_close($curl);

		$this->location = $uri;

		$this->document = new DOMDocument();
		$this->document->resolveExternals = true;
		$this->document->loadXml($feed);

		$this->xpath = new DOMXPath($this->document);
		$this->xpath->registerNamespace('atom', 'http://www.w3.org/2005/Atom');
		$this->xpath->registerNamespace('html','http://www.w3.org/1999/xhtml');
	}

	// }}}
	// {{{ protected function loadHtml()

	protected function loadHtml($uri)
	{
		if (preg_match('/^https?:/i', $uri) === 0) {
			$uri = $this->base_href.$uri;
		}

		$curl = curl_init($uri);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
		$html = curl_exec($curl);
		$this->request_info = curl_getinfo($curl);
		curl_close($curl);

		$this->location = $uri;

		$tidy = new Tidy();
		$tidy->parseString($html, array(
			'output-xhtml'     => true,
			'char-encoding'    => 'utf8',
			'numeric-entities' => true,
		), 'utf8');

		$tidy->cleanRepair();

		$this->document = new DOMDocument();
		$this->document->resolveExternals = true;
		$this->document->loadXml($tidy);

		$this->xpath = new DOMXPath($this->document);
		$this->xpath->registerNamespace('atom', 'http://www.w3.org/2005/Atom');
		$this->xpath->registerNamespace('html','http://www.w3.org/1999/xhtml');
	}

	// }}}
	// {{{ protected function assertNoExceptions()

	protected function assertNoExceptions()
	{
		$list= $this->xpath->query("//html:div[@class='swat-exception']");
		$this->assertEquals(0, $list->length);
	}

	// }}}
	// {{{ protected function assertFeedElementsPresent()

	protected function assertFeedElementsPresent()
	{
		$list= $this->xpath->query("/atom:feed/atom:generator");
		$this->assertEquals(1, $list->length);

		$list = $this->xpath->query("/atom:feed/atom:id");
		$this->assertEquals(1, $list->length);

		$list = $this->xpath->query("/atom:feed/atom:link[@rel='self']");
		$this->assertEquals(1, $list->length);

		$list = $this->xpath->query("/atom:feed/atom:subtitle");
		$this->assertEquals(1, $list->length);

		$list = $this->xpath->query("/atom:feed/atom:title");
		$this->assertEquals(1, $list->length);

		$list = $this->xpath->query("/atom:feed/atom:updated");
		$this->assertEquals(1, $list->length);
	}

	// }}}
	// {{{ protected function assertEntryElementsPresent()

	protected function assertEntryElementsPresent()
	{
		$list= $this->xpath->query("/atom:feed/atom:entry");
		$this->assertNotEquals(0, $list->length);

		$list = $this->xpath->query("/atom:feed/atom:entry/atom:author");
		$this->assertNotEquals(0, $list->length);

		$list = $this->xpath->query(
			"/atom:feed/atom:entry/atom:author/atom:name");

		$this->assertNotEquals(0, $list->length);

		$list = $this->xpath->query("/atom:feed/atom:entry/atom:content");
		$this->assertNotEquals(0, $list->length);

		$list = $this->xpath->query("/atom:feed/atom:entry/atom:id");
		$this->assertNotEquals(0, $list->length);

		$list = $this->xpath->query(
			"/atom:feed/atom:entry/atom:link[@rel='alternate']");

		$this->assertNotEquals(0, $list->length);

		$list = $this->xpath->query("/atom:feed/atom:entry/atom:title");
		$this->assertNotEquals(0, $list->length);

		$list = $this->xpath->query("/atom:feed/atom:entry/atom:updated");
		$this->assertNotEquals(0, $list->length);
	}

	// }}}
	// {{{ protected function assertPaginationWorks()

	protected function assertPaginationWorks()
	{
		// get next page
		$href = $this->xpath->evaluate(
			"string(/atom:feed/atom:link[@rel='next']/@href)");

		$this->assertNotEquals('', $href);

		// load next page
		$this->load($href);
		$this->assertNoExceptions();

		// get last page
		$href = $this->xpath->evaluate(
			"string(/atom:feed/atom:link[@rel='last']/@href)");

		$this->assertNotEquals('', $href);

		// load last page
		$this->load($href);
		$this->assertNoExceptions();

		// make sure there is no next page
		$list = $this->xpath->query("/atom:feed/atom:link[@rel='next']");
		$this->assertEquals(0, $list->length);

		// get prev page
		$href = $this->xpath->evaluate(
			"string(/atom:feed/atom:link[@rel='previous']/@href)");

		$this->assertNotEquals('', $href);

		// load prev page
		$this->load($href);
		$this->assertNoExceptions();

		// get first page
		$href = $this->xpath->evaluate(
			"string(/atom:feed/atom:link[@rel='first']/@href)");

		$this->assertNotEquals('', $href);

		// load first page
		$this->load($href);
		$this->assertNoExceptions();
	}

	// }}}
	// {{{ protected function assertNotFound()

	protected function assertNotFound()
	{
		// make sure there was an exception
		$list = $this->xpath->query("//html:div[@class='swat-exception']");
		$this->assertNotEquals(0, $list->length);

		// make sure response code was 404
		$this->assertEquals(404, $this->request_info['http_code']);
	}

	// }}}
}

?>