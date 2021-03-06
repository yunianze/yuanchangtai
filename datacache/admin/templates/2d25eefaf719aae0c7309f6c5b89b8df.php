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
	var sqllist_js_savasize_empty = "<?php echo $this->_tpl_vars['ST']['sqllist_js_savasize_empty'] ?>";
	var sqllist_js_savasize_error = "<?php echo $this->_tpl_vars['ST']['sqllist_js_savasize_error'] ?>";
	var sqllist_js_export_ok = "<?php echo $this->_tpl_vars['ST']['sqllist_js_export_ok'] ?>";
	var sqllist_js_export_no = "<?php echo $this->_tpl_vars['ST']['sqllist_js_export_no'] ?>";
	var sqllist_js_tablename_empty = "<?php echo $this->_tpl_vars['ST']['tablename_empty'] ?>";
	var iframename = "<?php echo $this->_tpl_vars['iframename'] ?>";
	$(document).ready(function(){
		var h = '<?php echo $this->_tpl_vars['iframeheightwindow'] ?>';
		$('.managebottonadd').css({height:h-40});
		var options = {

			beforeSubmit: formverify,

			success:saveResponse
		}
		$('#sqlbak').submit(function() {
			$(this).ajaxSubmit(options);
			return false;
		});
	})




	function formverify(formData) {
		var queryString = $.param(formData);
		var get=urlarray(queryString);
		if( get['savasize']=="" ) {
			alert(sqllist_js_savasize_empty);
			document.sqlbak.savasize.focus();
			return false;
		}
		if(get['savasize'].match(/^[0-9]{2,10}$/ig)==null) {
			document.sqlbak.savasize.focus();
			alert(sqllist_js_savasize_empty);
			return false;
		}
		var savasize=Math.round(get['savasize']);
		var maxfilesizee=Math.round(get['maxfilesize']);
		if( savasize>maxfilesizee || savasize<1) {
			alert(sqllist_js_savasize_error);
			document.sqlbak.savasize.focus();
			return false;
		}
		if(get['baktype']==0){
			if(get['tablename%5B%5D']==undefined){
				alert(sqllist_js_tablename_empty);
				return false;
			}
		}
		parent.windowsdig('Loading','iframe:index.php?archive=management&action=load','400px','180px','iframe',false);
	}
	function saveResponse(options){
		if (options!='true' && options!='false'){
			saveget(options);
		}else{
			parent.closeifram();
			if (options=='true'){
				alert(sqllist_js_export_ok);
			}else{
				alert(sqllist_js_export_no);
			}
			parent.onaletdoc()
		}
	}

	function saveget(geturl){
		$.get(geturl,function(data){
			if (data!='true' && data!='false'){
				saveget(data);
			}else{
				parent.closeifram();
				if (data=='true'){
					alert(sqllist_js_export_ok);
				}else{
					alert(sqllist_js_export_no);
				}
				parent.onaletdoc()
			}
		})
	}
</script>
</head>

<body>
<form name="sqlbak" id="sqlbak" method="post" action="index.php?archive=sqlmanage&action=sqlbak">
<input type="hidden" name="maxfilesize" value="<?php echo $this->_tpl_vars['maxfilesize'] ?>"/>
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="maindobycontent">
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="colorgorningage"><?php echo $this->_tpl_vars['ST']['sqllist_export_mess'] ?></span></span>
		</div>
		<div class="manageeditdiv">
			<div class="maneditcontent">
				<table class="formtable">
					<tr class="trstyle2">
						<td class="trtitle03" colspan="2"><?php echo $this->_tpl_vars['ST']['sqllist_export_infomess'] ?></td>
					</tr>
					<tr class="trstyle2">
						<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['sqllist_export_savasize'] ?></td>
						<td width="85%" class="trtitle02">
							<input type="text" name="savasize" size="10" maxlength="10" value="<?php echo $this->_tpl_vars['maxfilesize'] ?>" class="infoInput"/> kb
							<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['sqllist_export_savasize_mess'] ?><?php echo $this->_tpl_vars['memberinfo'].$this->_tpl_vars['maxfilesize'] ?>kb</span></td>
					</tr>
					<tr class="trstyle2">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['sqllist_export_baktype'] ?></td>
						<td class="trtitle02">
							<input type="radio" value="1" name="baktype" checked="checked" onclick="ondisplay('tableselect','trstyle2 displaynone')"/><?php echo $this->_tpl_vars['ST']['sqllist_export_baktype1'] ?>&nbsp;
							<input type="radio" value="0" name="baktype" onclick="ondisplay('tableselect','trstyle2 displaytrue')"/><?php echo $this->_tpl_vars['ST']['sqllist_export_baktype0'] ?>
						</td>
					</tr>
					<tr class="trstyle2 displaynone" id="tableselect">
						<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['sqllist_export_tablename'] ?></td>
						<td class="trtitle02">
							<table width="100%">
								<tr>
								<?php if (count($this->_tpl_vars['array'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['array']); $list++){?>
									<td width="2%"><input type="checkbox" name="tablename[]" value="<?php echo $this->_tpl_vars['array'][$list]['table'] ?>"></td>
									<td width="48%" align="left"><?php echo $this->_tpl_vars['array'][$list]['table'] ?></td>
									<?php if($divid_list==2){ ?> </tr><tr><?php $divid_list=0;}$divid_list++;?>
								<?php }} ?>
							</table>
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
				<td id="right"><input type="submit" name="Submit" value="<?php echo $this->_tpl_vars['ST']['botton_bak'] ?>" class="button orange" /></td>
				<td id="left" class="padding-left5"><input type="button" name="cancel" onClick="javascript:parent.onaletdoc();" value="<?php echo $this->_tpl_vars['ST']['botton_bak_reset'] ?>" class="button orange" /></td>
			</tr>
		</table>
	</div>
</div>
</form>
</body>

</html>      