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
			$('#content').css({height:h-350});
		}
	}
	var adverttypemain_js_adtypename_empty  = "<?php echo $this->_tpl_vars['ST']['adverttypemain_js_adtypename_empty'] ?>";
	var adverttypemain_js_size_empty  = "<?php echo $this->_tpl_vars['ST']['adverttypemain_js_size_empty'] ?>";
	var adverttypemain_js_edit_ok = "<?php echo $this->_tpl_vars['ST']['adverttypemain_js_edit_ok'] ?>";
	var adverttypemain_js_edit_no = "<?php echo $this->_tpl_vars['ST']['adverttypemain_js_edit_no'] ?>";
	var adverttypemain_js_xmltemplatefile_empty = "<?php echo $this->_tpl_vars['ST']['adverttypemain_js_xmltemplatefile_empty'] ?>";
	var adverttypemain_js_xmlfile_empty = "<?php echo $this->_tpl_vars['ST']['adverttypemain_js_xmlfile_empty'] ?>";
	var adverttypemain_js_xmlpath_empty = "<?php echo $this->_tpl_vars['ST']['adverttypemain_js_xmlpath_empty'] ?>";
	
	var iframename = "<?php echo $this->_tpl_vars['iframename'] ?>";
	iframename = iframename=='' ? "jerichotabiframe_0" : iframename;
	var addtype = "<?php echo $this->_tpl_vars['type'] ?>";
	$(document).ready(function(){
		var h = '<?php echo $this->_tpl_vars['iframeheightwindow'] ?>';
		$('.managebottonadd').css({height:h-40});
		$('#content').css({height:h-350});
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
		if(get['adtypename']==''){
			document.infosave.adtypename.focus();
			alert(adverttypemain_js_adtypename_empty);
			return false;
		}
		if(get['width']!=''){
			if(get['width'].match(/^[0-9]+$/ig)==null) {
				document.infosave.width.focus();
				alert(adverttypemain_js_size_empty);
				return false;
			}
		}
		if(get['height']!=''){
			if(get['height'].match(/^[0-9]+$/ig)==null) {
				document.infosave.height.focus();
				alert(adverttypemain_js_size_empty);
				return false;
			}
		}
		if(get['isxml']==1){
			if(get['xmltemplatefile'].match(/^[\w-]+$/ig)==null) {
				document.infosave.xmltemplatefile.focus();
				alert(adverttypemain_js_xmltemplatefile_empty);
				return false;
			}
			if(get['xmlfile'].match(/^[\w-]+$/ig)==null) {
				document.infosave.xmlfile.focus();
				alert(adverttypemain_js_xmlfile_empty);
				return false;
			}
			if(get['xmlpath']!=''){
				if(get['xmlpath'].match(/^[//\w-]+$/ig)==null) {
					document.infosave.xmlpath.focus();
					alert(adverttypemain_js_xmlpath_empty);
					return false;
				}
			}
		}
		parent.windowsdig('Loading','iframe:index.php?archive=management&action=load','400px','180px','iframe',false);
	}
	function saveResponse(options){
		parent.closeifram();
		if (options=='true'){
			parent.frames[iframename].refresh('selectform','selectall','check_all');
			alert(adverttypemain_js_edit_ok);
		}else{
			alert(adverttypemain_js_edit_no+"("+options+")");
		}
		parent.onaletdoc()
	}
</script>
</head>

<body>
<form name="infosave" id="infosave" method="post" action="index.php?archive=adverttypemain&action=infosave">
<input type="hidden" name="inputclass" value="<?php echo $this->_tpl_vars['type'] ?>">
<input type="hidden" name="lng" id="lng" value="<?php echo $this->_tpl_vars['lng'] ?>">
<input type="hidden" name="atid" value="<?php echo $this->_tpl_vars['read']['atid'] ?>">
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="maindobycontent">
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="colorgorningage"><?php echo $this->_tpl_vars['ST']['adverttypemain_edit_mess'] ?></span></span>
		</div>
		<div class="manageeditdiv">
			<div class="maneditcontent">
				<table class="formtable">
					<tr class="trstyle2">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['adverttypemain_add_name'] ?></td>
						<td class="trtitle02">
							<input type="text" name="adtypename" size="60" value="<?php echo $this->_tpl_vars['read']['adtypename'] ?>" maxlength="80" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['advertmain_add_name_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['adverttypemain_add_width'] ?></td>
						<td class="trtitle02">
							<input type="text" name="width" value="<?php echo $this->_tpl_vars['read']['width'] ?>" size="10" maxlength="4" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['adverttypemain_add_size_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['adverttypemain_add_height'] ?></td>
						<td class="trtitle02">
							<input type="text" name="height" value="<?php echo $this->_tpl_vars['read']['height'] ?>" size="10" maxlength="4" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['adverttypemain_add_size_mess'] ?></span>
						</td>
					</tr>
					
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['adverttypemain_add_isxml'] ?></td>
						<td class="trtitle02">
							<input type="radio" value="1" name="isxml" <?php if($this->_tpl_vars['read']['isxml']==1){ ?>checked="checked" <?php } ?>onclick="showdiv(1,'#xmltemplatefilediv|#xmlfilediv|#xmlpathdiv','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="isxml" <?php if($this->_tpl_vars['read']['isxml']==0){ ?>checked="checked" <?php } ?>onclick="showdiv(0,'#xmltemplatefilediv|#xmlfilediv|#xmlpathdiv','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['adverttypemain_add_isxml_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2<?php if($this->_tpl_vars['read']['isxml']==0){ ?> displaynone<?php } ?>"  id="xmltemplatefilediv">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['adverttypemain_add_xmltemplatefile'] ?></td>
						<td class="trtitle02">
							<input type="text" name="xmltemplatefile" size="20" maxlength="150" value="<?php echo $this->_tpl_vars['read']['xmltemplatefile'] ?>" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['adverttypemain_add_xmltemplatefile_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2<?php if($this->_tpl_vars['read']['isxml']==0){ ?> displaynone<?php } ?>"  id="xmlfilediv">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['adverttypemain_add_xmlfile'] ?></td>
						<td class="trtitle02">
							<input type="text" name="xmlfile" size="20" maxlength="150" value="<?php echo $this->_tpl_vars['read']['xmlfile'] ?>" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['adverttypemain_add_xmlfile_mess'] ?></span
						</td>
					</tr>
					<tr class="trstyle2<?php if($this->_tpl_vars['read']['isxml']==0){ ?> displaynone<?php } ?>"  id="xmlpathdiv">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['adverttypemain_add_xmlpath'] ?></td>
						<td class="trtitle02">
							<input type="text" name="xmlpath" size="20" maxlength="150" value="<?php echo $this->_tpl_vars['read']['xmlpath'] ?>" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['adverttypemain_add_xmlpath_mess'] ?></span
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['adverttypemain_add_content'] ?></td>
						<td class="trtitle02"><textarea name="content" id="content" style="width:98%" class="smallInput"><?php echo $this->_tpl_vars['read']['content'] ?></textarea></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<div id="downbotton">
	<div id="subbotton">
		<table width="100%">
			<tr>
				<td id="right"><input type="submit" id="docaddsubmitbotton" name="Submit" value="<?php echo $this->_tpl_vars['ST']['botton_edit'] ?>" class="button orange" /></td>
				<td id="left" class="padding-left5"><input type="button" name="cancel" onClick="javascript:closewindow();" value="<?php echo $this->_tpl_vars['ST']['botton_edit_reset'] ?>" class="button orange" /></td>
			</tr>
		</table>
	</div>
</div>
</form>
</body>

</html>      