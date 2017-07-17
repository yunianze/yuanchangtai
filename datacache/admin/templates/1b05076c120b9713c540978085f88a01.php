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
	var modelmanage_js_attr_typename_empty  = "<?php echo $this->_tpl_vars['ST']['modelmanage_js_attr_typename_empty'] ?>";
	var modelmanage_js_attr_attrname_empty  = "<?php echo $this->_tpl_vars['ST']['modelmanage_js_attr_attrname_empty'] ?>";
	var modelmanage_js_attr_attrvalue_empty  = "<?php echo $this->_tpl_vars['ST']['modelmanage_js_attr_attrvalue_empty'] ?>";
	var modelmanage_js_attr_attrsize_empty  = "<?php echo $this->_tpl_vars['ST']['modelmanage_js_attr_attrsize_empty'] ?>";
	var modelmanage_js_attr_attrrow_empty  = "<?php echo $this->_tpl_vars['ST']['modelmanage_js_attr_attrrow_empty'] ?>";
	var modelmanage_js_attr_attrlenther_empty  = "<?php echo $this->_tpl_vars['ST']['modelmanage_js_attr_attrlenther_empty'] ?>";
	var formmain_js_attr_edit_ok = "<?php echo $this->_tpl_vars['ST']['formmain_js_attr_edit_ok'] ?>";
	var formmain_js_attr_edit_no = "<?php echo $this->_tpl_vars['ST']['formmain_js_attr_edit_no'] ?>";
	var iframename = "<?php echo $this->_tpl_vars['iframename'] ?>";
	$(document).ready(function(){
		var h = '<?php echo $this->_tpl_vars['iframeheightwindow'] ?>';
		$('.managebottonadd').css({height:h-40});
		var options = {
			beforeSubmit: formverify,
			success:saveResponse
		}
		$('#formattedit').submit(function() {
			$(this).ajaxSubmit(options);
			return false;
		});
	})




	function formverify(formData) {
		var queryString = $.param(formData);
		var get=urlarray(queryString);
		if(get['typename']==""){
			document.formattedit.typename.focus();
			alert(modelmanage_js_attr_typename_empty);
			return false;
		}
		if(get['inputtype']=="select" || get['inputtype']=="radio" || get['inputtype']=="checkbox"){
			if(get['attrvalue']==""){
				document.formattedit.attrvalue.focus();
				alert(modelmanage_js_attr_attrvalue_empty);
				return false;
			}
		}
		if(get['attrsize']!=""){
			if(get['attrsize'].match(/^[1-9]{1}[0-9]{0,2}$/ig)==null) {
				document.formattedit.attrsize.focus();
				alert(modelmanage_js_attr_attrsize_empty);
				return false;
			}
		}
		if(get['attrrow']!=""){
			if(get['attrrow'].match(/^[1-9]{1}[0-9]{0,2}$/ig)==null) {
				document.formattedit.attrrow.focus();
				alert(modelmanage_js_attr_attrrow_empty);
				return false;
			}
		}
		parent.windowsdig('Loading','iframe:index.php?archive=management&action=load','400px','180px','iframe',false);
	}
	function saveResponse(options){
		parent.closeifram();
		if (options=='true'){
			parent.frames[iframename].refresh('selectform','selectall','check_all');
			alert(formmain_js_attr_edit_ok);
		}else{
			alert(formmain_js_attr_edit_no);
		}
		parent.onaletdoc()
	}
</script>
</head>

