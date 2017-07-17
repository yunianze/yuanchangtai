<!DOCTYPE html>

<html lang="en">



<head>

<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />

<title><?php echo $this->_tpl_vars['lngpack']['sitename'] ?></title>

<meta name="keywords" content="<?php echo $this->_tpl_vars['lngpack']['keyword'] ?>" />

<meta name="description" content="<?php echo $this->_tpl_vars['lngpack']['description'] ?>" />

<script type="text/javascript" src="<?php echo $this->_tpl_vars['rootdir'] ?>js/jquery.js"></script>

<script type="text/javascript" src="<?php echo $this->_tpl_vars['rootdir'] ?>js/basicrun.js"></script>

<script type="text/javascript" src="<?php echo $this->_tpl_vars['rootdir'] ?>js/jquery.Slide.js"></script>

<link rel="shortcut icon" href="<?php echo $this->_tpl_vars['rootpath'] ?>images/favicon.ico" type="image/x-icon"/>

    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/common.css">

    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/styles.css">

<link href="<?php echo $this->_tpl_vars['rootpath'] ?>css/public.css" rel="stylesheet" type="text/css" />

<link href="<?php echo $this->_tpl_vars['rootpath'] ?>css/5div.css" rel="stylesheet" type="text/css" />

<link href="<?php echo $this->_tpl_vars['rootpath'] ?>css/page.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

	$(window).load(function() {

		$("#clickmenubotton li span").hover(function() {

			$(this).addClass("menuhover");

			$(this).parent().find("ul.subnav").slideDown('fast').show();

			$(this).parent().hover(function() {

			}, function() {

				$(this).parent().find("ul.subnav").fadeOut('fast');

				$(this).parent().find("span").removeClass("menuhover");

			});

		});

	});



	var seconds = <?php echo $this->_tpl_vars['tiptime'] ?>;

	var defaultUrl = "<?php echo $this->_tpl_vars['linkURL'] ?>";

	onload = function() {

		if (defaultUrl == 'javascript:history.go(-1)' && window.history.length == 0) {

			document.getElementById('redirectionMsg').innerHTML = '';

			return;

		}

		window.setInterval(redirection, 1000);

	}

	function redirection() {

		if (seconds <= 0) {

			window.clearInterval();

			return;

		}

		seconds--;

		document.getElementById('spanSeconds').innerHTML = seconds;

		if (seconds == 0) {

			window.clearInterval();

			location.href = defaultUrl;

		}

	}

</script>

</head>



<body>



  <!-- banner -->

    <?php if($this->_tpl_vars['type']['typepic']!=''){ ?>

<div class="ql_page_bannpic"><img src="<?php echo $this->_tpl_vars['rootdir'] ?><?php echo $this->_tpl_vars['type']['typepic'] ?>" alt="<?php echo $this->_tpl_vars['type']['typename'] ?>"/></div>

<?php } ?>

    <!-- banner end-->



<div class="ql_page" style="margin-bottom:80px;">

	<div class="ql_member_login_center ql_formwidth_c">

		<div class="title mb20"><div class="messageicon2"></div></div>

		<div class="ql_form_group tc f14 oninage b"><?php echo $this->_tpl_vars['calltitle'] ?></div>

		<div class="ql_form_group tc f14">You can select the following operation buttons, the website will be in <span class="em" id="spanSeconds"><?php echo $this->_tpl_vars['tiptime'] ?></span> Seconds to return to the default address!</div>



		<div class="ql_form_group tc pt15">

			<?php if($this->_tpl_vars['backid'] > 0){ ?>

			<input class="button blue2" onclick="javascript:location.href = '<?php echo $this->_tpl_vars['backlinkURL'] ?>';" name="submit" type="submit" value="Click back" />

			<?php } ?>

			<input class="button blue2" onclick="javascript:location.href = '<?php echo $this->_tpl_vars['linkURL'] ?>';" name="submit" type="submit" value="Click back" />

		</div>

	</div>

</div>

</body>

</html>

