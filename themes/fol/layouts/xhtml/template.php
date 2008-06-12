<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<base href="<?= $this->basehref ?>"></base>
	<?=$this->html_head_entries?>
	<title><?= $this->html_title ?></title>
	<link rel="icon" href="favicon.ico" type="image/x-icon" />
	<meta name="description" content="<?= $this->meta_description ?>" />
	<meta name="keywords" content="<?= $this->meta_keywords ?>" />
</head>

<body>

<div id="hd">
	<?= $this->header_title ?>

	<ul>
		<li><a href="http://www.focusedonlight.com">photos</a></li>
		<li><a href="archive/">archives</a></li>
		<li><a href="author/stephen">about</a></li>
		<li><a href="rss">rss</a></li>
	</ul>
</div>

<div id="weblog">

	<?PHP
		if($this->title) { 
			echo $this->navbar;
			echo '<h2 id="page_title">'.$this->title.'</h2>'; 
		}
	?>

	<div id="content">
		<?= $this->content ?>
	</div>

</div>

<div id="ft">
	<?= $this->sidebar ?>
</div>


</body>
</html>
