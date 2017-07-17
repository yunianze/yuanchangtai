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
	var mangerlist_filecheck_loading = "<?php echo $this->_tpl_vars['ST']['mangerlist_filecheck_loading'] ?>";
	var mangerlist_filecheck_htmlstr4 = "<?php echo $this->_tpl_vars['ST']['mangerlist_filecheck_htmlstr4'] ?>";
	var mangerlist_filecheck_htmlstr5 = "<?php echo $this->_tpl_vars['ST']['mangerlist_filecheck_htmlstr5'] ?>";
	var mangerlist_filecheck_htmlstr6 = "<?php echo $this->_tpl_vars['ST']['mangerlist_filecheck_htmlstr6'] ?>";
	var digheight = "<?php echo $this->_tpl_vars['digheight'] ?>";
	$(document).ready(function() {
		var h = parseInt(digheight);
		if (document.getElementById("mainbodybottonauto")) {
			$('.managebottonadd').css({height: h - 40});
		}
	});

	function get_load() {
		$("#filecheckmanger").empty().append(mangerlist_filecheck_loading);
		$('#bottonsubmit').removeClass().addClass('displaynone');
		$('#bottonsubmit2').removeClass().addClass('displaytrue');

		var loadurl = "index.php?archive=upgrademain&action=dirchecklist";
		$.ajax({
			type: "POST",
			url: loadurl,
			dataType: 'html',
			success: function(date) {
				$("#filecheckloading").empty().append(date);
				var filenum = $("#filenum").val();
				if (filenum > 0) {
					var filename = $("#filenamepath1").val();
					$("#filecheckmanger").empty().append(mangerlist_filecheck_htmlstr4);
					filecheck(1, filename, filenum);
				}
			}
		});
	}

	function filecheck(key, filename, filenum) {
		if (key > filenum) {
			$("#filecheckmanger").empty().append(mangerlist_filecheck_htmlstr5 + filenum + mangerlist_filecheck_htmlstr6);
			$('#bottonsubmit2').removeClass().addClass('displaynone');
			$('#bottonsubmit3').removeClass().addClass('displaytrue');
			return false;
		}
		var loadurl = "index.php?archive=upgrademain&action=checkfile&filename="+filename;
		$.ajax({
			type: "POST",
			url: loadurl,
			dataType: 'text',
			success: function(date) {
				$("#f"+key).append(date);
				key++;
				filename = $("#filenamepath"+key).val();
				filecheck(key, filename, filenum);
			}
		});
	}

	function resetwindow() {
		parent.closeifram();
	}
	document.oncontextmenu=new Function('event.returnValue=false;');
	document.onselectstart=new Function('event.returnValue=false;');
</script>
</head>

<body>
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="maindobycontent">
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="padding-left5 colorgorningage"><?php echo $this->_tpl_vars['ST']['mangerlist_filecheck_mess'] ?></span></span>
		</div>

		<div class="formdiv">
			<table border="0" width="100%">
				<tr>
					<td id="filecheckmanger" style="text-align: center;padding:20px 0px 10px 0px;font-size:12px;font-weight: bold;line-height: 200%;"> <?php echo $this->_tpl_vars['ST']['mangerlist_filecheck_submit_mess'] ?> </td>
				</tr>
				<tr class="trstyle2">
					<td id="filecheckloading" style="text-align: center;"></td>
				</tr>
			</table>
		</div>
	</div>
</div>
<div id="downbotton">
	<div id="subbotton">
		<table border="0" width="100%">
			<tr id="bottonsubmit">
				<td id="right"><input type="submit" name="botton" id="submitbotton" value="<?php echo $this->_tpl_vars['ST']['botton_check'] ?>" onclick="javascript:get_load();" class="button orange" title="<?php echo $this->_tpl_vars['ST']['botton_check'] ?>"/></td>
				<td id="left" class="padding-left5"><input type="reset" name="reset" value="<?php echo $this->_tpl_vars['ST']['botton_check_reset'] ?>" onclick="javascript:resetwindow();" class="button orange"  title="<?php echo $this->_tpl_vars['ST']['botton_check_reset'] ?>"/></td>
			</tr>
			<tr class="displaynone" id="bottonsubmit2">
				<td id="center" colspan="2"><input type="reset" name="reset" value="<?php echo $this->_tpl_vars['ST']['mangerlist_filecheck_loading_botton'] ?>" class="button orange"  title="<?php echo $this->_tpl_vars['ST']['mangerlist_filecheck_loading_botton'] ?>"/></td>
			</tr>
			<tr class="displaynone" id="bottonsubmit3">
				<td id="center" colspan="2"><input type="reset" name="reset" value="<?php echo $this->_tpl_vars['ST']['botton_close'] ?>" onclick="javascript:resetwindow();" class="button orange"  title="<?php echo $this->_tpl_vars['ST']['botton_close'] ?>"/></td>
			</tr>
		</table>
	</div>
</div>
</body>

</html>
