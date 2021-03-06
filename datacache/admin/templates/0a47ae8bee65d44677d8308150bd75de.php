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
	};

	function sizewindow(){
		var h = $(window).height();
		if(document.getElementById("mainbodybottonauto")){
			$('.managebottonadd').css({height:h-40});
		}
	}
	var modelmanage_js_modelname_empty  = "<?php echo $this->_tpl_vars['ST']['modelmanage_js_modelname_empty'] ?>";
	var modelmanage_js_pagemax_empty  = "<?php echo $this->_tpl_vars['ST']['modelmanage_js_pagemax_empty'] ?>";
	var modelmanage_js_add_ok = "<?php echo $this->_tpl_vars['ST']['modelmanage_js_add_ok'] ?>";
	var modelmanage_js_add_no = "<?php echo $this->_tpl_vars['ST']['modelmanage_js_add_no'] ?>";
	var iframename = "<?php echo $this->_tpl_vars['iframename'] ?>";
	iframename = iframename=='' ? "jerichotabiframe_0" : iframename;
	$(document).ready(function(){
		var h = '<?php echo $this->_tpl_vars['iframeheightwindow'] ?>';
		$('.managebottonadd').css({height:h-40});
		var options = {
			beforeSubmit: formverify,
			success:saveResponse,
			resetForm: false
		};
		$('#modeladd').submit(function() {
			$(this).ajaxSubmit(options);
			return false;
		});
	})




	function formverify(formData) {
		var queryString = $.param(formData);
		var get=urlarray(queryString);
		if(get['modelname']==""){
			document.modeladd.modelname.focus();
			alert(modelmanage_js_modelname_empty);
			return false;
		}
		if(get['pagemax'].match(/^[1-9][0-9.]*$/ig)==null) {
			document.modeladd.pagemax.focus();
			alert(modelmanage_js_pagemax_empty);
			return false;
		}
		parent.windowsdig('Loading','iframe:index.php?archive=management&action=load','400px','180px','iframe',false);
	}
	function saveResponse(options){
		parent.closeifram();
		var tab=document.getElementById("modeladdtab").value;
		if (options=='true'){
			if (tab=='true'){
				if(parent.frames[iframename].document.getElementById("selectform")){
					parent.frames[iframename].refresh('selectform','selectall','check_all');
				}
			}
			alert(modelmanage_js_add_ok);
		}else{
			alert(modelmanage_js_add_no);
		}

		var refalse = "<?php echo $this->_tpl_vars['refalse'] ?>";
		if (refalse!='1' || $.browser.mozilla){
			if (tab=='true'){
				parent.onaletdoc()
			}
		}else{
			window.location.reload();
		}
	}
</script>
</head>

