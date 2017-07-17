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
	};
	function sizewindow(){
		var h = $(window).height();
		if(document.getElementById("mainbodybottonauto")){
			$('.managebottonadd').css({height:h-40});
		}
	}
	var typemanage_type_add_upid  = "<?php echo $this->_tpl_vars['ST']['typemanage_type_add_upid'] ?>";
	var typemanage_js_noselect_empty  = "<?php echo $this->_tpl_vars['ST']['typemanage_js_noselect_empty'] ?>";
	var typemanage_js_typename_empty  = "<?php echo $this->_tpl_vars['ST']['typemanage_js_typename_empty'] ?>";
	var typemanage_js_dirname_empty  = "<?php echo $this->_tpl_vars['ST']['typemanage_js_dirname_empty'] ?>";
	var typemanage_js_template_empty  = "<?php echo $this->_tpl_vars['ST']['typemanage_js_template_empty'] ?>";
	var typemanage_js_typeurl_empty  = "<?php echo $this->_tpl_vars['ST']['typemanage_js_typeurl_empty'] ?>";
	var typemanage_js_type_shift_typeselect_err  = "<?php echo $this->_tpl_vars['ST']['typemanage_js_type_shift_typeselect_err'] ?>";
	var typemanage_js_type_edit_ok = "<?php echo $this->_tpl_vars['ST']['typemanage_js_type_edit_ok'] ?>";
	var typemanage_js_type_edit_no = "<?php echo $this->_tpl_vars['ST']['typemanage_js_type_edit_no'] ?>";
	var typemanage_js_isline_empty  = "<?php echo $this->_tpl_vars['ST']['typemanage_js_isline_empty'] ?>";
	var subjectmanage_js_pagemax_empty  = "<?php echo $this->_tpl_vars['ST']['subjectmanage_js_pagemax_empty'] ?>";
	var iframename = "<?php echo $this->_tpl_vars['iframename'] ?>";
	$(document).ready(function(){
		editsimpleshow_height("#content");
		var h = '<?php echo $this->_tpl_vars['iframeheightwindow'] ?>';
		$('.managebottonadd').css({height:h-40});
		var options = {
			beforeSubmit: formverify,
			success:saveResponse,
			resetForm: false
		};
		$('#typeedit').submit(function() {
			$(this).ajaxSubmit(options);
			return false;
		});
		parent.scrolclear();
	});
	function formverify(formData) {
		for (var i=0; i< formData.length; i++){
			if (formData[i].name == "content"){
				formData[i].value=tinyMCE.get('content').getContent();
			}
		}
		var queryString = $.param(formData);
		var get=urlarray(queryString);
		if(get['iseditdir']==1) {
			if(get['newdirname'].match(/^[\w-]+$/ig)==null) {
				document.typeedit.newdirname.focus();
				alert(typemanage_js_dirname_empty);
				return false;
			}
		}
		if(get['inputupid']!=0){
			if(get['upid']==0){
				document.typeedit.upid.focus();
				alert(typemanage_type_add_upid+typemanage_js_noselect_empty);
				return false;
			}
			if(get['upid']==get['tid']){
				document.typeedit.upid.focus();
				alert(typemanage_js_type_shift_typeselect_err);
				return false;
			}
		}
		if(get['typename']==''){
			document.typeedit.typename.focus();
			alert(typemanage_js_typename_empty);
			return false;
		}
		if(get['styleid']==1 || get['styleid']==2){
			if(get['indextemplates'].match(/^[\w]+$/ig)==null || get['template'].match(/^[\w]+$/ig)==null || get['readtemplate'].match(/^[\w]+$/ig)==null ) {
				document.typeedit.template.focus();
				alert(typemanage_js_template_empty);
				return false;
			}
		}else if(get['styleid']==3 && get['isline']==1 ){
			if(get['typeurl'].match(/^http:\/\/[a-zA-Z\:.0-9-%@#;&?=/_]+$/ig)==null) {
				document.typeedit.typeurl.focus();
				alert(typemanage_js_typeurl_empty);
				return false;
			}
		}else if(get['styleid']==3 && get['isline']==0 ){
			if(get['gotoline'].match(/^[0-9]+$/ig)==null) {
				document.typeedit.gotoline.focus();
				alert(typemanage_js_isline_empty);
				return false;
			}
		}
		if(get['pagemax']!='') {
			if(get['pagemax'].match(/^[0-9]+$/ig)==null) {
				document.typeedit.pagemax.focus();
				alert(subjectmanage_js_pagemax_empty);
				return false;
			}
		}
		parent.windowsdig('Loading','iframe:index.php?archive=management&action=load','400px','180px','iframe',false);
	}
	function saveResponse(options){
		parent.closeifram();
		if (options=='true'){
			parent.frames[iframename].refresh('selectform','selectall','check_all');
			alert(typemanage_js_type_edit_ok);
		}else{
			alert(typemanage_js_type_edit_ok+"("+options+")");
		}
		parent.scrolopen();
		parent.onaletdoc()
	}
</script>
</head>
<body>
<form name="typeedit" id="typeedit" method="post" action="index.php?archive=typemanage&action=typesave">
<input type="hidden" name="inputclass" value="edit">
<input type="hidden" name="tid" value="<?php echo $this->_tpl_vars['typeread']['tid'] ?>">
<input type="hidden" name="inputupid" id="inputupid" value="<?php echo $this->_tpl_vars['typeread']['upid'] ?>">
<input type="hidden" name="topid" value="<?php echo $this->_tpl_vars['typeread']['topid'] ?>">
<input type="hidden" name="lng" value="<?php echo $this->_tpl_vars['typeread']['lng'] ?>">
<?php if($this->_tpl_vars['styleid']){ ?><input type="hidden" name="styleid" id="styleid" value="<?php echo $this->_tpl_vars['typeread']['styleid'] ?>"><?php } ?>
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="maindobycontent">
		<!--查看已选择的类型-->
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="colorgorningage"><?php echo $this->_tpl_vars['ST']['typemanage_type_edit_mess'] ?> <u><?php echo $this->_tpl_vars['typeread']['typename'] ?></u></span></span>
		</div>
		<div class="manageeditdiv">
			<div class="maneditcontent">
				<table class="formtable">
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_lng'] ?></td>
						<td width="85%" class="trtitle02 colorgblue"><?php echo $this->_tpl_vars['typeread']['lng'] ?></td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['subjectmanage_type_add_mid'] ?></td>
						<td width="85%" class="trtitle02 colorgblue"><?php echo $this->_tpl_vars['model'] ?></td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3){ ?>displaynone<?php } ?>">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_dirname'] ?></td>
						<td width="85%" class="trtitle02 colorgblue"><?php echo $this->_tpl_vars['typeread']['dirname'] ?><input type="hidden" name="dirname" value="<?php echo $this->_tpl_vars['typeread']['dirname'] ?>"></td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3){ ?>displaynone<?php } ?>">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_dirpath'] ?></td>
						<td width="85%" class="trtitle02 colorgblue"><?php echo $this->_tpl_vars['pathdir'] ?><?php if($this->_tpl_vars['is_alonelng']!=1){ ?><?php echo $this->_tpl_vars['lngdir'] ?>/<?php } ?><?php if($this->_tpl_vars['typeread']['dirpath']!=''){ ?><?php echo $this->_tpl_vars['typeread']['dirpath'] ?>/<?php } ?><?php echo $this->_tpl_vars['typeread']['dirname'] ?></td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3){ ?>displaynone<?php } ?>">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_iseditdir'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="radio" value="1" name="iseditdir" onclick="ondisplay('isdirnamediv','trstyle2 displaytrue');"/> <?php echo $this->_tpl_vars['ST']['is_yes'] ?>&nbsp;
							<input type="radio" value="0" name="iseditdir" onclick="ondisplay('isdirnamediv','trstyle2 displaynone')" checked="checked"/> <?php echo $this->_tpl_vars['ST']['is_no'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_iseditdir_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 displaynone" id="isdirnamediv">
						<td width="15%" class="trtitle011"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_dirname'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="text" name="newdirname" size="20" maxlength="20" class="infoInput" onblur="checktypelngname('dirname',this.value,/^[\w-]+$/ig,'index.php?archive=typemanage&action=checkdirname&upid=<?php echo $this->_tpl_vars['typeread']['upid'] ?>&topid=<?php echo $this->_tpl_vars['typeread']['topid'] ?>','dirnameerr','<?php echo $this->_tpl_vars['ST']['typemanage_js_type_dirname_check_ok'] ?>','<?php echo $this->_tpl_vars['ST']['typemanage_js_type_dirname_check_no'] ?>','typeaddsubmitbotton');"/>
							<span class="cautiontitle" id="dirnameerr"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_dirname_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['typeread']['upid']==0){ ?>displaynone<?php }else{ ?>displaytrue<?php } ?>">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_upid'] ?></td>
						<td width="85%" class="trtitle02">
							<?php if($this->_tpl_vars['typeread']['upid']==0){ ?>
							<input type="hidden" name="upid" value="0">
							<?php }else{ ?>
							<select size="1" name="upid" id="upid">
								<option value="0"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_upid_option2'] ?></option>
								<?php if (count($this->_tpl_vars['typelist'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['typelist']); $list++){?>
								<option <?php echo $this->_tpl_vars['typelist'][$list]['selected'] ?> value="<?php echo $this->_tpl_vars['typelist'][$list]['tid'] ?>"><?php if($this->_tpl_vars['typelist'][$list]['level']>0){ ?>├<?php } ?><?php echo $this->treelist($this->_tpl_vars['typelist'][$list]['level'],'─') ?> <?php echo $this->_tpl_vars['typelist'][$list]['typename'] ?></option>
								<?php }} ?>
							</select>
							<?php } ?>
						</td>
					</tr>
					<?php if($this->_tpl_vars['upid']){ ?>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_upid'] ?></td>
						<td width="85%" class="trtitle02"><?php echo $this->_tpl_vars['typread']['typename'] ?></td>
					</tr>
					<?php } ?>
					<tr class="trstyle2">
						<td width="15%" class="trtitle011"><?php echo $this->_tpl_vars['ST']['subjectmanage_type_add_subjectname'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="text" name="typename" size="60" value="<?php echo $this->_tpl_vars['typeread']['typename'] ?>" maxlength="100" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['subjectmanage_type_add_subjectname_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']!=3){ ?>displaynone<?php } ?>">
						<td width="15%" class="trtitle011"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_styleid_isline'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="radio" value="0" name="isline" <?php if($this->_tpl_vars['typeread']['isline']==0){ ?>checked="checked" <?php } ?>onclick="ondisplayother('islinediv','trstyle2 displaytrue','typeurldiv','trstyle2 displaynone')"/> <?php echo $this->_tpl_vars['ST']['typemanage_type_add_styleid_isline_0'] ?>&nbsp;
							<input type="radio" value="1" name="isline" <?php if($this->_tpl_vars['typeread']['isline']==1){ ?>checked="checked" <?php } ?>onclick="ondisplayother('islinediv','trstyle2 displaynone','typeurldiv','trstyle2 displaytrue')"/> <?php echo $this->_tpl_vars['ST']['typemanage_type_add_styleid_isline_1'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_styleid_isline_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']!=3 || $this->_tpl_vars['typeread']['isline']==1){ ?>displaynone<?php } ?>" id="islinediv">
						<td width="15%" class="trtitle011"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_styleid_gotoline'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="text" name="gotoline" size="5" maxlength="10" value="<?php echo $this->_tpl_vars['typeread']['gotoline'] ?>" class="infoInput"/>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']!=3 || $this->_tpl_vars['typeread']['isline']==0){ ?>displaynone<?php } ?>" id="typeurldiv">
						<td width="15%" class="trtitle011"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_url'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="text" name="typeurl" size="60" maxlength="150" value="<?php echo $this->_tpl_vars['typeread']['typeurl'] ?>" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_url_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2" id="beeditdiv">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_editlist'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="checkbox" value="1" name="beedit"/> <?php echo $this->_tpl_vars['ST']['typemanage_type_add_editlist_mess'] ?>&nbsp;
						</td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['subjectmanage_type_add_subpic'] ?></td>
						<td width="85%" class="trtitle02">
							<ul class="addpiclist">
								<?php if($this->_tpl_vars['typeread']['typepic']!=''){ ?>
								<li id="addsrlipic"><a title="<?php echo $this->_tpl_vars['ST']['remimages_botton'] ?>" ondblclick="removerpic('addsrlipic','typepic')" href="#body"><p><img id="addsrcpic" src="<?php echo $this->_tpl_vars['adminurl'] ?><?php echo $this->_tpl_vars['typeread']['typepic'] ?>" width="100" height="100"></p></a></li>
								<?php }else{ ?>
								<li id="addsrlipic"><a title="<?php echo $this->_tpl_vars['ST']['selectfile_botton'] ?>" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['filemanage_select_title'] ?>','iframe:index.php?archive=filemanage&action=filewindow&listfunction=filelist&filetype=img&checkfrom=picshow&getbyid=addsrlipic&fileinputid=typepic&maxselect=1&iframename='+self.frameElement.getAttribute('name'),'900px','480px','iframe')" href="#body"><p><img id="addsrcpic" src="templates/images/pic.png" width="100" height="100"></p></a></li>
								<?php } ?>
							</ul>
							<input type="hidden" name="typepic" id="typepic" value="<?php echo $this->_tpl_vars['typeread']['typepic'] ?>" size="50" maxlength="50" class="infoInput"/>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3){ ?>displaynone<?php } ?>">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['subjectmanage_type_add_content'] ?></td>
						<td width="85%" class="trtitle02"><textarea name="content" id="content" cols="50" rows="5" class="smallInput" style="width:98%;height:70px;"><?php echo $this->_tpl_vars['typeread']['content'] ?></textarea></td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3 || $this->_tpl_vars['styleid']==4){ ?>displaynone<?php } ?>">
						<td class="trtitle03" colspan="2"><?php echo $this->_tpl_vars['ST']['article_doc_tab_title01'] ?></td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3 || $this->_tpl_vars['styleid']==4){ ?>displaynone<?php } ?>">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['article_doc_add_headtitle'] ?></td>
						<td class="trtitle02"><input type="text" name="headtitle" id="headtitle" value="<?php echo $this->_tpl_vars['typeread']['headtitle'] ?>" maxlength="100" class="infoInput" style="width:98%;"/></td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3 || $this->_tpl_vars['styleid']==4){ ?>displaynone<?php } ?>">
						<td class="trtitle01"></td>
						<td class="trtitle02">
							<a class="keyselect" href="#body" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['selectkeytype_botton'] ?>','iframe:index.php?archive=seomanage&action=listwindow&inputtext=keywords&listfunction=keytype&checkfrom=function&maxselect=1&mid=<?php echo $this->_tpl_vars['typeread']['mid'] ?>&iframename='+self.frameElement.getAttribute('name'),'850px','450px','iframe');"><?php echo $this->_tpl_vars['ST']['selectkeytype_botton'] ?></a>
							<a class="keyselect" href="#body" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['selectkeyword_botton'] ?>','iframe:index.php?archive=seomanage&action=listwindow&inputtext=keywords&listfunction=key&checkfrom=input&mid=<?php echo $this->_tpl_vars['typeread']['mid'] ?>&iframename='+self.frameElement.getAttribute('name'),'650px','380px','iframe');"><?php echo $this->_tpl_vars['ST']['selectkeyword_botton'] ?></a>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3 || $this->_tpl_vars['styleid']==4){ ?>displaynone<?php } ?>">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['article_doc_add_keywords'] ?></td>
						<td class="trtitle02">
							<input type="text" name="keywords" id="keywords" value="<?php echo $this->_tpl_vars['typeread']['keywords'] ?>" maxlength="100" class="infoInput"  style="width:98%;"/>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3 || $this->_tpl_vars['styleid']==4){ ?>displaynone<?php } ?>">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['article_doc_add_description'] ?></td>
						<td class="trtitle02">
							<textarea name="description" id="description"  style="width:98%;height:50px;" class="smallInput"><?php echo $this->_tpl_vars['typeread']['description'] ?></textarea>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle03" colspan="2"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_templatesurl'] ?></td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3){ ?>displaynone<?php } ?>">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['subjectmanage_type_add_purview'] ?></td>
						<td width="85%" class="trtitle02">
							<select size="1" name="purview" id="purview">
								<option value="0"><?php echo $this->_tpl_vars['ST']['subjectmanage_type_add_purview_option'] ?></option>
								<?php if (count($this->_tpl_vars['memberpuvlist'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['memberpuvlist']); $list++){?>
								<option <?php echo $this->_tpl_vars['memberpuvlist'][$list]['selected'] ?> value="<?php echo $this->_tpl_vars['memberpuvlist'][$list]['mcid'] ?>"><?php echo $this->_tpl_vars['memberpuvlist'][$list]['rankname'] ?></option>
								<?php }} ?>
							</select>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_gotoid'] ?></td>
						<td class="trtitle02">
							<select size="1" name="gotoid" id="gotoid">
								<option value="0"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_gotoid_option'] ?></option>
								<?php if (count($this->_tpl_vars['gototypelist'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['gototypelist']); $list++){?>
								<option <?php echo $this->_tpl_vars['gototypelist'][$list]['selected'] ?> value="<?php echo $this->_tpl_vars['gototypelist'][$list]['tid'] ?>"><?php if($this->_tpl_vars['gototypelist'][$list]['level']>0){ ?>├<?php } ?><?php echo $this->treelist($this->_tpl_vars['gototypelist'][$list]['level'],'─') ?> <?php echo $this->_tpl_vars['gototypelist'][$list]['typename'] ?></option>
								<?php }} ?>
							</select>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_gotoid_mess'] ?></span>
						</td>
					</tr>
					<?php if($this->_tpl_vars['styleid']<3){ ?>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_pageclass'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="radio" value="1" name="pageclass" <?php if($this->_tpl_vars['typeread']['pageclass']==1){ ?>checked="checked" <?php } ?>onclick="showdiv(1,'#filenamestylediv|#readnamestylediv','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"/> <?php echo $this->_tpl_vars['ST']['typemanage_type_add_pageclass_1'] ?>&nbsp;
							<input type="radio" value="0" name="pageclass" <?php if($this->_tpl_vars['typeread']['pageclass']==0){ ?>checked="checked" <?php } ?>onclick="showdiv(0,'#filenamestylediv|#readnamestylediv','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"/> <?php echo $this->_tpl_vars['ST']['typemanage_type_add_pageclass_0'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_pageclass_mess'] ?></span>
						</td>
					</tr>
					<?php } elseif(($this->_tpl_vars['styleid']==4)){ ?>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_pageclass'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="radio" value="1" name="pageclass"<?php if($this->_tpl_vars['typeread']['pageclass']==1){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['typemanage_type_add_pageclass_1'] ?>&nbsp;
							<input type="radio" value="0" name="pageclass"<?php if($this->_tpl_vars['typeread']['pageclass']==0){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['typemanage_type_add_pageclass_0'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_pageclass_mess'] ?></span>
						</td>
					</tr>
					<?php } ?>
					<?php if($this->_tpl_vars['styleid']<3){ ?>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_styleid'] ?></td>
						<td width="85%" class="trtitle02">
							<select size="1" name="styleid" id="styleid">
								<option <?php if($this->_tpl_vars['typeread']['styleid']==2){ ?>selected <?php } ?>value="2"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_styleid_2'] ?></option>
								<option <?php if($this->_tpl_vars['typeread']['styleid']==1){ ?>selected <?php } ?>value="1"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_styleid_1'] ?></option>
							</select>
						</td>
					</tr>
					<?php } ?>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3){ ?>displaynone<?php } ?>">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_editlist2'] ?></td>
						<td width="85%" class="trtitle02"><input type="checkbox" value="1" name="beistemplatesedit"/> <?php echo $this->_tpl_vars['ST']['typemanage_type_add_editlist2_mess'] ?></td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3 || $this->_tpl_vars['styleid']==4){ ?>displaynone<?php } ?>" id="templatediv">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_templateindex'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="text" name="indextemplates" id="indextemplates" size="20" maxlength="80" value="<?php if($this->_tpl_vars['typeread']['indextemplates']!=''){ ?><?php echo $this->_tpl_vars['typeread']['indextemplates'] ?><?php }else{ ?><?php echo $this->_tpl_vars['tempname']['typeindex'] ?><?php } ?>" class="infoInput"/>
							<a class="filecheck" href="#body" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?>','iframe:index.php?archive=templatemain&action=listwindow&inputtext=indextemplates&typeclass=article&skindir=&filedir=article&fileclass=&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),'750px','410px','iframe');"><?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?></a>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_template_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3 || $this->_tpl_vars['styleid']==4){ ?>displaynone<?php } ?>" id="templatediv">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_template'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="text" name="template" id="templatevalue" size="20" maxlength="80" value="<?php if($this->_tpl_vars['typeread']['template']!=''){ ?><?php echo $this->_tpl_vars['typeread']['template'] ?><?php }else{ ?><?php echo $this->_tpl_vars['tempname']['typelist'] ?><?php } ?>" class="infoInput"/>
							<a class="filecheck" href="#body" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?>','iframe:index.php?archive=templatemain&action=listwindow&inputtext=templatevalue&typeclass=article&skindir=&filedir=article&fileclass=&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),'750px','410px','iframe');"><?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?></a>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_template_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3){ ?>displaynone<?php } ?>" id="readtemplatediv">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_readtemplate'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="text" name="readtemplate" id="readtemplatevalue" size="20" maxlength="80" value="<?php if($this->_tpl_vars['typeread']['readtemplate']!=''){ ?><?php echo $this->_tpl_vars['typeread']['readtemplate'] ?><?php }else{ ?><?php echo $this->_tpl_vars['tempname']['typeread'] ?><?php } ?>" class="infoInput"/>
							<a class="filecheck" href="#body" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?>','iframe:index.php?archive=templatemain&action=listwindow&inputtext=readtemplatevalue&typeclass=article&skindir=&filedir=article&fileclass=&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),'750px','410px','iframe');"><?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?></a>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_template_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3 || $this->_tpl_vars['styleid']==4 || $this->_tpl_vars['typeread']['pageclass']==0){ ?>displaynone<?php } ?>" id="filenamestylediv">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_filenamestyle'] ?></td>
						<td width="85%" class="trtitle02">
							<select size="1" name="filenamestyle" id="filenamestyle">
								<?php if (count($this->_tpl_vars['filetemplate'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['filetemplate']); $list++){?>
								<option <?php if($this->_tpl_vars['typeread']['filenamestyle']==$this->_tpl_vars['filetemplate'][$list]['id']){ ?>selected <?php } ?>value="<?php echo $this->_tpl_vars['filetemplate'][$list]['id'] ?>"><?php echo $this->_tpl_vars['filetemplate'][$list]['name'] ?>.<?php echo $this->_tpl_vars['ext'] ?></option>
								<?php }} ?>
							</select>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3 || $this->_tpl_vars['styleid']==4 || $this->_tpl_vars['typeread']['pageclass']==0){ ?>displaynone<?php } ?>" id="readnamestylediv">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_readnamestyle'] ?></td>
						<td width="85%" class="trtitle02">
							<select size="1" name="readnamestyle" id="readnamestyle">
								<?php if (count($this->_tpl_vars['readtemplate'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['readtemplate']); $list++){?>
								<option <?php if($this->_tpl_vars['typeread']['readnamestyle']==$this->_tpl_vars['readtemplate'][$list]['id']){ ?>selected <?php } ?>value="<?php echo $this->_tpl_vars['readtemplate'][$list]['id'] ?>"><?php echo $this->_tpl_vars['readtemplate'][$list]['name'] ?>.<?php echo $this->_tpl_vars['ext'] ?></option>
								<?php }} ?>
							</select>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3 || $this->_tpl_vars['styleid']==4){ ?>displaynone<?php } ?>" id="pagemaxdiv">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['subjectmanage_type_add_pagemax'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="text" name="pagemax" size="5" maxlength="3" value="<?php echo $this->_tpl_vars['typeread']['pagemax'] ?>" class="infoInput"/>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['subjectmanage_type_add_pagemax_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3 || $this->_tpl_vars['styleid']==4){ ?>displaynone<?php } ?>" id="pagemaxdiv2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_isorderby'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="radio" value="1" name="isorderby"<?php if($this->_tpl_vars['typeread']['isorderby']==1){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['typemanage_type_add_isorderby_1'] ?>&nbsp;
							<input type="radio" value="0" name="isorderby"<?php if($this->_tpl_vars['typeread']['isorderby']==0){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['typemanage_type_add_isorderby_0'] ?>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3 || $this->_tpl_vars['styleid']==4){ ?>displaynone<?php } ?>" id="pagemaxdiv3">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_ordertype'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="radio" value="1" name="ordertype"<?php if($this->_tpl_vars['typeread']['ordertype']==1){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['typemanage_type_add_ordertype_1'] ?>&nbsp;
							<input type="radio" value="2" name="ordertype"<?php if($this->_tpl_vars['typeread']['ordertype']==2){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['typemanage_type_add_ordertype_2'] ?>
						</td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_ismenu'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="radio" value="1" name="ismenu"<?php if($this->_tpl_vars['typeread']['ismenu']==1){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="ismenu"<?php if($this->_tpl_vars['typeread']['ismenu']==0){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_ismenu_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_isaccessory'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="radio" value="1" name="isaccessory"<?php if($this->_tpl_vars['typeread']['isaccessory']==1){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="isaccessory"<?php if($this->_tpl_vars['typeread']['isaccessory']==0){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_isaccessory_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3 || $this->_tpl_vars['styleid']==4){ ?>displaynone<?php } ?>">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_ispart'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="radio" value="1" name="ispart"<?php if($this->_tpl_vars['typeread']['ispart']==1){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['typemanage_type_add_ispart_1'] ?>&nbsp;
							<input type="radio" value="0" name="ispart"<?php if($this->_tpl_vars['typeread']['ispart']==0){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['typemanage_type_add_ispart_0'] ?>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle03" colspan="2"><?php echo $this->_tpl_vars['ST']['iswap_message'] ?></td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['iswap_title'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="radio" value="1" name="iswap"<?php if($this->_tpl_vars['typeread']['iswap']==1){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="iswap"<?php if($this->_tpl_vars['typeread']['iswap']==0){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['iswap_title_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3){ ?>displaynone<?php } ?>" id="beeditdiv">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_editlist3'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="checkbox" value="1" name="editwap"/> <?php echo $this->_tpl_vars['ST']['typemanage_type_add_editlist3_mess'] ?>&nbsp;
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3 || $this->_tpl_vars['styleid']==4){ ?>displaynone<?php } ?>">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['iswap_templates_file'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="text" id="waptempalte" name="waptempalte" size="30" maxlength="80" value="<?php if($this->_tpl_vars['typeread']['waptempalte']!=''){ ?><?php echo $this->_tpl_vars['typeread']['waptempalte'] ?><?php }else{ ?><?php echo $this->_tpl_vars['tempname']['typelist'] ?><?php } ?>" class="infoInput"/>
							<a class="filecheck" href="#body" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?>','iframe:index.php?archive=templatemain&action=listwindow&inputtext=waptempalte&typeclass=article&skindir=wap&filedir=article&fileclass=&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),'750px','400px','iframe');"><?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?></a>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['subjectmanage_type_add_template_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2 <?php if($this->_tpl_vars['styleid']==3){ ?>displaynone<?php } ?>">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['iswap_read_templates_file'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="text" id="wapreadtemplate" name="wapreadtemplate" size="30" maxlength="80" value="<?php if($this->_tpl_vars['typeread']['wapreadtemplate']!=''){ ?><?php echo $this->_tpl_vars['typeread']['wapreadtemplate'] ?><?php }else{ ?><?php echo $this->_tpl_vars['tempname']['typeread'] ?><?php } ?>" class="infoInput"/>
							<a class="filecheck" href="#body" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?>','iframe:index.php?archive=templatemain&action=listwindow&inputtext=wapreadtemplate&typeclass=article&skindir=wap&filedir=article&fileclass=&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),'750px','400px','iframe');"><?php echo $this->_tpl_vars['ST']['selecttempfile_botton'] ?></a>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['subjectmanage_type_add_template_mess'] ?></span>
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
				<td id="right"><input type="submit" id="typeaddsubmitbotton" name="Submit" value="<?php echo $this->_tpl_vars['ST']['botton_edit'] ?>" class="button orange" /></td>
				<td id="left" class="padding-left5"><input type="button" name="cancel" onClick="javascript:closewindow();" value="<?php echo $this->_tpl_vars['ST']['botton_edit_reset'] ?>" class="button orange" /></td>
			</tr>
		</table>
	</div>
</div>
</form>
</body>
</html>