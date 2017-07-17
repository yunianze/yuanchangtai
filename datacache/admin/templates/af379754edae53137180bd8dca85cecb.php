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
	var formmessmain_js_content_mess  = "<?php echo $this->_tpl_vars['ST']['formmessmain_js_content_mess'] ?>";
	var formmessmain_js_add_ok = "<?php echo $this->_tpl_vars['ST']['formmessmain_js_add_ok'] ?>";
	var formmessmain_js_add_ok = "<?php echo $this->_tpl_vars['ST']['formmessmain_js_add_ok'] ?>";
	var iframename = "<?php echo $this->_tpl_vars['iframename'] ?>";
	$(document).ready(function(){
		var h = '<?php echo $this->_tpl_vars['iframeheightwindow'] ?>';
		$('.managebottonadd').css({height:h-40});
		editsimpleshow_height("#content");
		var options = {
			beforeSubmit: formverify,
			success:saveResponse,
			resetForm: false
		};
		$('#formmessedit').submit(function() {
			$(this).ajaxSubmit(options);
			return false;
		});
	});




	function formverify(formData) {
		for (var i=0; i< formData.length; i++){
			if (formData[i].name == "content"){
				formData[i].value=tinyMCE.get('content').getContent();
			}
		}
		var queryString = $.param(formData);
		var get=urlarray(queryString);
		if(get['content']=='') {
			document.formmessedit.content.focus();
			alert(formmessmain_js_content_mess);
			return false;
		}
		parent.windowsdig('Loading','iframe:index.php?archive=management&action=load','400px','180px','iframe',false);
	}
	function saveResponse(options){
		parent.closeifram();
		if (options=='true'){
			parent.frames[iframename].refresh('selectform','selectall','check_all');
			alert(formmessmain_js_add_ok);
		}else{
			alert(formmessmain_js_add_no);
		}
		parent.onaletdoc()
	}
</script>
</head>

