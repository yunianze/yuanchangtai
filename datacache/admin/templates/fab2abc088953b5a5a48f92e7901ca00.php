<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title><?php echo $this->_tpl_vars['softtitle'] ?></title>
<link href="templates/css/baselist.css" rel="stylesheet" type="text/css" />
<link href="templates/css/all.css" rel="stylesheet" type="text/css" />
<link href="templates/css/formdiv.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/form.js"></script>
<script type="text/javascript" src="js/control.js"></script>
<script type="text/javascript" src="js/dialog.js"></script>
<script type="text/javascript" language="JavaScript">
	var clear_log_username_empty = "<?php echo $this->_tpl_vars['ST']['clear_log_username_empty'] ?>";
	var run_ok = "<?php echo $this->_tpl_vars['ST']['run_ok'] ?>";
	var run_no = "<?php echo $this->_tpl_vars['ST']['run_no'] ?>";
	var digheight="<?php echo $this->_tpl_vars['digheight'] ?>";
	$(document).ready(function(){
		var h = parseInt(digheight);
		if(document.getElementById("mainbodybottonauto")){
			$('.managebottonadd').css({height:h-40});
		}
		var options = {
			beforeSubmit: formverify,
			success:saveResponse,
			resetForm: false
		};
		$('#dellog').submit(function() {
			$(this).ajaxSubmit(options);
			return false;
		});
	});
	function formverify(formData, jqForm, options) {
		var queryString = $.param(formData);
		var get=urlarray(queryString);
		if(get['deltype']==0){
			if(get['username']==''){
				alert(clear_log_username_empty);
				return false;
			}
		}
		windowsdig('Loading','iframe:index.php?archive=management&action=load','400px','180px','iframe',false);
	}
	function saveResponse(options,post){
		resetwindow();
		if (options=='true'){
			alert(run_ok);
		}else{
			alert(run_no);
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
<div class="centerrightwindow">
<form name="dellog" id="dellog" method="post" action="index.php?archive=management&action=clearlog">
<input type="hidden" name="execute" value="1"/>
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="maindobycontent">
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="padding-left5 colorgorningage"><?php echo $this->_tpl_vars['ST']['clear_log_mess'] ?></span></span>
		</div>
		<div class="manageeditdiv">
			<div class="maneditcontent">
				<table class="formtablewin">
					<tr class="trstyle2">
						<td class="trtitle01" width="20%"><?php echo $this->_tpl_vars['ST']['clear_log_deltype'] ?></td>
						<td class="trtitle02" width="80%">
							<input type="radio" value="1" name="deltype" checked="checked"  onclick="ondisplay('userdiv','trstyle2 displaynone')"/> <?php echo $this->_tpl_vars['ST']['clear_log_deltype1'] ?>&nbsp;
							<input type="radio" value="0" name="deltype" onclick="ondisplay('userdiv','trstyle2 displaytrue')"/> <?php echo $this->_tpl_vars['ST']['clear_log_deltype0'] ?>
						</td>
					</tr>
					<tr class="trstyle2 displaynone" id="userdiv">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['clear_log_deluser'] ?></td>
						<td class="trtitle02"><input type="text" name="username" size="25" maxlength="12" class="infoInput"/></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<div id="downbotton">
	<div id="subbotton">
		<table border="0" width="100%">
			<tr>
				<td id="right"><input type="submit" name="Submit" value="<?php echo $this->_tpl_vars['ST']['botton_del'] ?>" class="button orange" title="<?php echo $this->_tpl_vars['ST']['botton_del'] ?>"/></td>
				<td id="left" class="padding-left5"><input type="reset" name="reset" value="<?php echo $this->_tpl_vars['ST']['botton_del_reset'] ?>" onclick="javascript:resetwindow();" class="button orange"  title="<?php echo $this->_tpl_vars['ST']['botton_del_reset'] ?>"/></td>
			</tr>
		</table>
	</div>
</div>
</form>
</body>
</html>
