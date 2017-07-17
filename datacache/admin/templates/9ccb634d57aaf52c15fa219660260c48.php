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
	var formmain_js_formcode_empty  = "<?php echo $this->_tpl_vars['ST']['formmain_js_formcode_empty'] ?>";
	var forumtype_js_putmail_empty  = "<?php echo $this->_tpl_vars['ST']['forumtype_js_putmail_empty'] ?>";
	var forumtype_js_smscode_empty  = "<?php echo $this->_tpl_vars['ST']['forumtype_js_smscode_empty'] ?>";
	var formmain_js_add_ok = "<?php echo $this->_tpl_vars['ST']['formmain_js_add_ok'] ?>";
	var formmain_js_add_no = "<?php echo $this->_tpl_vars['ST']['formmain_js_add_no'] ?>";
	var iframename = "<?php echo $this->_tpl_vars['iframename'] ?>";
	iframename = iframename=='' ? "jerichotabiframe_0" : iframename;
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
		$('#formadd').submit(function() {
			$(this).ajaxSubmit(options);
			return false;
		});
	})




	function formverify(formData, jqForm, options) {
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
			document.formadd.formgroupname.focus();
			alert(formmain_js_formgroupname_empty);
			return false;
		}
		if(get['formcode']=="" || get['formcode'].match(/^[\w]{3,15}$/ig)==null) {
			document.formadd.formcode.focus();
			alert(formmain_js_formcode_empty);
			return false;
		}
		if(get['template'].match(/^[\w]+$/ig)==null) {
			document.formadd.template.focus();
			alert(formmain_js_template_empty);
			return false;
		}
		if(get['ismail']==1){
			if(get['mailcode'].match(/^[\w]+$/ig)==null) {
				document.formadd.mailcode.focus();
				alert(formmain_js_mailcode_empty);
				return false;
			}
			if(get['emailatt'].match(/^[\w]+$/ig)==null) {
				document.formadd.emailatt.focus();
				alert(formmain_js_emailatt_empty);
				return false;
			}
			if(get['putmail']!=''){
				if(get['putmail'].match(/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/ig)==null) {
					document.formadd.putmail.focus();
					alert(forumtype_js_putmail_empty);
					return false;
				}
			}
		}
		if(get['issms']==1){
			if(get['smscode']==''){
				document.formadd.smscode.focus();
				alert(forumtype_js_smscode_empty);
				return false;
			}
		}
		parent.windowsdig('Loading','iframe:index.php?archive=management&action=load','400px','180px','iframe',false);
	}
	function saveResponse(options){
		parent.closeifram();
		var tab=document.getElementById("formaddtab").value;
		if (options=='true'){
			if (tab=='true'){
				if(parent.frames[iframename].document.getElementById("selectform")){
					parent.frames[iframename].refresh('selectform','selectall','check_all');
				}
			}
			alert(formmain_js_add_ok);
		}else{
			alert(formmain_js_add_no);
		}
		var refalse = "<?php echo $this->_tpl_vars['refalse'] ?>";
		if (refalse!='1'){
			if (tab=='true'){
				parent.onaletdoc();
			}
		}else{
			window.location.reload();
		}
	}
</script>
</head>

