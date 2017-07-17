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
<script type="text/javascript">

	var resizewindow= null;

	window.onresize = function(){
		var h = $(window).height();
		if(resizewindow!=h){
			sizewindow();
			resizewindow=h;
		}
	}

	function sizewindow(){
		var h = $(window).height();
		if(document.getElementById("mainbodybottonauto")){
			$('.managebottonadd').css({height:h-40});
		}
	}
	var albummain_js_title_empty  = "<?php echo $this->_tpl_vars['ST']['albummain_js_title_empty'] ?>";
	var albummain_js_edit_ok = "<?php echo $this->_tpl_vars['ST']['albummain_js_edit_ok'] ?>";
	var albummain_js_edit_no = "<?php echo $this->_tpl_vars['ST']['albummain_js_edit_no'] ?>";
	var iframename = "<?php echo $this->_tpl_vars['iframename'] ?>";
	iframename = iframename=='' ? "jerichotabiframe_0" : iframename;
	$(document).ready(function(){
		var h = '<?php echo $this->_tpl_vars['iframeheightwindow'] ?>';
		$('.managebottonadd').css({height:h-40});
		var options = {
			beforeSubmit: formverify,
			success:saveResponse,
			resetForm: false
		}
		$('#infosave').submit(function() {
			$(this).ajaxSubmit(options);
			return false;
		});
	})




	function formverify(formData) {
		var queryString = $.param(formData);
		var get=urlarray(queryString);
		if(get['title']==''){
			document.infosave.title.focus();
			alert(albummain_js_title_empty);
			return false;
		}
		parent.windowsdig('Loading','iframe:index.php?archive=management&action=load','400px','180px','iframe',false);
	}
	function saveResponse(options){
		parent.closeifram();
		if (options=='true'){
			parent.frames[iframename].refresh('selectform','selectall','check_all');
			alert(albummain_js_edit_ok);
		}else{
			alert(albummain_js_edit_no+" "+options);
		}
		parent.onaletdoc()
	}
</script>
</head>

<body>
<form name="infosave" id="infosave" method="post" action="index.php?archive=albummain&action=infosave">
<input type="hidden" name="inputclass" value="edit">
<input type="hidden" name="lng" id="lng" value="<?php echo $this->_tpl_vars['lng'] ?>">
<input type="hidden" name="amid" id="amid" value="<?php echo $this->_tpl_vars['read']['amid'] ?>">
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="maindobycontent">
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="colorgorningage"><?php echo $this->_tpl_vars['ST']['albummain_file_edit_mess'] ?></span></span>
		</div>
		<div class="manageeditdiv">
			<div class="maneditcontent">
				<table class="formtable">
					<tr class="trstyle2">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['albummain_text_name'] ?></td>
						<td class="trtitle02 colorgblue strong">
							<input type="text" name="title" size="50" maxlength="80" value="<?php echo $this->_tpl_vars['read']['title'] ?>" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['albummain_file_name_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['albummain_file_content'] ?></td>
						<td class="trtitle02"><textarea name="content" id="content" style="width:98%;height:200px" class="smallInput"><?php echo $this->Html2Text($this->_tpl_vars['read']['content'],'0') ?></textarea></td>
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
				<td id="right"><input type="submit" id="submitbotton" name="Submit" value="<?php echo $this->_tpl_vars['ST']['botton_edit'] ?>" class="button orange" /></td>
				<td id="left" class="padding-left5"><input type="button" name="cancel" onClick="javascript:closewindow();" value="<?php echo $this->_tpl_vars['ST']['botton_edit_reset'] ?>" class="button orange" /></td>
			</tr>
		</table>
	</div>
</div>
</form>
</body>

</html>