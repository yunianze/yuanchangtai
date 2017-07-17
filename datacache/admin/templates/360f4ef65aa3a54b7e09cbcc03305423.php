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
	var typemanage_add_synchro_js_lng = "<?php echo $this->_tpl_vars['ST']['typemanage_add_synchro_js_lng'] ?>";
	var typemanage_add_synchro_js_tid = "<?php echo $this->_tpl_vars['ST']['typemanage_add_synchro_js_tid'] ?>";
	var typemanage_add_synchro_js_ok = "<?php echo $this->_tpl_vars['ST']['typemanage_add_synchro_js_ok'] ?>";
	var typemanage_add_synchro_js_no = "<?php echo $this->_tpl_vars['ST']['typemanage_add_synchro_js_no'] ?>";
	var iframename = "<?php echo $this->_tpl_vars['iframename'] ?>";
	$(document).ready(function(){
		var h = '<?php echo $this->_tpl_vars['iframeheightwindow'] ?>';
		$('.managebottonadd').css({height:h-40});
		var options = {
			beforeSubmit: formverify,
			success:saveResponse
		}
		$('#synchroedit').submit(function() {
			$(this).ajaxSubmit(options);
			return false;
		});
		parent.scrolclear();
	})
	function formverify(formData) {
		var queryString = $.param(formData);
		var get=urlarray(queryString);
		if(get['tolng']==0){
			document.synchroedit.tolng.focus();
			alert(typemanage_add_synchro_js_lng);
			return false;
		}
		if(get['totid']==0){
			document.synchroedit.totid.focus();
			alert(typemanage_add_synchro_js_tid);
			return false;
		}
		parent.windowsdig('Loading','iframe:index.php?archive=management&action=load','400px','180px','iframe',false);
	}
	function saveResponse(options){
		parent.closeifram();
		if (options=='true'){
			alert(typemanage_add_synchro_js_ok);
		}else{
			alert(typemanage_add_synchro_js_no+options);
		}
		parent.scrolopen();
		parent.onaletdoc()
	}
	function searchoption(tolng,title){
		var mid=document.synchroedit.mid.value;
		selectlinkagelng('tid','index.php?archive=connected&action=sctypelist&islinkd=1&optiontitle='+title+'&mid='+mid+'&lng='+tolng);
	}
</script>
</head>
<body>
<form name="synchroedit" id="synchroedit" method="post" action="index.php?archive=typemanage&action=synchrosave">
<input type="hidden" name="tid" value="<?php echo $this->_tpl_vars['typeread']['tid'] ?>">
<input type="hidden" name="lng" value="<?php echo $this->_tpl_vars['typeread']['lng'] ?>">
<input type="hidden" name="mid" value="<?php echo $this->_tpl_vars['typeread']['mid'] ?>">
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="maindobycontent">
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="colorgorningage"><?php echo $this->_tpl_vars['ST']['typemanage_add_synchro_mess'] ?><u><?php echo $this->_tpl_vars['typeread']['typename'] ?></u></span></span>
		</div>
		<div class="manageeditdiv">
			<div class="maneditcontent">
				<table class="formtable">
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['subjectmanage_type_add_mid'] ?></td>
						<td width="85%" class="trtitle02"><?php echo $this->_tpl_vars['model']['modelname'] ?></td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_add_synchro_lng'] ?></td>
						<td width="85%" class="trtitle02">
							<select size="1" name="tolng" id="tolng" onchange="javascript:searchoption(this.value,'<?php echo $this->escape($this->_tpl_vars['ST']['typemanage_add_synchro_tid_optn'],'url') ?>')">
								<option value="0"><?php echo $this->_tpl_vars['ST']['typemanage_add_synchro_lng_optn'] ?></option>
							<?php if (count($this->_tpl_vars['lnglist'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['lnglist']); $list++){?>
								<?php if($this->_tpl_vars['typeread']['lng']!=$this->_tpl_vars['lnglist'][$list]['lng']){ ?>
								<option <?php echo $this->_tpl_vars['lnglist'][$list]['selected'] ?> value="<?php echo $this->_tpl_vars['lnglist'][$list]['lng'] ?>"><?php echo $this->_tpl_vars['lnglist'][$list]['lngtitle'] ?></option>
								<?php } ?>
							<?php }} ?>
							</select>
						</td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['typemanage_add_synchro_tid'] ?></td>
						<td class="trtitle02">
							<select size="1" name="totid" id="tid">
								<option value="0"><?php echo $this->_tpl_vars['ST']['typemanage_add_synchro_tid_optn'] ?></option>
							</select>
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['typemanage_add_synchro_tid_mess'] ?></span>
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
				<td id="right"><input type="submit" name="Submit" value="<?php echo $this->_tpl_vars['ST']['botton_synchro_1'] ?>" class="button orange" /></td>
				<td id="left" class="padding-left5"><input type="button" name="cancel" onClick="javascript:closewindow();" value="<?php echo $this->_tpl_vars['ST']['botton_synchro_2'] ?>" class="button orange" /></td>
			</tr>
		</table>
	</div>
</div>
</form>
</body>
</html>