<body>
<form name="formattedit" id="formattedit" method="post" action="index.php?archive=formmain&action=formattrsave">
<input type="hidden" name="inputclass" value="edit">
<input type="hidden" name="fgid" value="<?php echo $this->_tpl_vars['attrread']['fgid'] ?>">
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="maindobycontent">
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="colorgorningage"><?php echo $this->_tpl_vars['ST']['formmain_attr_edit_mess'] ?> <u><?php echo $this->_tpl_vars['attrread']['typename'] ?> (<?php echo $this->_tpl_vars['attrread']['attrname'] ?>)</u></span></span>
		</div>
		<div class="manageeditdiv">
			<div class="maneditcontent">
				<table class="formtable">
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_attrname'] ?></td>
						<td width="85%" class="trtitle02"><span class="colorgreg"><?php echo $this->_tpl_vars['attrread']['attrname'] ?></span></td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle011"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_inputtype'] ?></td>
						<td width="85%" class="trtitle02">
							<select name="inputtype2" id="inputtype" disabled>
								<?php if (count($this->_tpl_vars['formtypelist'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['formtypelist']); $i++){?>
								<option <?php if($this->_tpl_vars['attrread']['inputtype']==$this->_tpl_vars['formtypelist'][$i]['key']){ ?>selected <?php } ?>value="<?php echo $this->_tpl_vars['formtypelist'][$i]['key'] ?>"><?php echo $this->_tpl_vars['formtypelist'][$i]['name'] ?></option>
								<?php }} ?>
							</select>
						</td>
					</tr>
					<tr class="trstyle3">
						<td width="15%" class="trtitle011"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_typename'] ?></td>
						<td width="85%" class="trtitle02"><input type="text" name="typename" size="80" maxlength="50" value="<?php echo $this->_tpl_vars['attrread']['typename'] ?>" class="infoInput"/></td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"></td>
						<td width="85%" class="trtitle02"><span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_typename_mess'] ?></span></td>
					</tr>
					<tr class="trstyle3">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_typeremark'] ?></td>
						<td width="85%" class="trtitle02"><input type="text" name="typeremark" size="80" maxlength="200" value="<?php echo $this->_tpl_vars['attrread']['typeremark'] ?>" class="infoInput"/></td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"></td>
						<td width="85%" class="trtitle02"><span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_typeremark_mess'] ?></span></td>
					</tr>
					<tr class="trstyle3">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_attrvalue'] ?></td>
						<td width="85%" class="trtitle02">
							<textarea name="attrvalue" cols="40" rows="5" style="width:99%;height:85px;"><?php echo $this->_tpl_vars['attrread']['attrvalue'] ?></textarea>
						</td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"></td>
						<td width="85%" class="trtitle02"><span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_attrvalue_mess'] ?></span></td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_isvalidate'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="radio" value="1" name="isvalidate"<?php if($this->_tpl_vars['attrread']['isvalidate']==1){ ?> checked="checked"<?php } ?> onclick="ondisplay('validatetextdiv,#validatetextdiv2','trstyle2 displaytrue')"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="isvalidate"<?php if($this->_tpl_vars['attrread']['isvalidate']==0){ ?> checked="checked"<?php } ?> onclick="ondisplay('validatetextdiv,#validatetextdiv2','trstyle2 displaynone')"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_isvalidate_mess'] ?></span>
						</td>
					</tr>
					<tr class="trstyle2<?php if($this->_tpl_vars['attrread']['isvalidate']==0){ ?> displaynone<?php } ?>" id="validatetextdiv">
						<td width="15%" class="trtitle011"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_validatetext'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="text" name="validatetext" id="validatetext" size="40" value="<?php echo $this->_tpl_vars['attrread']['validatetext'] ?>" maxlength="80" class="infoInput"/>
							<select name="validatetext_select" onchange="javascript:$('#validatetext').val(this.value)">
								<option value="">选择预定正则</option>
								<option value="/^[0-9.-]+$/">数字</option>
								<option value="/^[0-9-]+$/">整数</option>
								<option value="/^[a-z]+$/i">字母</option>
								<option value="/^[0-9a-z]+$/i">数字+字母</option>
								<option value="/^[\w\-\.]+@[\w\-\.]+(\.\w+)+$/">E-mail</option>
								<option value="/^[0-9]{5,20}$/">QQ</option>
								<option value="/^http:\/\//">超级链接</option>
								<option value="/^(1)[0-9]{10}$/">手机号码</option>
								<option value="/^[0-9-]{6,13}$/">电话号码</option>
								<option value="/^[0-9]{6}$/">邮政编码</option>
							</select>
						</td>
					</tr>
					<tr class="trstyle2<?php if($this->_tpl_vars['attrread']['isvalidate']==0){ ?> displaynone<?php } ?>" id="validatetextdiv2">
						<td width="15%" class="trtitle01"></td>
						<td width="85%" class="trtitle02"><span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_validatetext_mess'] ?></span></td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_attrsize'] ?></td>
						<td width="85%" class="trtitle02"><input type="text" name="attrsize" size="6" maxlength="3"  value="<?php echo $this->_tpl_vars['attrread']['attrsize'] ?>" class="infoInput"/> <span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_attrsize_mess'] ?></span></td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_attrrow'] ?></td>
						<td width="85%" class="trtitle02"><input type="text" name="attrrow" size="6" maxlength="3" value="<?php echo $this->_tpl_vars['attrread']['attrrow'] ?>" class="infoInput"/> <span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_attrrow_mess'] ?></span></td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_isclass_validatetext'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="radio" value="1" name="isclass"<?php if($this->_tpl_vars['attrread']['isclass']==1){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
							<input type="radio" value="0" name="isclass"<?php if($this->_tpl_vars['attrread']['isclass']==0){ ?> checked="checked"<?php } ?>/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_isclass_validatetext_mess'] ?></span>
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
				<td id="right"><input type="submit" name="Submit" value="<?php echo $this->_tpl_vars['ST']['botton_edit'] ?>" class="button orange" /></td>
				<td id="left" class="padding-left5"><input type="button" name="cancel" onClick="javascript:parent.onaletdoc();" value="<?php echo $this->_tpl_vars['ST']['botton_edit_reset'] ?>" class="button orange" /></td>
			</tr>
		</table>
	</div>
</div>
<input type="hidden" name="faid" value="<?php echo $this->_tpl_vars['attrread']['faid'] ?>">
<input type="hidden" name="inputtype" value="<?php echo $this->_tpl_vars['attrread']['inputtype'] ?>">
<input type="hidden" name="attrname" value="<?php echo $this->_tpl_vars['attrread']['attrname'] ?>">
<input type="hidden" name="isline" value="<?php echo $this->_tpl_vars['attrread']['isline'] ?>">
</form>
</body>

</html>      