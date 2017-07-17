<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <!-- 推广优化组件开始 -->
    <title><?php echo $this->_tpl_vars['lngpack']['sitename'] ?></title>
    <meta name="keywords" content="<?php echo $this->_tpl_vars['lngpack']['keyword'] ?>">
    <meta name="description" content="<?php echo $this->_tpl_vars['lngpack']['description'] ?>">
    <!-- 推广优化组件结束 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <!-- css start -->
    <link type="text/css" rel="stylesheet" href="<?php echo $this->_tpl_vars['rootpath'] ?>style/reset.css">
    <link type="text/css" rel="stylesheet" href="<?php echo $this->_tpl_vars['rootpath'] ?>style/public.css">
    <link type="text/css" rel="stylesheet" href="<?php echo $this->_tpl_vars['rootpath'] ?>style/inside.css">
    <!-- css end -->
</head>

<body>
    <div class="wrap">
        <div id="wrap">
            <div id="mask"></div>
            <!-- head start -->
            <div id="head">
                <a class="back" href="javascript:history.go(-1)"></a>
                <div id="navSwitch">
                    <span class="s1"></span>
                    <p></p>
                    <span class="s3"></span>
                </div>
                <h1>Informations</h1>
            </div>
            <!-- head end -->
            <div class="content call_message">
                <h1>Informations：</h1>
                <p class="text"><?php echo $this->_tpl_vars['calltitle'] ?></p>
                <p class="back"><span id="spanSeconds" style="font-weight: bold; ">3</span> seconds to return to the default address!</p>
				<div class="botton" onclick="javascript:location.href = '<?php echo $this->_tpl_vars['linkURL'] ?>';">
				Click back</div>
            </div>
            <!-- navigation  start-->
            885BA145EFC8431D34F5CC06D142F143touch/en/public/nav.html|885BA145EFC8431D34F5CC06D142F143
            <!-- navigation  end-->
            <!-- footer start -->
            885BA145EFC8431D34F5CC06D142F143touch/en/public/footer.html|885BA145EFC8431D34F5CC06D142F143
            <!-- footer end -->
        </div>
    </div>
    <script type="text/javascript">
		var seconds = 3;
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
	<!-- script end -->
</body>
</html>
