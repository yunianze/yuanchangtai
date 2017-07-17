<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title><?php echo $this->_tpl_vars['softtitle'] ?></title>
<link href="templates/css/baselist.css" rel="stylesheet" type="text/css" />
<link href="templates/css/all.css" rel="stylesheet" type="text/css" />
<link href="templates/css/formdiv.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/control.js"></script>
<script type="text/javascript" src="js/form.js"></script>
<script type="text/javascript" src="js/dialog.js"></script>
<script type="text/javascript" language="JavaScript">
	var clearcache_filecheck_js_filedirok = "<?php echo $this->_tpl_vars['ST']['clearcache_filecheck_js_filedirok'] ?>";
	var clearcache_filecheck_js_filedirno = "<?php echo $this->_tpl_vars['ST']['clearcache_filecheck_js_filedirno'] ?>";
	var clearcache_filecheck_js_filedirclose = "<?php echo $this->_tpl_vars['ST']['clearcache_filecheck_js_filedirclose'] ?>";
	var digheight="<?php echo $this->_tpl_vars['digheight'] ?>";
	$(document).ready(function(){
		var h = parseInt(digheight);
		if(document.getElementById("mainbodybottonauto")){
			$('.managebottonadd').css({height:h-40});
		}
		var options = {
			beforeSubmit: formverify,
			success:saveResponse
		}
		$('#filecheck').submit(function() {
			$(this).ajaxSubmit(options);
			return false;
		});
	});
	function formverify(formData, jqForm, options) {
		$('#filecheckmanger').removeClass().addClass('formdiv displaynone');
		$('#filecheckloading').removeClass().addClass('formdiv displaytrue');
		$('#submitbotton').attr('disabled','true');
	}
	function saveResponse(options){
		if (options=='true'){
			alert(clearcache_filecheck_js_filedirok);
			resetwindow();
			return false;
		}else{
			alert(clearcache_filecheck_js_filedirno+options);
			resetwindow();
			return false;
		}
	}
	function resetwindow(){
		parent.closeifram();
	}
	document.oncontextmenu=new Function('event.returnValue=false;');
	document.onselectstart=new Function('event.returnValue=false;');
</script>
</head>
<body>
<form name="filecheck" id="filecheck" method="post" action="index.php?archive=management&action=clearcache">
<input type="hidden" name="execute" value="1"/>
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="maindobycontent">
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="padding-left5 colorgorningage"><?php echo $this->_tpl_vars['ST']['clearcache_filecheck_mess'] ?></span></span>
		</div>
		<div class="manageeditdiv_hover" id="filecheckmanger">
			<div class="maneditcontent">
			<table class="formtablewin">
				<tr class="trstyle2">
					<td class="trtitle01" width="20%"><?php echo $this->_tpl_vars['ST']['clear_log_deltype'] ?></td>
					<td class="trtitle02" width="80%">
						<input type="radio" value="1" name="cleartype" checked="checked"/> <?php echo $this->_tpl_vars['ST']['clear_cleartype_1'] ?>&nbsp;
						<input type="radio" value="2" name="cleartype" /> <?php echo $this->_tpl_vars['ST']['clear_cleartype_2'] ?>
						<input type="radio" value="4" name="cleartype" /> <?php echo $this->_tpl_vars['ST']['clear_cleartype_4'] ?>
					</td>
				</tr>
				<tr class="trstyle2">
					<td class="trtitle01" width="20%"></td>
					<td class="trtitle02" width="80%">
						<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['clearcache_filecheck_submit_mess'] ?></span>
					</td>
				</tr>
			</table>
			</div>
		</div>
		<div class="manageeditdiv_hover displaynone" id="filecheckloading">
			<div class="maneditcontent">
				<table class="formtablewin">
					<tr class="trstyle2">
						<td id="center"><img alt="" src="templates/images/loading_02.gif" /></td>
					</tr>
					<tr class="trstyle2">
						<td id="center"><?php echo $this->_tpl_vars['ST']['clearcache_filecheck_loading'] ?></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<div id="downbotton">
	<div id="subbotton">
		<table border="0" width="100%">
			<tr id="bottonsubmit">
				<td id="right"><input type="submit" name="Submit" id="submitbotton" value="<?php echo $this->_tpl_vars['ST']['botton_cear'] ?>" class="button orange" title="<?php echo $this->_tpl_vars['ST']['botton_cear'] ?>"/></td>
				<td id="left" class="padding-left5"><input type="reset" name="reset" value="<?php echo $this->_tpl_vars['ST']['botton_cear_reset'] ?>" onclick="javascript:resetwindow();" class="button orange"  title="<?php echo $this->_tpl_vars['ST']['botton_cear_reset'] ?>"/></td>
			</tr>
		</table>
	</div>
</div>
</form>
</body>
</html>
