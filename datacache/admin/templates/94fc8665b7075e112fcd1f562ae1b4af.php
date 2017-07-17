<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $this->_tpl_vars['softtitle'] ?></title>
<link href="templates/css/baselist.css" rel="stylesheet" type="text/css" />
<link href="templates/css/all.css" rel="stylesheet" type="text/css" />
<link href="templates/css/formdiv.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/control.js"></script>
<script type="text/javascript" src="js/form.js"></script>
<script type="text/javascript" src="js/pagebotton.js"></script>
<script type="text/javascript" language="JavaScript">
	var article_search_js_sid_err  = "<?php echo $this->_tpl_vars['ST']['article_search_js_sid_err'] ?>";
	var article_search_js_searchkey_err  = "<?php echo $this->_tpl_vars['ST']['article_search_js_searchkey_err'] ?>";
	var ordermain_infolist_js_selecterr  = "<?php echo $this->_tpl_vars['ST']['ordermain_infolist_js_selecterr'] ?>";
	var ordermain_infolist_js_selecterr_max  = "<?php echo $this->_tpl_vars['ST']['ordermain_infolist_js_selecterr_max'] ?>";
	var select_no  = "<?php echo $this->_tpl_vars['ST']['select_no'] ?>";
	var inputtext  = "<?php echo $this->_tpl_vars['inputtext'] ?>";
	var iframename = "<?php echo $this->_tpl_vars['iframename'] ?>";
	var checkfrom="<?php echo $this->_tpl_vars['checkfrom'] ?>";
	var getbyid="<?php echo $this->_tpl_vars['getbyid'] ?>";
	var digheight="<?php echo $this->_tpl_vars['digheight'] ?>";
	var lng="<?php echo $this->_tpl_vars['lng'] ?>";
	var selectmax=Number(<?php echo $this->_tpl_vars['max'] ?>);

	$(document).ready(function(){
		var h = parseInt(digheight);
		$("#mainnextbody").hide();
		$("#selectbotton").hide();
		$("#selectbotton2").hide();
		$("#listitle").hide();
		$('.ordersearchdiv').css({height:h-35});
		var options = {
			beforeSubmit: formverify,
			success:function(){
				return false;
			}
		}
		$('#docsearch').submit(function() {
			$(this).ajaxSubmit(options);
			return false;
		});
	})
	function formverify(formData, jqForm, options) {
		var queryString = $.param(formData);
		var get=urlarray(queryString);
		if(get['searchkey']!=""){
			if(get['searchkey'].match(/[\'\"\<\>\,\;\^\$\(\)\!\.]+/ig)!=null) {
				document.docsearch.searchkey.focus();
				alert(article_search_js_searchkey_err);
				return false;
			}
		}
		if (get['mid']==0){
			document.docsearch.mid.focus();
			alert(article_search_js_sid_err);
			return false;
		}
		var esarchurl="index.php?archive=article&action=articlelist&lng="+lng+"&mid="+get['mid']+"&aid=&tid="+get['tid']
			+"&sid="+get['sid']+"&isclass="+get['isclass']+"&isbase=0&islink="+get['islink']+"&ismess=&isorder="+get['isorder']
			+"&purview=&limitkey=&limitclass=&eqid=1&ordersearch=true&serchekey="+encodeURI(get['searchkey']);
		articlesearch(esarchurl)
		return false;
	}
	function articlesearch(loadurl){
		$('#mainwindowhidden').removeClass().addClass('ordersearchdiv displaynone');
		$("#mainnextbody").show();
		$("#selectbotton").show();
		$("#selectbotton2").show();
		$("#listitle").show();
		var h = parseInt(digheight);

		var formlist=document.getElementById('selectform');
		var loadurl=loadurl;
		var maxperpage=formlist.elements[1].value;
		var maxhit=formlist.elements[2].value;
		var nowpage=formlist.elements[3].value;
		var loadname=formlist.elements[6].value;
		var pagetextname=formlist.elements[7].value;
		var pagebottonname=formlist.elements[8].value;
		formlist.elements[0].value = loadurl;
		pageDimensions(h,maxperpage,maxhit,nowpage,loadurl,loadname,pagetextname,pagebottonname,'selectform');
	}
	function reselect(){
		$('#mainwindowhidden').removeClass().addClass('ordersearchdiv displaytrue');
		$("#mainnextbody").hide();
		$("#selectbotton").hide();
		$("#selectbotton2").hide();
		$("#listitle").hide();
	}
	function selectback() {
		var str=document.getElementsByName("articleselectinfoid");
		var objarray=str.length;
		var chestr="";
		for (i=0;i<objarray;i++) {
			if(str[i].checked == true) {
				chestr+=str[i].value+",";
			}
		}
		if (selectmax>0){
			chestr=chestr.substring(0,chestr.length-1);
			var chestrnum = chestr.split(',');
			if ( chestrnum.length>selectmax) {
				alert(ordermain_infolist_js_selecterr_max);
				return false;
			}
		}

		if (count_checked_items('selectform')>0){
			fnupdate(chestr);
		}else{
			alert(ordermain_infolist_js_selecterr);
			$('#mainwindowhidden').removeClass().addClass('ordersearchdiv displaytrue');
			$("#mainnextbody").hide();
			$("#selectbotton").hide();
			$("#selectbotton2").hide();
			$("#listitle").hide();
			return false;
		}
	}
	function fnupdate(chestr){
		if (checkfrom=='input'){
			checkinput(chestr);
		}else if(checkfrom=='function'){
			functionshow(chestr,inputtext,getbyid);
		}else if(checkfrom=='orderadd'){
			orderadd(chestr);
		}else if(checkfrom=='orderedit'){
			orderedit(chestr);
		}
	}
	function orderedit(chestr){
		parent.frames[iframename].articlelist(chestr);
		parent.closeifram();
	}
	function orderadd(chestr){
		parent.frames[iframename].goodsadd(chestr);
		parent.closeifram();
	}
	function checkinput(chestr){
		parent.frames[iframename].document.getElementById(inputtext).value = chestr;
		parent.closeifram();
	}
	function functionshow(chestr,inputtext,getbyid){
		parent.frames[iframename].addinfolist(chestr,inputtext,getbyid);
		parent.closeifram();
	}
	function searchoption(mid,title){
		selectlinkagelng('tid','index.php?archive=connected&action=sctypelist&isbase=0&islinkd=1&optiontitle='+title+'&mid='+mid+'&lng='+lng);
		selectlinkagelng('sid','index.php?archive=connected&action=scsublist&optiontitle='+title+'&mid='+mid+'&lng='+lng);
	}
</script>
</head>
<body class="bodyflow">
<div class="centerrightwindow">
	<div id="mainwindowhidden" class="ordersearchdiv displaytrue">
		<div class="suggestion">
			<span class="sugicon"><span class="strong colorgorning2"><?php echo $this->_tpl_vars['ST']['position_title'] ?></span><span class="padding-left5 colorgorningage"><?php echo $this->_tpl_vars['ST']['article_search_title'] ?></span></span>
		</div>
		<div class="sugtitle-line"></div>
		<div class="formdiv" id="searchmanger">
			<form name="docsearch" id="docsearch" method="post" action="#body">
			<input type="hidden" value="1" name="isclass"/>
			<?php if($this->_tpl_vars['inputtext']=='order'){ ?>
			<input type="hidden" value="1" name="isorder"/>
			<?php }else{ ?>
			<input type="hidden" value="0" name="isorder"/>
			<?php } ?>
			<input type="hidden" value="2" name="islink"/>
			<table class="formtable">
				<tr class="trstyle2">
					<td width="20%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['article_search_keyword'] ?></td>
					<td width="80%" class="trtitle02"><input type="text" name="searchkey" size="30" maxlength="30" class="infoInput"/></td>
				</tr>
				<tr class="trstyle2">
					<td width="20%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['recommanage_type_add_mid'] ?></td>
					<td width="80%" class="trtitle02">
						<select size="1" name="mid" id="mid" onchange="javascript:searchoption(this.value,'<?php echo $this->escape($this->_tpl_vars['ST']['all_botton'],'url') ?>')">
							<option value="0"><?php echo $this->_tpl_vars['ST']['recommanage_type_add_mid_option'] ?></option>
							<?php if (count($this->_tpl_vars['modelarray'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['modelarray']); $list++){?>
							<option <?php echo $this->_tpl_vars['modelarray'][$list]['selected'] ?> value="<?php echo $this->_tpl_vars['modelarray'][$list]['mid'] ?>"><?php echo $this->_tpl_vars['modelarray'][$list]['modelname'] ?></option>
							<?php }} ?>
						</select>
					</td>
				</tr>
				<tr class="trstyle2">
					<td width="20%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['article_doc_add_tid'] ?></td>
					<td width="80%" class="trtitle02">
						<select size="1" name="tid" id="tid">
							<option selected="selected" value="0"><?php echo $this->_tpl_vars['ST']['all_botton'] ?></option>
							<?php if (count($this->_tpl_vars['typelist'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['typelist']); $list++){?>
							<option <?php echo $this->_tpl_vars['typelist'][$list]['selected'] ?> value="<?php echo $this->_tpl_vars['typelist'][$list]['tid'] ?>"><?php if($this->_tpl_vars['typelist'][$list]['level']>0){ ?>├<?php } ?><?php echo $this->treelist($this->_tpl_vars['typelist'][$list]['level'],'─') ?><?php echo $this->_tpl_vars['typelist'][$list]['typename'] ?></option>
							<?php }} ?>
						</select>
					</td>
				</tr>
				<tr class="trstyle2">
					<td width="20%" class="trtitle01"><?php echo $this->_tpl_vars['ST']['article_doc_add_sid'] ?></td>
					<td width="80%" class="trtitle02">
						<select size="1" name="sid" id="sid">
							<option selected="selected" value="0"><?php echo $this->_tpl_vars['ST']['all_botton'] ?></option>
							<?php if (count($this->_tpl_vars['subjectlistarray'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['subjectlistarray']); $list++){?>
							<option value="<?php echo $this->_tpl_vars['subjectlistarray'][$list]['sid'] ?>"><?php echo $this->_tpl_vars['subjectlistarray'][$list]['subjectname'] ?></option>
							<?php }} ?>
						</select>
					</td>
				</tr>
				<tr class="trstyle2">
					<td width="20%" class="trtitle01"></td>
					<td width="80%" class="trtitle02"><input type="submit" name="Submit" id="submitbotton" value="<?php echo $this->_tpl_vars['ST']['botton_search'] ?>" class="button orange" title="<?php echo $this->_tpl_vars['ST']['botton_search'] ?>"/></td>
				</tr>
			</table>
			</form>
		</div>
	</div>
	<div id="mainnextbody" class="ordersearchdiv tabnextlist">
		<form name="selectform" id="selectform" method="post">
		<input type="hidden" name="loadurl" id="loadurl" value="">
		<input type="hidden" name="maxperpage" id="maxperpage" value="20">
		<input type="hidden" name="maxhit" id="maxhit" value="4">
		<input type="hidden" name="nowpage" id="nowpage" value="0">
		<input type="hidden" name="limitkey" id="limitkey" value="">
		<input type="hidden" name="limitclass" id="limitclass" value="">
		<input type="hidden" name="loadname" id="loadname" value="#articleloading">
		<input type="hidden" name="pagetextname" id="pagetextname" value="#pageinfo3">
		<input type="hidden" name="pagebottonname" id="pagebottonname" value="#Pagination3">
		<div class="loadingdiv" id="articleloading"></div>
		</form>
	</div>

	<div class="pagelistdiv">
		<div class="pageinfotext displaynone" id="pageinfo3"></div>
		<div id="selectbotton" class="pageinfotext" style="padding-top:5px;"><input type="reset" name="reset" onClick="javascript:selectback();" id="release" value="<?php echo $this->_tpl_vars['ST']['botton_add'] ?>" class="button orange"  title="<?php echo $this->_tpl_vars['ST']['botton_add'] ?>" /></div>
		<div id="selectbotton2" class="pageinfotext" style="padding-top:5px;"><input type="reset" name="reset" onClick="javascript:reselect();" value="<?php echo $this->_tpl_vars['ST']['botton_reselect'] ?>" class="button orange"  title="<?php echo $this->_tpl_vars['ST']['botton_reselect'] ?>" /></div>
		<div class="pagebottonlist" id="pagebotton"><span id="Pagination3" class="pagination"></span></div>
	</div>
</div>
</body>
</html>