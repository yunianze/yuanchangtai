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
<script type="text/javascript" src="../public/tinyMCE/jquery.tinymce.js"></script>
<script type="text/javascript" src="js/initedit.js"></script>
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
	var formmain_js_formgroupname_empty  = "<?php echo $this->_tpl_vars['ST']['formmain_js_formgroupname_empty'] ?>";
	var formmain_js_template_empty  = "<?php echo $this->_tpl_vars['ST']['formmain_js_template_empty'] ?>";
	var formmain_js_emailatt_empty  = "<?php echo $this->_tpl_vars['ST']['formmain_js_emailatt_empty'] ?>";
	var formmain_js_mailcode_empty  = "<?php echo $this->_tpl_vars['ST']['formmain_js_mailcode_empty'] ?>";
	var forumtype_js_putmail_empty  = "<?php echo $this->_tpl_vars['ST']['forumtype_js_putmail_empty'] ?>";
	var forumtype_js_smscode_empty  = "<?php echo $this->_tpl_vars['ST']['forumtype_js_smscode_empty'] ?>";
	var formmain_js_edit_ok = "<?php echo $this->_tpl_vars['ST']['formmain_js_edit_ok'] ?>";
	var formmain_js_edit_no = "<?php echo $this->_tpl_vars['ST']['formmain_js_edit_no'] ?>";
	var iframename = "<?php echo $this->_tpl_vars['iframename'] ?>";
	$(document).ready(function(){
		var h = '<?php echo $this->_tpl_vars['iframeheightwindow'] ?>';
		$('.managebottonadd').css({height:h-40});
		editsimpleshow("#content");
		editsimpleshow("#successtext");
		var options = {
			beforeSubmit: formverify,
			success:saveResponse,
			resetForm: false
		}
		$('#formedit').submit(function() {
			$(this).ajaxSubmit(options);
			return false;
		});
	})




	function formverify(formData) {
		for (var i=0; i< formData.length; i++){
			if (formData[i].name == "content"){
				formData[i].value=tinyMCE.get('content').getContent();
			}else if(formData[i].name == "successtext"){
				formData[i].value=tinyMCE.get('successtext').getContent();
			}
		}
		var queryString = $.param(formData);
		var get=urlarray(queryString);
		if(get['formgroupname']==""){
			document.formedit.formgroupname.focus();
			alert(formmain_js_formgroupname_empty);
			return false;
		}
		if(get['template'].match(/^[\w]+$/ig)==null) {
			document.formedit.template.focus();
			alert(formmain_js_template_empty);
			return false;
		}
		if(get['ismail']==1){
			if(get['mailcode'].match(/^[\w]+$/ig)==null) {
				document.formedit.mailcode.focus();
				alert(formmain_js_mailcode_empty);
				return false;
			}
			if(get['emailatt'].match(/^[\w]+$/ig)==null) {
				document.formedit.emailatt.focus();
				alert(formmain_js_emailatt_empty);
				return false;
			}
			if(get['putmail']!=''){
				if(get['putmail'].match(/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/ig)==null) {
					document.formedit.putmail.focus();
					alert(forumtype_js_putmail_empty);
					return false;
				}
			}
		}
		if(get['issms']==1){
			if(get['smscode']==''){
				document.formedit.smscode.focus();
				alert(forumtype_js_smscode_empty);
				return false;
			}
		}
		parent.windowsdig('Loading','iframe:index.php?archive=management&action=load','400px','180px','iframe',false);
	}
	function saveResponse(options){
		parent.closeifram();
		if (options=='true'){
			parent.frames[iframename].refresh('selectform','selectall','check_all');
			alert(formmain_js_edit_ok);
		}else{
			alert(formmain_js_edit_no);
		}
		parent.onaletdoc()
	}
</script>
</head>

