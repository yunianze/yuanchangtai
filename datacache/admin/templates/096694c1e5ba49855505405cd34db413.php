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
<script type="text/javascript" src="js/dialog.js"></script>
<script type="text/javascript" language="JavaScript">
	var digheight = "<?php echo $this->_tpl_vars['digheight'] ?>";
	var management_update_zip_str1 = "<?php echo $this->_tpl_vars['ST']['management_update_zip_str1'] ?>";
	var management_update_zip_str2 = "<?php echo $this->_tpl_vars['ST']['management_update_zip_str2'] ?>";
	var management_update_zip_str3 = "<?php echo $this->_tpl_vars['ST']['management_update_zip_str3'] ?>";
	var management_update_zip_str4 = "<?php echo $this->_tpl_vars['ST']['management_update_zip_str4'] ?>";
	var management_update_zip_str5 = "<?php echo $this->_tpl_vars['ST']['management_update_zip_str5'] ?>";
	$(document).ready(function(){var h=parseInt(digheight);if(document.getElementById("mainbodybottonauto")){$('.managebottonadd').css({height:h-40});}});function get_load(){$('#softvolstr').removeClass().addClass('manageeditdiv_hover displaynone');$('#submitbotton').attr('disabled','true');var loadurl="index.php?archive=upgrademain&action=upsafe&iscount=1&ordertype=1";$.ajax({type:"POST",url:loadurl,dataType:'json',success:function(date){$('#checkloading').removeClass().addClass('manageeditdiv_hover displaytrue');$('#softvolstr').removeClass().addClass('manageeditdiv_hover displaynone');$('#bottonsubmit').removeClass().addClass('displaynone');$('#bottonsubmit2').removeClass().addClass('displaytrue');if(date.num<=0){$("#centerstr").empty().append(date.vol);$('#bottonsubmit2').removeClass().addClass('displaynone');$('#bottonsubmit3').removeClass().addClass('displaytrue');}else{$("#centertitle").empty().append(management_update_zip_str1+date.num+management_update_zip_str5);setupload(0,date.num,date.vol);}
	return false;}});}
	function setupload(keyid,datenum,volname){var loadurl="index.php?archive=upgrademain&action=upsafe&ordertype=1";if(keyid==datenum){$("#centerstr").empty().append(management_update_zip_str2+datenum+management_update_zip_str5);$('#bottonsubmit2').removeClass().addClass('displaynone');$('#bottonsubmit3').removeClass().addClass('displaytrue');return false;}
	$.ajax({type:"POST",url:loadurl,dataType:'json',success:function(date){residuevol=datenum-keyid;keyid++;if(date.setuptype==1){$("#centerstr").empty().append(date.vol+management_update_zip_str3+residuevol+management_update_zip_str5);if(date.isreset==1){alert('<?php echo $this->_tpl_vars['ST']['management_update_zip_str12'] ?>');parent.locationout();return false;}
	setupload(keyid,datenum,date.vol);}else if(date.setuptype==0){$("#centerstr").empty().append(date.vol+management_update_zip_str4+residuevol+management_update_zip_str5);$('#bottonsubmit2').removeClass().addClass('displaynone');$('#bottonsubmit3').removeClass().addClass('displaytrue');return false;}else if(date.setuptype==2){$("#centerstr").empty().append(date.vol+management_update_zip_str4+residuevol+management_update_zip_str5+date.magessage);$('#bottonsubmit2').removeClass().addClass('displaynone');$('#bottonsubmit3').removeClass().addClass('displaytrue');return false;}}});}
	function resetwindow(){parent.closeifram();}
	document.oncontextmenu=new Function('event.returnValue=false;');
	document.onselectstart=new Function('event.returnValue=false;');
