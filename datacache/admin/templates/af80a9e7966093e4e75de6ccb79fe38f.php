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
	var typemanage_type_to_type  = "<?php echo $this->_tpl_vars['ST']['typemanage_type_to_type'] ?>";
	var typemanage_js_noselect_empty  = "<?php echo $this->_tpl_vars['ST']['typemanage_js_noselect_empty'] ?>";
	var typemanage_js_type_shift_typeselect_err  = "<?php echo $this->_tpl_vars['ST']['typemanage_js_type_shift_typeselect_err'] ?>";
	var typemanage_js_type_shift_ok = "<?php echo $this->_tpl_vars['ST']['typemanage_js_type_shift_ok'] ?>";
	var typemanage_js_type_shift_no = "<?php echo $this->_tpl_vars['ST']['typemanage_js_type_shift_no'] ?>";
	var iframename = "<?php echo $this->_tpl_vars['iframename'] ?>";
	$(document).ready(function(){
		var h = '<?php echo $this->_tpl_vars['iframeheightwindow'] ?>';
		$('.managebottonadd').css({height:h-40});
		var options = {
			beforeSubmit: formverify,
			success:saveResponse
		}
		$('#typeshift').submit(function() {
			$(this).ajaxSubmit(options);
			return false;
		});
		parent.scrolclear();
	})




	function formverify(formData) {
		var queryString = $.param(formData);
		var get=urlarray(queryString);
		if(get['shifttid']==0){
			document.typeshift.shifttid.focus();
			alert(typemanage_type_to_type+typemanage_js_noselect_empty);
			return false;
		}
		if(get['shifttid']==get['tid']){
			document.typeshift.shifttid.focus();
			alert(typemanage_js_type_shift_typeselect_err);
			return false;
		}
		parent.windowsdig('Loading','iframe:index.php?archive=management&action=load','400px','180px','iframe',false);
	}
	function saveResponse(options){
		parent.closeifram();
		if (options=='true'){
			parent.frames[iframename].refresh('selectform','selectall','check_all');
			alert(typemanage_js_type_shift_ok);
		}else{
			alert(typemanage_js_type_shift_ok);
		}
		parent.scrolopen();
		parent.onaletdoc()
	}
</script>
</head>

<body>
<form name="typeshift" id="typeshift" method="post" action="index.php?archive=typemanage&action=typesave">
<input type="hidden" name="inputclass" value="shift">
<input type="hidden" name="tid" value="<?php echo $this->_tpl_vars['typeread']['tid'] ?>">
<input type="hidden" name="inputupid" id="inputupid" value="<?php echo $this->_tpl_vars['typeread']['upid'] ?>">
<input type="hidden" name="topid" value="<?php echo $this->_tpl_vars['typeread']['topid'] ?>">
<input type="hidden" name="lng" value="<?php echo $this->_tpl_vars['typeread']['lng'] ?>">
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="maindobycontent">
		<!--查看已选择的类型-->
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="colorgorningage"><?php echo $this->_tpl_vars['ST']['typemanage_type_shift_mess'] ?> <u><?php echo $this->_tpl_vars['typeread']['typename'] ?></u></span></span>
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
						<td width="85%" class="trtitle02 colorgblue"><?php echo $this->_tpl_vars['model'] ?><input type="hidden" name="mid" value="<?php echo $this->_tpl_vars['typeread']['mid'] ?>"></td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_dirname'] ?></td>
						<td width="85%" class="trtitle02 colorgblue"><?php echo $this->_tpl_vars['typeread']['dirname'] ?><input type="hidden" name="dirname" value="<?php echo $this->_tpl_vars['typeread']['dirname'] ?>"></td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_dirpath'] ?></td>
						<td width="85%" class="trtitle02 colorgblue">
							<?php echo $this->_tpl_vars['pathdir'] ?><?php if($this->_tpl_vars['is_alonelng']!=1){ ?><?php echo $this->_tpl_vars['lngdir'] ?>/<?php } ?><?php echo $this->_tpl_vars['typeread']['dirpath'] ?>
						</td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_to_type'] ?></td>
						<td width="85%" class="trtitle02">
							<select size="1" name="shifttid" id="shifttid">
								<option value="0"><?php echo $this->_tpl_vars['ST']['typemanage_type_add_upid_option2'] ?></option>
								<?php if (count($this->_tpl_vars['typelist'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['typelist']); $list++){?>
								<option <?php echo $this->_tpl_vars['typelist'][$list]['selected'] ?> value="<?php echo $this->_tpl_vars['typelist'][$list]['tid'] ?>"><?php if($this->_tpl_vars['typelist'][$list]['level']>0){ ?>├<?php } ?><?php echo $this->treelist($this->_tpl_vars['typelist'][$list]['level'],'─') ?> <?php echo $this->_tpl_vars['typelist'][$list]['typename'] ?></option>
								<?php }} ?>
							</select>
						</td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_type_to_type2'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="radio" value="1" name="isshift"/> <?php echo $this->_tpl_vars['ST']['is_yes'] ?>&nbsp;
							<input type="radio" value="0" name="isshift" checked="checked"/> <?php echo $this->_tpl_vars['ST']['is_no'] ?>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['typemanage_type_to_type2_mess'] ?></span>
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
				<td id="right"><input type="submit" name="Submit" value="<?php echo $this->_tpl_vars['ST']['botton_shift'] ?>" class="button orange" /></td>
				<td id="left" class="padding-left5"><input type="button" name="cancel" onClick="javascript:closewindow();" value="<?php echo $this->_tpl_vars['ST']['botton_edit_reset'] ?>" class="button orange" /></td>
			</tr>
		</table>
	</div>
</div>
</form>
</body>

</html>      