<body>
<form name="formedit" id="formedit" method="post" action="index.php?archive=formmain&action=formsave">
<input type="hidden" name="inputclass" value="edit">
<input type="hidden" name="fgid" value="<?php echo $this->_tpl_vars['formread']['fgid'] ?>">
<input type="hidden" name="lng" value="<?php echo $this->_tpl_vars['formread']['lng'] ?>">
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="maindobycontent">
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="colorgorningage"><?php echo $this->_tpl_vars['ST']['formmain_edit_mess'] ?> <u><?php echo $this->_tpl_vars['formread']['formgroupname'] ?></u></span></span>
		</div>
		<div class="manageeditdiv">
			<div class="maneditcontent">
				<table class="formtable">
					<tr class="trstyle2">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['formmain_add_formgroupname'] ?></td>
						<td class="trtitle02"><input type="text" name="formgroupname" size="60" value="<?php echo $this->_tpl_vars['formread']['formgroupname'] ?>" maxlength="80" class="infoInput"/> <span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['formmain_add_formgroupname_mess'] ?></span></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['formmain_add_template'] ?></td>
						<td class="trtitle02">
							<input type="text" name="template" id="editformtemplate" size="40" value="<?php echo $this->_tpl_vars['formread']['template'] ?>" maxlength="50" class="infoInput"/>
							<a class="filecheck" href="#body" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?>','iframe:index.php?archive=templatemain&action=listwindow&inputtext=editformtemplate&typeclass=form&skindir=&filedir=form&fileclass=&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),'750px','400px','iframe');"><?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?></a>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmain_add_pic'] ?></td>
						<td width="85%" class="trtitle02">
							<ul class="addpiclist">
								<?php if($this->_tpl_vars['formread']['pic']!=''){ ?>
								<li id="addsrlipic"><a title="<?php echo $this->_tpl_vars['ST']['remimages_botton'] ?>" ondblclick="removerpic('addsrlipic','pic')" href="#body"><p><img id="addsrcpic" src="<?php echo $this->_tpl_vars['adminurl'] ?><?php echo $this->_tpl_vars['formread']['pic'] ?>" width="100" height="100"></p></a></li>
								<?php }else{ ?>
								<li id="addsrlipic"><a title="<?php echo $this->_tpl_vars['ST']['selectfile_botton'] ?>" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['filemanage_select_title'] ?>','iframe:index.php?archive=filemanage&action=filewindow&listfunction=filelist&filetype=img&checkfrom=picshow&getbyid=addsrlipic&fileinputid=pic&maxselect=1&iframename='+self.frameElement.getAttribute('name'),'900px','480px','iframe')" href="#body"><p><img id="addsrcpic" src="templates/images/pic.png" width="100" height="100"></p></a></li>
								<?php } ?>
							</ul>
							<input type="hidden" name="pic" id="pic" value="<?php echo $this->_tpl_vars['formread']['pic'] ?>" size="50" maxlength="50" class="infoInput"/>
						</td>
					</tr>
					<tr class="trstyle3">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmain_add_content'] ?></td>
						<td class="trtitle02"><textarea name="content" id="content" style="width:98%;height:100px;"><?php echo $this->_tpl_vars['formread']['content'] ?></textarea></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"></td>
						<td class="trtitle02"><span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['formmain_add_content_mess'] ?></span></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['formmain_add_successtext'] ?></td>
						<td class="trtitle02"><textarea name="successtext" id="successtext" style="width:98%;height:100px;"><?php echo $this->_tpl_vars['formread']['successtext'] ?></textarea></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"></td>
						<td class="trtitle02"><span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['formmain_add_successtext_mess'] ?></span></td>
					</tr>
					<tr>
						<td  class="trtitle03" colspan="2"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_templatesurl'] ?></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['forumtype_add_titlestyle'] ?></td>
						<td class="trtitle02">
							<input type="text" name="titlestyle" size="30" maxlength="30" value="<?php if($this->_tpl_vars['formread']['titlestyle']==''){ ?>{typename}-{sitename}<?php }else{ ?><?php echo $this->_tpl_vars['formread']['titlestyle'] ?><?php } ?>" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['forumtype_add_titlestyle_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmain_add_ismenu'] ?></td>
						<td class="trtitle02">
							<input type="radio" value="1" name="ismenu"<?php if($this->_tpl_vars['formread']['ismenu']==1){ ?> checked="checked"<?php } ?>> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="ismenu"<?php if($this->_tpl_vars['formread']['ismenu']==0){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['formmain_add_ismenu_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmain_add_purview'] ?></td>
						<td class="trtitle02">
							<select size="1" name="purview" id="purview">
								<option value="0"><?php echo $this->_tpl_vars['ST']['formmain_add_purview_option'] ?></option>
								<?php if (count($this->_tpl_vars['memberpuvlist'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['memberpuvlist']); $list++){?>
								<option  <?php echo $this->_tpl_vars['memberpuvlist'][$list]['selected'] ?> value="<?php echo $this->_tpl_vars['memberpuvlist'][$list]['mcid'] ?>"><?php echo $this->_tpl_vars['memberpuvlist'][$list]['rankname'] ?></option>
								<?php }} ?>
							</select>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_ismail'] ?></td>
						<td class="trtitle02">
							<input type="radio" value="1" name="ismail" <?php if($this->_tpl_vars['formread']['ismail']==1){ ?> checked="checked"<?php } ?> onclick="showdiv(1,'#emailattdiv|#tmiddiv|#emailattdiv2','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="ismail" <?php if($this->_tpl_vars['formread']['ismail']==0){ ?> checked="checked"<?php } ?> onclick="showdiv(0,'#emailattdiv|#tmiddiv|#emailattdiv2','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_ismail_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['formread']['ismail']==0){ ?>displaynone<?php } ?>" id="emailattdiv2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_putmail'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="text" name="putmail" size="50" value="<?php echo $this->_tpl_vars['formread']['putmail'] ?>" maxlength="100" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_putmail_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['formread']['ismail']==0){ ?>displaynone<?php } ?>" id="emailattdiv">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['formmain_add_emailatt'] ?></td>
						<td class="trtitle02"><input type="text" name="emailatt" size="20" value="<?php echo $this->_tpl_vars['formread']['emailatt'] ?>" maxlength="50" class="infoInput"/> <span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['formmain_add_emailatt_mess'] ?></span></td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['formread']['ismail']==0){ ?>displaynone<?php } ?>" id="tmiddiv">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_mailcode'] ?></td>
						<td class="trtitle02">
							<input type="text" name="mailcode" id="mailcode" size="20" value="<?php echo $this->_tpl_vars['formread']['mailcode'] ?>" maxlength="50" class="infoInput"/>
							<a class="filecheck" href="#body" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?>','iframe:index.php?archive=mailtemplatemain&action=listwindow&inputtext=mailcode&typeclass=form&&styleclass=3&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),'750px','400px','iframe');"><?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?></a>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_mailcode_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_issms'] ?></td>
						<td class="trtitle02">
							<input type="radio" value="1" name="issms" <?php if($this->_tpl_vars['formread']['issms']==1){ ?>checked="checked"<?php } ?> onclick="showdiv(1,'#tmiddiv2','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="issms" <?php if($this->_tpl_vars['formread']['issms']==0){ ?>checked="checked"<?php } ?> onclick="showdiv(0,'#tmiddiv2','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_issms_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['formread']['issms']==0){ ?> displaynone<?php } ?>" id="tmiddiv2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_smscode'] ?></td>
						<td class="trtitle02">
							<input type="text" name="smscode" id="smscode" value="<?php echo $this->_tpl_vars['formread']['smscode'] ?>" size="20" maxlength="50" class="infoInput"/>
							<a class="filecheck" href="#body" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?>','iframe:index.php?archive=mailtemplatemain&action=listwindow&inputtext=smscode&typeclass=form&&styleclass=4&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),'750px','400px','iframe');"><?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?></a>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_smscode_mess'] ?></span>
						</td>
					</tr>


					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmain_add_isseccode'] ?></td>
						<td class="trtitle02">
							<input type="radio" value="1" name="isseccode"<?php if($this->_tpl_vars['formread']['isseccode']==1){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
						        <input type="radio" value="0" name="isseccode"<?php if($this->_tpl_vars['formread']['isseccode']==0){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
						        <span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['formmain_add_isseccode_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmain_add_inputtime'] ?></td>
						<td class="trtitle02">
							<select size="1" name="inputtime" id="inputtime">
								<?php if (count($this->_tpl_vars['timelist'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['timelist']); $list++){?>
								<option <?php if($this->_tpl_vars['timelist'][$list]['key']==$this->_tpl_vars['formread']['inputtime']){ ?>selected<?php } ?> value="<?php echo $this->_tpl_vars['timelist'][$list]['key'] ?>"><?php echo $this->_tpl_vars['timelist'][$list]['name'] ?></option>
								<?php }} ?>
							</select>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle03" colspan="2"><?php echo $this->_tpl_vars['ST']['iswap_message'] ?></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['iswap_title'] ?></td>
						<td class="trtitle02">
							<input type="radio" value="1" name="iswap" <?php if($this->_tpl_vars['formread']['iswap']==1){ ?>checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="iswap" <?php if($this->_tpl_vars['formread']['iswap']==0){ ?>checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['iswap_title_mess'] ?></span>
						</td>
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
				<td id="left" class="padding-left5"><input type="button" name="cancel" onClick="javascript:parent.onaletdoc();" value="<?php echo $this->_tpl_vars['ST']['botton_edit_reset'] ?>" class="button orange" /></td>
			</tr>
		</table>
	</div>
</div>
</form>
</body>

</html>