<body>
<form name="formadd" id="formadd" method="post" action="index.php?archive=formmain&action=formsave">
<input type="hidden" name="inputclass" value="add">
<input type="hidden" name="tab" id="formaddtab" value="<?php echo $this->_tpl_vars['tab'] ?>">
<input type="hidden" name="lng" value="<?php echo $this->_tpl_vars['lng'] ?>">
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="maindobycontent">
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="colorgorningage"><?php echo $this->_tpl_vars['ST']['formmain_add_mess'] ?></span></span>
		</div>
		<div class="manageeditdiv">
			<div class="maneditcontent">
				<table class="formtable">
					<tr class="trstyle2">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['formmain_add_formgroupname'] ?></td>
						<td class="trtitle02"><input type="text" name="formgroupname" size="60" maxlength="80" class="infoInput"/> <span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['formmain_add_formgroupname_mess'] ?></span></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['formmain_add_formcode'] ?></td>
						<td class="trtitle02">
							<input type="text" name="formcode" size="20" maxlength="40" onblur="checktypename('formcode',this.value,'index.php?archive=formmain&action=checkformname&lng=<?php echo $this->_tpl_vars['lng'] ?>','formcodeerr','<?php echo $this->_tpl_vars['ST']['formmain_js_attr_input_ok'] ?>','<?php echo $this->_tpl_vars['ST']['formmain_js_attr_input_no'] ?>','submitbotton');" class="infoInput"/>
							<span class="cautiontitle" id="formcodeerr"><?php echo $this->_tpl_vars['ST']['formmain_add_formcode_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['formmain_add_template'] ?></td>
						<td class="trtitle02">
							<input type="text" name="template" id="addformtemplate" size="40" maxlength="50" class="infoInput"/>
							<a class="filecheck" href="#body" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?>','iframe:index.php?archive=templatemain&action=listwindow&inputtext=addformtemplate&typeclass=form&skindir=&filedir=form&fileclass=&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),'750px','400px','iframe');"><?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?></a>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmain_add_pic'] ?></td>
						<td class="trtitle02" id="strhtml">
							<ul class="addpiclist">
								<li id="addsrlipic"><a title="<?php echo $this->_tpl_vars['ST']['selectfile_botton'] ?>" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['filemanage_select_title'] ?>','iframe:index.php?archive=filemanage&action=filewindow&listfunction=filelist&filetype=img&checkfrom=picshow&getbyid=addsrlipic&fileinputid=pic&maxselect=1&iframename='+self.frameElement.getAttribute('name'),'900px','480px','iframe')" href="#body"><p><img id="addsrcpic" src="templates/images/pic.png"></p></a></li>
							</ul>
							<input type="hidden" name="pic" id="pic" size="50" maxlength="50" class="infoInput"/>
						</td>
					</tr>
					<tr class="trstyle3">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmain_add_content'] ?></td>
						<td class="trtitle02"><textarea name="content" id="content" style="width:98%;height:100px;"></textarea></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"></td>
						<td class="trtitle02"><span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['formmain_add_content_mess'] ?></span></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['formmain_add_successtext'] ?></td>
						<td class="trtitle02"><textarea name="successtext" id="successtext" style="width:98%;height:100px;"></textarea></td>
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
							<input type="text" name="titlestyle" size="30" maxlength="30" value="{typename}-{sitename}" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['forumtype_add_titlestyle_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmain_add_ismenu'] ?></td>
						<td class="trtitle02">
							<input type="radio" value="1" name="ismenu"> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="ismenu" checked="checked"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['formmain_add_ismenu_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmain_add_purview'] ?></td>
						<td class="trtitle02">
							<select size="1" name="purview" id="purview">
								<option value="0"><?php echo $this->_tpl_vars['ST']['formmain_add_purview_option'] ?></option>
								<?php if (count($this->_tpl_vars['memberpuvlist'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['memberpuvlist']); $list++){?>
								<option value="<?php echo $this->_tpl_vars['memberpuvlist'][$list]['mcid'] ?>"><?php echo $this->_tpl_vars['memberpuvlist'][$list]['rankname'] ?></option>
								<?php }} ?>
							</select>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_ismail'] ?></td>
						<td class="trtitle02">
							<input type="radio" value="1" name="ismail" onclick="showdiv(1,'#emailattdiv|#tmiddiv|#emailattdiv2','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="ismail" checked="checked" onclick="showdiv(0,'#emailattdiv|#tmiddiv|#emailattdiv2','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_ismail_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 displaynone" id="emailattdiv2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_putmail'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="text" name="putmail" size="50" maxlength="100" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_putmail_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 displaynone" id="emailattdiv">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['formmain_add_emailatt'] ?></td>
						<td class="trtitle02">
							<input type="text" name="emailatt" value="emailatt" size="20" maxlength="50" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['formmain_add_emailatt_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 displaynone" id="tmiddiv">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_mailcode'] ?></td>
						<td class="trtitle02">
							<input type="text" name="mailcode" id="mailcode" size="20" maxlength="50" class="infoInput"/>
							<a class="filecheck" href="#body" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?>','iframe:index.php?archive=mailtemplatemain&action=listwindow&inputtext=mailcode&typeclass=form&&styleclass=3&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),'750px','400px','iframe');"><?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?></a>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_mailcode_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_issms'] ?></td>
						<td class="trtitle02">
							<input type="radio" value="1" name="issms" onclick="showdiv(1,'#tmiddiv2','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="issms" checked="checked" onclick="showdiv(0,'#tmiddiv2','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_issms_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 displaynone" id="tmiddiv2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_smscode'] ?></td>
						<td class="trtitle02">
							<input type="text" name="smscode" id="smscode" size="20" maxlength="50" class="infoInput"/>
							<a class="filecheck" href="#body" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?>','iframe:index.php?archive=mailtemplatemain&action=listwindow&inputtext=smscode&typeclass=form&&styleclass=4&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),'750px','400px','iframe');"><?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?></a>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['forumtype_type_add_smscode_mess'] ?></span>
						</td>
					</tr>

					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmain_add_isseccode'] ?></td>
						<td class="trtitle02">
							<input type="radio" value="1" name="isseccode"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="isseccode" checked="checked"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['formmain_add_isseccode_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2" id="inputtimediv">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmain_add_inputtime'] ?></td>
						<td class="trtitle02">
							<select size="1" name="inputtime" id="inputtime">
								<?php if (count($this->_tpl_vars['timelist'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['timelist']); $list++){?>
								<option value="<?php echo $this->_tpl_vars['timelist'][$list]['key'] ?>"><?php echo $this->_tpl_vars['timelist'][$list]['name'] ?></option>
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
							<input type="radio" value="1" name="iswap" checked="checked"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="iswap"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
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
				<td id="right"><input type="submit" id="submitbotton" name="Submit" value="<?php echo $this->_tpl_vars['ST']['botton_add'] ?>" class="button orange" /></td>
				<td id="left" class="padding-left5"><input type="button" name="cancel" onClick="javascript:parent.onaletdoc();" value="<?php echo $this->_tpl_vars['ST']['botton_add_reset'] ?>" class="button orange" /></td>
			</tr>
		</table>
	</div>
</div>
</form>
</body>

</html>