<body>
<form name="modeladd" id="modeladd" method="post" action="index.php?archive=modelmanage&action=modelsave">
	<input type="hidden" name="inputclass" value="add">
	<input type="hidden" name="tab" id="modeladdtab" value="<?php echo $this->_tpl_vars['tab'] ?>">
	<div id="mainbodybottonauto" class="managebottonadd">
		<div class="maindobycontent">
			<!--查看已选择的类型-->
			<div class="suggestion">
				<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="colorgorningage"><?php echo $this->_tpl_vars['ST']['modelmanage_add_mess'] ?></span></span>
			</div>
			<div class="manageeditdiv">
				<div class="maneditcontent">
					<table class="formtable">
						<tr class="trstyle2">
							<td width="15%" class="trtitle011"><?php echo $this->_tpl_vars['ST']['modelmanage_add_modelname'] ?></td>
							<td width="85%" class="trtitle02"><input type="text" name="modelname" size="25" maxlength="20" class="infoInput"/> <span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_add_modelname_mess'] ?></span></td>
						</tr>
						<tr class="trstyle2">
							<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_pagemax'] ?></td>
							<td width="85%" class="trtitle02"><input type="text" name="pagemax" size="5" value="20" maxlength="2" class="infoInput"/> <span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_add_pagemax_mess'] ?></span></td>
						</tr>
						<tr class="trstyle2">
							<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_pagesylte'] ?></td>
							<td width="85%" class="trtitle02">
								<select size="1" name="pagesylte">
									<option selected value="1"><?php echo $this->_tpl_vars['ST']['modelmanage_add_pagesylte1'] ?></option>
									<option value="2"><?php echo $this->_tpl_vars['ST']['modelmanage_add_pagesylte2'] ?></option>
								</select>
							</td>
						</tr>
						<tr class="trstyle2">
							<td class="trtitle03" colspan="2"><?php echo $this->_tpl_vars['ST']['article_doc_tab_title03'] ?></td>
						</tr>
						<tr class="trstyle2">
							<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_listtitlestyle'] ?></td>
							<td class="trtitle02">
								<input type="text" name="listtitlestyle" size="30" maxlength="30" value="{typename}-{sitename}" class="infoInput"/>
								<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_add_listtitlestyle_mess'] ?></span>
							</td>
						</tr>
						<tr class="trstyle2">
							<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_readtitlestyle'] ?></td>
							<td class="trtitle02">
								<input type="text" name="readtitlestyle" size="30" maxlength="30" value="{title}-{typename}-{sitename}" class="infoInput"/>
								<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_add_readtitlestyle_mess'] ?></span>
							</td>
						</tr>
						<tr class="trstyle2">
							<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_isbase'] ?></td>
							<td width="85%" class="trtitle02">
								<input type="radio" value="1" name="isbase"> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
								<input type="radio" value="0" name="isbase" checked="checked"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
								<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_add_isbase_mess'] ?></span>
							</td>
						</tr>

						<tr class="trstyle2">
							<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_istsn'] ?></td>
							<td width="85%" class="trtitle02">
								<input type="radio" value="1" name="istsn" checked="checked"  onclick="showdiv(1,'#tsnstyle','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
								<input type="radio" value="0" name="istsn" onclick="showdiv(0,'#tsnstyle','0|1','trstyle2 displaynone|trstyle2 displaytrue',1,1)"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
								<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_add_istsn_mess'] ?></span>
							</td>
						</tr>
						<tr class="trstyle2"  id="tsnstyle">
							<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_tsnstyle'] ?></td>
							<td class="trtitle02">
								<input type="text" name="tsnstyle" size="30" maxlength="30" value="SN{datetime}{s}" class="infoInput"/>
								<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_add_tsnstyle_mess'] ?></span>
							</td>
						</tr>


						<tr class="trstyle2">
							<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_isalbum'] ?></td>
							<td width="85%" class="trtitle02">
								<input type="radio" value="1" name="isalbum" checked="checked"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
								<input type="radio" value="0" name="isalbum"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
								<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_add_isalbum_mess'] ?></span>
							</td>
						</tr>
						<tr class="trstyle2">
							<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_isextid'] ?></td>
							<td width="85%" class="trtitle02">
								<input type="radio" value="1" name="isextid" checked="checked"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
								<input type="radio" value="0" name="isextid"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
								<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_add_isextid_mess'] ?></span>
							</td>
						</tr>
						<tr class="trstyle2">
							<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_issid'] ?></td>
							<td width="85%" class="trtitle02">
								<input type="radio" value="1" name="issid" checked="checked"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
								<input type="radio" value="0" name="issid"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
								<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_add_issid_mess'] ?></span>
							</td>
						</tr>
						<tr class="trstyle2">
							<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_isfgid'] ?></td>
							<td width="85%" class="trtitle02">
								<input type="radio" value="1" name="isfgid" checked="checked"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
								<input type="radio" value="0" name="isfgid"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
								<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_add_isfgid_mess'] ?></span>
							</td>
						</tr>
						<tr class="trstyle2">
							<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_islinkdid'] ?></td>
							<td width="85%" class="trtitle02">
								<input type="radio" value="1" name="islinkdid" checked="checked"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
								<input type="radio" value="0" name="islinkdid"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
								<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_add_islinkdid_mess'] ?></span>
							</td>
						</tr>
						<tr class="trstyle2">
							<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_isorder'] ?></td>
							<td width="85%" class="trtitle02">
								<input type="radio" value="1" name="isorder" checked="checked" onclick="ondisplayother('opiddiv','trstyle2 displaytrue','opiddiv2','trstyle2 displaynone');"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
								<input type="radio" value="0" name="isorder" onclick="ondisplayother('opiddiv','trstyle2 displaynone','opiddiv2','trstyle2 displaytrue')"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
								<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_add_isorder_mess'] ?></span>
							</td>
						</tr>
						<tr class="trstyle2" id="opiddiv">
							<td class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_opid'] ?></td>
							<td class="trtitle02">
								<select name="opid" id="opid">
									<option selected value="0"><?php echo $this->_tpl_vars['ST']['modelmanage_add_opid_select'] ?></option>
									<?php if (count($this->_tpl_vars['payplug'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['payplug']); $i++){?>
									<option value="<?php echo $this->_tpl_vars['payplug'][$i]['opid'] ?>"><?php echo $this->_tpl_vars['payplug'][$i]['payname'] ?> <?php echo $this->_tpl_vars['ST']['ordermain_add_paytype_price'] ?><?php echo $this->_tpl_vars['payplug'][$i]['payis'] ?>%</option>
									<?php }} ?>
								</select>
							</td>
						</tr>
						<tr class="trstyle2">
							<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_ismessage'] ?></td>
							<td width="85%" class="trtitle02">
								<input type="radio" value="1" name="ismessage" checked="checked"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
								<input type="radio" value="0" name="ismessage"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
								<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_add_ismessage_mess'] ?></span>
							</td>
						</tr>
						<tr class="trstyle2">
							<td width="15%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['modelmanage_add_ispurview'] ?></td>
							<td width="85%" class="trtitle02">
								<input type="radio" value="1" name="ispurview" checked="checked"/> <?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>&nbsp;
								<input type="radio" value="0" name="ispurview"/> <?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>
								<span class="cautiontitle"><?php echo $this->_tpl_vars['ST']['modelmanage_add_ispurview_mess'] ?></span>
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
					<td id="right"><input type="submit" id="submitbotton" name="Submit" value="<?php echo $this->_tpl_vars['ST']['botton_add'] ?>" class="button orange" /></td>
					<td id="left" class="padding-left5"><input type="button" name="cancel" onClick="javascript:parent.onaletdoc();" value="<?php echo $this->_tpl_vars['ST']['botton_add_reset'] ?>" class="button orange" /></td>
				</tr>
			</table>
		</div>
	</div>
</form>
</body>

</html>


