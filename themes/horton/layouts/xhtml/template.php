<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<base href="<?= $this->basehref ?>"></base>
	<?= $this->html_head_entries ?>
	<title><?= $this->html_title ?></title>
	<meta name="description" content="<?= $this->meta_description ?>" />
	<?= $this->google_analytics ?>
</head>

<body>

<div id="doc">

	<div id="hd" class="clearfix">
		<div id="hd_content">
			<?= $this->header_title ?>
			<?= $this->tagline ?>
		</div>
	</div>

	<div id="bd">

		<div id="content">
			<?= $this->navbar ?>
			<?= $this->title ?>
			<?= $this->content ?>
		</div>

		<div id="sidebar">
			<?= $this->sidebar ?>
		</div>

	</div>

	<div id="ft">
	</div>

</div>

</body>
</html>