</script>
</head>
<body>
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="maindobycontent">
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="padding-left5 colorgorningage"><?php echo $this->_tpl_vars['ST']['management_login_update_title'] ?></span></span>
		</div>
		<div class="manageeditdiv_hover" id="softvolstr">
			<div class="maneditcontent">
				<table class="formtable">
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['management_update_zip_str6'] ?></td>
						<td class="trtitle02"><?php echo $this->_tpl_vars['softvolstr'] ?></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['management_update_zip_str7'] ?></td>
						<td class="trtitle02"><?php if($this->_tpl_vars['array']['volstr']){ ?><span style="color: #C00;font-weight: bold;"><?php echo $this->_tpl_vars['array']['volstr'] ?></span><?php }else{ ?><?php echo $this->_tpl_vars['ST']['management_update_zip_newsstr'] ?><?php } ?></td>
					</tr>
					<?php if($this->_tpl_vars['array']['volstr']){ ?>
					<tr class="trstyle2">
						<td class="trtitle01"></td>
						<td class="trtitle02 lineheight160 colorgorningage strong"><?php echo $this->_tpl_vars['ST']['management_update_zip_str9'] ?></td>
					</tr>
					<?php } ?>
					<?php if($this->_tpl_vars['array']['content']){ ?>
					<tr class="trstyle2">
						<td class="trtitle01" valign="top" style="padding-top:13px;"><?php echo $this->_tpl_vars['ST']['management_update_zip_str8'] ?></td>
						<td class="trtitle02 lineheight160"><?php echo $this->_tpl_vars['array']['content'] ?></td>
					</tr>
					<?php } ?>
				</table>
			</div>
		</div>
		<div class="manageeditdiv_hover displaynone" id="checkloading">
			<div class="maneditcontent">
				<table class="formtablewin">
					<tr class="trstyle2">
						<td id="centertitle" style="text-align: center;font-size:14px;font-weight: bold;padding:20px 0px 10px 0px;"><?php echo $this->_tpl_vars['ST']['management_update_zip_loading'] ?></td>
					</tr>
					<tr class="trstyle2">
						<td id="centerstr" style="text-align: center;padding:10px 0px 20px 0px;color: #C00;font-weight: bold;"></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<div id="downbotton">
	<div id="subbotton">
		<table border="0" width="100%">
			<?php if($this->_tpl_vars['array']['volstr']){ ?>
			<tr id="bottonsubmit">
				<td id="right"><input type="submit" name="botton" id="submitbotton" value="<?php echo $this->_tpl_vars['ST']['botton_update'] ?>" onclick="javascript:get_load();" class="button orange" title="<?php echo $this->_tpl_vars['ST']['botton_update'] ?>"/></td>
				<td id="left" class="padding-left5"><input type="reset" name="reset" value="<?php echo $this->_tpl_vars['ST']['botton_check_update_reset'] ?>" onclick="javascript:resetwindow();" class="button orange"  title="<?php echo $this->_tpl_vars['ST']['botton_check_update_reset'] ?>"/></td>
			</tr>
			<tr class="displaynone" id="bottonsubmit2">
				<td id="center" colspan="2"><input type="reset" name="reset" value="<?php echo $this->_tpl_vars['ST']['management_update_zip_botton'] ?>" class="button orange"  title="<?php echo $this->_tpl_vars['ST']['management_update_zip_loading'] ?>"/></td>
			</tr>
			<tr class="displaynone" id="bottonsubmit3">
				<td id="center" colspan="2"><input type="reset" name="reset" value="<?php echo $this->_tpl_vars['ST']['botton_close'] ?>" onclick="javascript:resetwindow();" class="button orange"  title="<?php echo $this->_tpl_vars['ST']['botton_close'] ?>"/></td>
			</tr>
			<?php }else{ ?>
			<tr <?php if($this->_tpl_vars['array']['volstr']){ ?>class="displaynone" <?php } ?>id="bottonsubmit3">
				<td id="center" colspan="2"><input type="reset" name="reset" value="<?php echo $this->_tpl_vars['ST']['botton_close'] ?>" onclick="javascript:resetwindow();" class="button orange"  title="<?php echo $this->_tpl_vars['ST']['botton_close'] ?>"/></td>
			</tr>
			<?php } ?>
		</table>
	</div>
</div>
</body>
</html>