<body>
<form name="formmessedit" id="formmessedit" method="post" action="index.php?archive=formmessmain&action=save">
<input type="hidden" name="inputclass" value="edit">
<input type="hidden" name="fvid" value="<?php echo $this->_tpl_vars['read']['fvid'] ?>">
<input type="hidden" name="isreply" value="<?php echo $this->_tpl_vars['read']['isreply'] ?>">
<input type="hidden" name="ismail" value="<?php echo $this->_tpl_vars['form']['ismail'] ?>">
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="maindobycontent">
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="colorgorningage"><?php echo $this->_tpl_vars['ST']['formmessmain_type_add_mess'] ?></span></span>
		</div>
		<div class="manageeditdiv">
			<div class="maneditcontent">
				<table class="formtable">
					<tr>
						<td  class="trtitle03" colspan="2"><?php echo $this->_tpl_vars['ST']['formmessmain_type_add_typelngmode'] ?></td>
					</tr>
					<?php if (count($this->_tpl_vars['attlist'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['attlist']); $list++){?>
					<?php if($this->_tpl_vars['attlist'][$list]['isline']!=1){ ?>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['attlist'][$list]['typename'] ?></td>
						<td class="trtitle02">
							<?php if($this->_tpl_vars['attlist'][$list]['inputtype']=='select' || $this->_tpl_vars['attlist'][$list]['inputtype']=='radio' || $this->_tpl_vars['attlist'][$list]['inputtype']=='checkbox'){ ?>
							<?php if (count($this->_tpl_vars['attlist'][$list]['attrvalue'])>0){$divid_list2=1;for($list2=0;$list2<count($this->_tpl_vars['attlist'][$list]['attrvalue']); $list2++){?>
							<?php if($this->_tpl_vars['attlist'][$list]['attrvalue'][$list2]['selected']=='selected'){ ?><?php echo $this->_tpl_vars['attlist'][$list]['attrvalue'][$list2]['name'] ?><?php } ?>
							<?php }} ?>
							<?php } elseif($this->_tpl_vars['attlist'][$list]['inputtype']=='datetime'){ ?>
							<?php echo $this->timeformat($this->_tpl_vars['attlist'][$list]['attrvalue'],3) ?>
							<?php }else{ ?>
							<?php echo $this->_tpl_vars['attlist'][$list]['attrvalue'] ?>
							<?php } ?>
						</td>
					</tr>
					<?php } ?>
					<?php }} ?>
					<tr>
						<td  class="trtitle03" colspan="2"><?php echo $this->_tpl_vars['ST']['formmessmain_type_add_isreply'] ?></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmessmain_text_formgroupname'] ?></td>
						<td class="trtitle02"><?php echo $this->_tpl_vars['form']['formgroupname'] ?></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmessmain_text_addtime'] ?></td>
						<td class="trtitle02"><?php echo $this->timeformat($this->_tpl_vars['read']['addtime'],3) ?></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['forummain_add_ip'] ?></td>
						<td class="trtitle02"><?php echo $this->ip($this->_tpl_vars['read']['ipadd'],0) ?></td>
					</tr>
					<?php if($this->_tpl_vars['docread']['title']!=''){ ?>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmessmain_type_doc'] ?></td>
						<td class="trtitle02"><a class="infolink02" target="_blank" href="<?php echo $this->_tpl_vars['docread']['readlink'] ?>"><?php echo $this->_tpl_vars['docread']['title'] ?></a></td>
					</tr>
					<?php } ?>
					<?php if($this->_tpl_vars['memread']['username']!=''){ ?>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmessmain_type_member'] ?></td>
						<td class="trtitle02"><?php echo $this->_tpl_vars['memread']['username'] ?></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"></td>
						<td class="trtitle02">ID=<?php echo $this->_tpl_vars['memread']['userid'] ?></td>
					</tr>
					<?php } ?>
					<?php if($this->_tpl_vars['read']['isreply']==0){ ?>
					<tr class="trstyle2">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['formmessmain_type_mail'] ?></td>
						<td class="trtitle02">
							<input type="text" name="email" id="email" value="<?php echo $this->_tpl_vars['sendmail'] ?>" size="40" maxlength="50" class="infoInput"/>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle011"><?php echo $this->_tpl_vars['ST']['formmessmain_type_add_isreply'] ?></td>
						<td class="trtitle02"><textarea name="content" id="content" style="width:98%;height:200px;" class="smallInput"><?php echo $this->_tpl_vars['read']['recontent'] ?></textarea></td>
					</tr>
					<?php }else{ ?>
					<?php if($this->_tpl_vars['form']['ismail']==1){ ?>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmessmain_type_retime'] ?></td>
						<td class="trtitle02"><?php echo $this->timeformat($this->_tpl_vars['read']['retime'],3) ?></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmessmain_type_admin'] ?></td>
						<td class="trtitle02"><?php echo $this->_tpl_vars['read']['username'] ?></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmessmain_type_add_isreply'] ?></td>
						<td class="trtitle02"><?php echo $this->_tpl_vars['read']['recontent'] ?></td>
					</tr>
					<?php }else{ ?>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['formmessmain_type_add_isreply'] ?></td>
						<td class="trtitle02"><?php echo $this->_tpl_vars['ST']['formmessmain_js_ismail_err'] ?></td>
					</tr>
					<?php } ?>
					<?php } ?>
				</table>
			</div>
		</div>
	</div>
</div>
<div id="downbotton">
	<div id="subbotton">
		<table border="0" width="100%">
			<tr>
				<td id="right"><input type="submit" id="messsubmitbotton" name="Submit" value="<?php echo $this->_tpl_vars['ST']['botton_remess'] ?>" class="button orange" /></td>
				<td id="left" class="padding-left5"><input type="button" name="cancel" onClick="javascript:parent.onaletdoc();" value="<?php echo $this->_tpl_vars['ST']['botton_remess_reset'] ?>" class="button orange" /></td>
			</tr>
		</table>
	</div>
</div>
</form>
</body>

</html>