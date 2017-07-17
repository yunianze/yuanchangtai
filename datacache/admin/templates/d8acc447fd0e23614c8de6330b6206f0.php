<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="zh-cn" http-equiv="Content-Language" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title><?php echo $this->_tpl_vars['softtitle'] ?></title>
<link href="templates/css/all.css" rel="stylesheet" type="text/css" />
<link href="templates/css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/control.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var h = $(window).height();
   		$('#centerlogin').css({height:h});
	});
	var resizeTimer = null;
	function sizewindow(){
		var h = $(window).height();
   		$('#centerlogin').css({height:h});
	}
	var seconds = 5;
	var defaultUrl = "<?php echo $this->_tpl_vars['linkURL'] ?>";
	onload = function() {
		if (defaultUrl == 'javascript:history.go(-1)' && window.history.length == 0){
			document.getElementById('redirectionMsg').innerHTML = '';
			return;
		}
		window.setInterval(redirection, 1000);
	}
	function redirection(){
		if (seconds <= 0) {
			window.clearInterval();
			return;
		}
		seconds --;
		document.getElementById('spanSeconds').innerHTML = seconds;
		if (seconds == 0) {
			window.clearInterval();
			location.href = defaultUrl;
		}
	}
</script>
<!--[if IE 6]>
<style type="text/css" media="screen">
body {behavior:url("templates/css/csshover.htc"); }
</style>
<![endif]-->
</head>
<body>
<div class="login-div">
 <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="centerlogin">
    <tr>
            <td valign="middle" align="center" style="width:564px;">
            <div class="login-form">
	        <table border="0" cellpadding="0" style="border-collapse: collapse" width="564">
			    <tr>
			            <td class="login-top"></td>
			    </tr>
			    <tr>
			            <td class="login-bg">
			            <table style="width:100%">
							<tr>
								<td>
								<table class="formtablewin">
									 <tr>
										<td class="center" style="padding:5px;"><img alt="" src="templates/images/Infoicon50.gif" /></td>
									</tr>
									<tr class="trstyle2">
										<td class="center strong colorgorningage"><?php echo $this->_tpl_vars['calltitle'] ?></td>
									</tr>
									<tr class="trstyle2">
										<td class="center strong colorgorning2" style="padding-top:5px;"><?php echo $this->_tpl_vars['ST']['digmessage_spanSeconds_mess_left'] ?><span id="spanSeconds">5</span><?php echo $this->_tpl_vars['ST']['digmessage_spanSeconds_mess_right'] ?></td>
									</tr>
									<tr>
										<td class="center" style="padding-top:30px;"><input type="submit" name="Submit" value="<?php echo $this->_tpl_vars['bottonName'] ?>" class="button orange" onclick="javascript:location.href='<?php echo $this->_tpl_vars['linkURL'] ?>';" title="<?php echo $this->_tpl_vars['bottonName'] ?>"/></td>
									</tr>
								</table>
								</td>
							</tr>
						</table>
			            </td>
			    </tr>
			    <tr>
			            <td class="login-down"></td>
			    </tr>
			</table>
		</div>
		<div class="fotter">EarcLink.COM 2002-2011 All Rights Reserved 后台推荐使用IE8、谷歌或Firefox浏览器</div>
    </tr>
</table>
</div>
</body>
</html>
