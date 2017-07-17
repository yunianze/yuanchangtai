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
		if(document.getElementById("mainbodyauto")){
			$('.manageadd').css({height:h-40});
			$('.manageedit').css({height:h-40});
		}
	}
	var sqllist_js_del_ok = "<?php echo $this->_tpl_vars['ST']['sqllist_js_del_ok'] ?>";
	var sqllist_js_del_no = "<?php echo $this->_tpl_vars['ST']['sqllist_js_del_no'] ?>";
	var iframename = "<?php echo $this->_tpl_vars['iframename'] ?>";
	$(document).ready(function(){
		var h = '<?php echo $this->_tpl_vars['iframeheightwindow'] ?>';
		$('.manageedit').css({height:h-40});
		var options = {

			beforeSubmit: function(){
				parent.windowsdig('Loading','iframe:index.php?archive=management&action=load','400px','180px','iframe',false);
			},

			success:saveResponse
		}
		$('#sqldel').submit(function() {
			$(this).ajaxSubmit(options);
			return false;
		});
	})
	function saveResponse(options){
		parent.closeifram();
		if (options=='true'){
			alert(sqllist_js_del_ok);
		}else{
			alert(sqllist_js_del_no);
		}
		parent.onaletdoc()
	}
</script>
</head>

<body>
<form name="sqldel" id="sqldel" method="post" action="index.php?archive=sqlmanage&action=sqldel">
	<div id="mainbodyauto" class="manageedit">
		<div class="maindobycontent">
			<!--查看已选择的类型-->
			<div class="suggestion">
				<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="colorgorningage"><?php echo $this->_tpl_vars['ST']['sqllist_del_mess'] ?></span></span>
			</div>
			<div class="sugtitle-line"></div>
			<div class="listitle">
				<table border="0" width="100%" bordercolor="#FFFFFF">
					<tr>
						<td width="10%"><?php echo $this->_tpl_vars['ST']['sqllist_import_list_select'] ?></td>
						<td width="40%"><?php echo $this->_tpl_vars['ST']['sqllist_import_list_filename'] ?></td>
						<td width="20%"><?php echo $this->_tpl_vars['ST']['sqllist_import_list_baktime'] ?></td>
						<td width="15%"><?php echo $this->_tpl_vars['ST']['sqllist_import_list_filesize'] ?></td>
						<td width="15%"><?php echo $this->_tpl_vars['ST']['sqllist_import_list_vol'] ?></td>
					</tr>
				</table>
			</div>
			<?php if(count($this->_tpl_vars['array']) > 0){ ?>
				<?php if (count($this->_tpl_vars['array'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['array']); $list++){?>
				<div class="infolist" title="<?php echo $this->_tpl_vars['array'][$list]['filename'] ?>">
					<table border="0" style="border-collapse:collapse" width="100%" bordercolor="#FFFFFF">
						<tr>
							<td width="10%"><?php if($this->_tpl_vars['array'][$list]['mark']==1){ ?><input type="radio" <?php echo $this->_tpl_vars['array'][$list]['checked'] ?>name="filename" value="<?php echo $this->_tpl_vars['array'][$list]['shortfile'] ?>"><?php } ?></td>
							<td width="40%"><?php echo $this->_tpl_vars['array'][$list]['filename'] ?></td>
							<td width="20%"><?php echo $this->_tpl_vars['array'][$list]['addtime'] ?></td>
							<td width="15%"><?php echo $this->_tpl_vars['array'][$list]['filesize'] ?></td>
							<td width="15%"><?php echo $this->_tpl_vars['array'][$list]['vol'] ?></td>
						</tr>
					</table>
				</div>
				<?php }} ?>
			<?php }else{ ?>
				<div class="infolist">
				<table border="0" style="border-collapse:collapse" width="100%" bordercolor="#FFFFFF">
					<tr>
					    <td align="center"><?php echo $this->_tpl_vars['ST']['list_nothing_title'] ?></td>
					</tr>
				</table>
				</div>
			<?php } ?>
		</div>
	</div>
	<div id="downbotton">
		<div id="subbotton">
			<table border="0" width="100%">
				<?php if(count($this->_tpl_vars['array']) > 0){ ?>
				<tr>
					<td id="right"><input type="submit" name="Submit" value="<?php echo $this->_tpl_vars['ST']['botton_del'] ?>" class="button orange" /></td>
					<td id="left" class="padding-left5"><input type="button" name="cancel" onClick="javascript:parent.onaletdoc();" value="<?php echo $this->_tpl_vars['ST']['botton_del_reset'] ?>" class="button orange" /></td>
				</tr>
				<?php }else{ ?>
				<tr>
					<td id="center"><input type="button" name="cancel" onClick="javascript:parent.onaletdoc();" value="<?php echo $this->_tpl_vars['ST']['botton_del_reset'] ?>" class="button orange" /></td>
				</tr>
				<?php } ?>
			</table>
		</div>
	</div>
</form>
</body>

</html>      