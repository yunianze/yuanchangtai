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
<script type="text/javascript" src="../js/My97DatePicker/WdatePicker.js"></script>
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
	var advertmain_js_atid_empty  = "<?php echo $this->_tpl_vars['ST']['advertmain_js_atid_empty'] ?>";
	var advertmain_js_title_empty  = "<?php echo $this->_tpl_vars['ST']['advertmain_js_title_empty'] ?>";
	var advertmain_js_url_empty  = "<?php echo $this->_tpl_vars['ST']['advertmain_js_url_empty'] ?>";
	var advertmain_js_url_gotoid  = "<?php echo $this->_tpl_vars['ST']['advertmain_js_url_gotoid'] ?>";
	var advertmain_js_filename_empty  = "<?php echo $this->_tpl_vars['ST']['advertmain_js_filename_empty'] ?>";
	var advertmain_js_add_ok = "<?php echo $this->_tpl_vars['ST']['advertmain_js_add_ok'] ?>";
	var advertmain_js_add_no = "<?php echo $this->_tpl_vars['ST']['advertmain_js_add_no'] ?>";
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
		if (parent.document.getElementById('centerleft')){
			parent.scrolclear();
		}
	})




	function formverify(formData) {
		var queryString = $.param(formData);
		var get=urlarray(queryString);
		if(get['atid']==0){
			document.infosave.atid.focus();
			alert(advertmain_js_atid_empty);
			return false;
		}
		if(get['title']==''){
			document.infosave.title.focus();
			alert(advertmain_js_title_empty);
			return false;
		}
		if(get['islink']==2){
			if(get['gotoid'].match(/^[1-9][0-9]*$/ig)==null) {
				document.infosave.gotoid.focus();
				alert(advertmain_js_url_gotoid);
				return false;
			}
		}else{
			if(get['url']!=''){
				if(get['url'].match(/^http:\/\/[a-zA-Z\:.0-9-%@#;&?=/_]+$/ig)==null) {
					document.infosave.url.focus();
					alert(advertmain_js_url_empty);
					return false;
				}
			}
		}
		if(get['filename']=='' && (get['atid']==1 || get['atid']==2)) {
			alert(advertmain_js_filename_empty);
			return false;
		}
		parent.windowsdig('Loading','iframe:index.php?archive=management&action=load','400px','180px','iframe',false);
	}
	function saveResponse(options){
		parent.closeifram();
		var tab=document.getElementById("addtab").value;
		if (options=='true'){
			if (tab=='true'){
				if(parent.frames[iframename].document.getElementById("selectform")){
					parent.frames[iframename].refresh('selectform','selectall','check_all');
				}
			}
			alert(advertmain_js_add_ok);
		}else{
			alert(advertmain_js_add_no+"("+options+")");
		}

		var refalse = "<?php echo $this->_tpl_vars['refalse'] ?>";
		if (refalse!='1' || $.browser.mozilla){
			if (tab=='true'){
				if (parent.document.getElementById('centerleft')){
					parent.scrolopen();
				}
				parent.onaletdoc()
			}
		}else{
			window.location.reload();
		}

	}
	function selectinfo(val){
		var strhtml1='<ul class="addpiclist"><li><a title="<?php echo $this->_tpl_vars['ST']['selectfile_botton'] ?>" onclick="javascript:parent.windowsdig(\'<?php echo $this->_tpl_vars['ST']['filemanage_select_title'] ?>\',\'iframe:index.php?archive=filemanage&action=filewindow&listfunction=filelist&filetype=img&checkfrom=picshow&getbyid=addsrcpic&fileinputid=filename&maxselect=1&iframename=\'+self.frameElement.getAttribute(\'name\'),\'900px\',\'480px\',\'iframe\')" href="#body"><p><img id="addsrcpic" src="templates/images/pic.png"></p></a></li></ul><input type="hidden" name="filename" id="filename" size="50" maxlength="50" class="infoInput"/>';
		var strhtml2='<input type="text" name="filename" size="50" id="filename" value="" maxlength="150" class="infoInput"/> <a class="filecheck" onclick="javascript:parent.windowsdig(\'<?php echo $this->_tpl_vars['ST']['filemanage_select_title'] ?>\',\'iframe:index.php?archive=filemanage&action=filewindow&listfunction=filelist&filetype=mover&checkfrom=input&getbyid=&fileinputid=filename&maxselect=1&iframename=\'+self.frameElement.getAttribute(\'name\'),\'900px\',\'480px\',\'iframe\')" href="#body"><?php echo $this->_tpl_vars['ST']['selectfile_botton'] ?></a>';
		if (val==1){
			$('#filenamestr').removeClass('trstyle2 displaynone').addClass('trstyle2 displaytrue');
			$("#strhtml").empty();
			$("#strhtml").append(strhtml1);
		}else if(val==2){
			$('#filenamestr').removeClass('trstyle2 displaynone').addClass('trstyle2 displaytrue');
			$("#strhtml").empty();
			$("#strhtml").append(strhtml2);
		}else if(val==3){
			$('#filenamestr').removeClass('trstyle2 displaytrue').addClass('trstyle2 displaynone');
			$("#strhtml").empty();
		}
	}
</script>
</head>

<body>
<form name="infosave" id="infosave" method="post" action="index.php?archive=advertmain&action=infosave">
<input type="hidden" name="inputclass" value="add">
<input type="hidden" name="tab" id="addtab" value="<?php echo $this->_tpl_vars['tab'] ?>">
<input type="hidden" name="lng" id="lng" value="<?php echo $this->_tpl_vars['lng'] ?>">
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="maindobycontent">
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="colorgorningage"><?php echo $this->_tpl_vars['ST']['advertmain_add_mess'] ?></span></span>
		</div>
		<div class="manageeditdiv">
			<div class="maneditcontent">
				<table class="formtable">
					<tr class="trstyle2">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['advertmain_add_atid'] ?></td>
						<td class="trtitle02">
							<select size="1" name="atid" id="atid">
								<option value="0"><?php echo $this->_tpl_vars['ST']['advertmain_add_atid_optin'] ?></option>
								<?php if (count($this->_tpl_vars['typelist'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['typelist']); $list++){?>
								<option <?php echo $this->_tpl_vars['typelist'][$list]['selected'] ?> value="<?php echo $this->_tpl_vars['typelist'][$list]['atid'] ?>"><?php echo $this->_tpl_vars['typelist'][$list]['adtypename'] ?></option>
								<?php }} ?>
							</select>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['advertmain_add_name'] ?></td>
						<td class="trtitle02">
							<input type="text" name="title" size="60" maxlength="80" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['advertmain_add_name_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle011"><?php echo $this->_tpl_vars['ST']['advertmain_add_islink'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="radio" value="2" name="islink" onclick="ondisplayother('urllink1','trstyle2 displaytrue','urllink2','trstyle2 displaynone');"/> <?php echo $this->_tpl_vars['ST']['advertmain_add_islink_2'] ?>&nbsp;
							<input type="radio" value="1" name="islink" onclick="ondisplayother('urllink1','trstyle2 displaynone','urllink2','trstyle2 displaytrue')" checked="checked"/> <?php echo $this->_tpl_vars['ST']['advertmain_add_islink_1'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['advertmain_add_islink_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 displaynone" id="urllink1">
						<td width="15%" class="trtitle011"><?php echo $this->_tpl_vars['ST']['advertmain_add_gotoid'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="text" name="gotoid" id="gotoid" size="10" maxlength="10" class="infoInput"/>
							<a class="filecheck" href="#body" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['article_doc_add_linkdid'] ?>','iframe:index.php?archive=article&action=listwindow&checkfrom=input&getbyid=gotoid&max=1&inputtext=gotoid&mid=<?php echo $this->_tpl_vars['mid'] ?>&tid=<?php echo $this->_tpl_vars['tid'] ?>&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),'800px','400px','iframe');">选择内容</a>
						</td>
					</tr>

					<tr class="trstyle2" id="urllink2">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['advertmain_add_url'] ?></td>
						<td class="trtitle02">
							<input type="text" name="url" value="http://" size="60" maxlength="185" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['advertmain_add_url_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['advertmain_add_adtype'] ?></td>
						<td class="trtitle02">
							<select size="1" name="adtype" onchange="javascript:selectinfo(this.value)">
								<?php if (count($this->_tpl_vars['adtype'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['adtype']); $list++){?>
								<option value="<?php echo $this->_tpl_vars['adtype'][$list]['key'] ?>"><?php echo $this->_tpl_vars['adtype'][$list]['name'] ?></option>
								<?php }} ?>
							</select>
						</td>
					</tr>
					<tr class="trstyle2" id="filenamestr">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['advertmain_add_filename'] ?></td>
						<td class="trtitle02" id="strhtml">
							<ul class="addpiclist">
								<li id="addsrlipic"><a title="<?php echo $this->_tpl_vars['ST']['selectfile_botton'] ?>" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['filemanage_select_title'] ?>','iframe:index.php?archive=filemanage&action=filewindow&listfunction=filelist&filetype=img&checkfrom=picshow&getbyid=addsrlipic&fileinputid=filename&maxselect=1&iframename='+self.frameElement.getAttribute('name'),'900px','480px','iframe')" href="#body"><p><img id="addsrcpic" src="templates/images/pic.png"></p></a></li>
							</ul>
							<input type="hidden" name="filename" id="filename" size="50" maxlength="50" class="infoInput"/>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['advertmain_text_istime'] ?></td>
						<td class="trtitle02">
							<input type="radio" value="1" name="istime" onclick="showdiv(1,'#starttimediv|#endtimediv','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="istime" checked="checked" onclick="showdiv(0,'#starttimediv|#endtimediv','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['advertmain_text_istime_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 displaynone"  id="starttimediv">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['advertmain_add_starttime'] ?></td>
						<td class="trtitle02">
							<input type="text" name="starttime" size="20" maxlength="30" id="starttime" value="<?php echo $this->timeformat($this->_tpl_vars['nowtime'],2) ?>" class="infoInput"/>
							<a class="datetime" onclick="WdatePicker({el:'starttime',isShowClear:false,readOnly:true,dateFmt:'yyyy-MM-dd'})" href="#body"><?php echo $this->_tpl_vars['ST']['selectdata_botton'] ?></a>
						</td>
					</tr>
					<tr class="trstyle2 displaynone" id="endtimediv">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['advertmain_add_endtime'] ?></td>
						<td class="trtitle02">
							<input type="text" name="endtime" size="20" maxlength="30" id="endtime" value="<?php echo $this->timeformat($this->_tpl_vars['nowtime'],2) ?>" class="infoInput"/>
							<a class="datetime" onclick="WdatePicker({el:'endtime',isShowClear:false,readOnly:true,dateFmt:'yyyy-MM-dd'})" href="#body"><?php echo $this->_tpl_vars['ST']['selectdata_botton'] ?></a>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['advertmain_add_content'] ?></td>
						<td class="trtitle02"><textarea name="content" id="content" style="width:98%;height:80px;" class="smallInput"></textarea></td>
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
				<td id="left" class="padding-left5"><input type="button" name="cancel" onClick="javascript:closewindow();" value="<?php echo $this->_tpl_vars['ST']['botton_add_reset'] ?>" class="button orange" /></td>
			</tr>
		</table>
	</div>
</div>
</form>
</body>

</html>