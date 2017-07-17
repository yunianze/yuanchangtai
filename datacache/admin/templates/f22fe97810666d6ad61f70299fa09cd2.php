<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title><?php echo $this->_tpl_vars['softtitle'] ?></title>
<link href="templates/css/baselist.css" rel="stylesheet" type="text/css" />
<link href="templates/css/all.css" rel="stylesheet" type="text/css" />
<link href="templates/css/formdiv.css" rel="stylesheet" type="text/css"/>
<link href="templates/css/prettyPhoto.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/control.js"></script>
<script type="text/javascript" src="js/form.js"></script>
<script type="text/javascript" language="JavaScript">
	var filemanage_filecheck_select_allno = "<?php echo $this->_tpl_vars['ST']['filemanage_filecheck_select_allno'] ?>";
	var filemanage_filecheck_select_max = "<?php echo $this->_tpl_vars['ST']['filemanage_filecheck_select_max'] ?>";
	var filemanage_js_album_select_err = "<?php echo $this->_tpl_vars['ST']['filemanage_js_album_select_err'] ?>";
	var fheight="<?php echo $this->_tpl_vars['fheight'] ?>";
	var loadurl="<?php echo $this->_tpl_vars['loadurl'] ?>";
	$(document).ready(function(){
		var h = parseInt(fheight);
		$('#mainbodybottonauto').css({height:h-80});
		$("#fileloading").ajaxStart(function(){
			$(this).show();
		}).ajaxStop(function() {
			$(this).hide();
		});
	})
	function refile(){
		var albumlist=$('input:[name="albumlist"]').val();
		var albumiswidthlist=$('input:[name="albumiswidthlist"]').val();
		if(albumlist){
			filename=albumlist.substring(0,albumlist.length-1);
			iswidtharray=albumiswidthlist.substring(0,albumiswidthlist.length-1);
			parent.refile(filename,iswidtharray);
		}else{
			alert(filemanage_js_album_select_err);
			return false;
		}
	}
	function picload(amid){
		if (amid=='0') {
			$('#albumlist').html(filemanage_filecheck_select_allno);
			return false;
		}
		var loadingurl=loadurl + '&amid=' + amid + '&freshid=' + Math.random();
		$.get(loadingurl, function(data){
			$('#albumlist').html(data);
			var albumidlist=$('input:[name="albumidlist"]').val();
			if (albumidlist){
				var albumlist=$('input:[name="albumlist"]').val();
				var albumiswidthlist=$('input:[name="albumiswidthlist"]').val();
				var albumidarray = albumidlist.split('|');
				var albumarray = albumlist.split('|');
				var albumiswidtharray = albumiswidthlist.split('|');
				var gidstr=null;
				var htmlse=null;
				var htmlvol=null;
				for (var i = 0; i < albumidarray.length; i++){
					if (albumidarray[i]){
						gidstr="#"+albumidarray[i]+" .panel_checkbox";
						htmlvol=$("#"+albumidarray[i]).html();
						htmlse="<li id=\""+albumidarray[i]+"\" onclick=\"alselected('"+albumidarray[i]+"','"+albumarray[i]+"','undefined',"+albumiswidtharray[i]+");\">"+htmlvol+"</li>";
						$(htmlse).replaceAll("#"+albumidarray[i]);
						$(gidstr).show();
					}
				}
			}
		});
	}
	function alselected(gid,imgpath,setype,iswidth){
		var gidstr="#"+gid+" .panel_checkbox";
		var maxselect=$('input:[name="maxselect"]').val();
		var albumlist=$('input:[name="albumlist"]').val();
		var albumidlist=$('input:[name="albumidlist"]').val();
		var albumiswidthlist=$('input:[name="albumiswidthlist"]').val();
		var htmlvol=$("#"+gid).html();
		if (setype=='selected'){
			if (maxselect<1){
				alert(filemanage_filecheck_select_max);
				return false;
			}
			var htmlse="<li id=\""+gid+"\" onclick=\"alselected('"+gid+"','"+imgpath+"','undefined',"+iswidth+");\">"+htmlvol+"</li>";
			$(htmlse).replaceAll("#"+gid);
			$(gidstr).show();
			var nowid=Number(maxselect)-1;
			$('input:[name="maxselect"]').val(nowid);
			var albumlist=albumlist+imgpath+'|';
			$('input:[name="albumlist"]').val(albumlist);
			var albumidlist=albumidlist+gid+'|';
			$('input:[name="albumidlist"]').val(albumidlist);
			var albumiswidthlist=albumiswidthlist+iswidth+'|';
			$('input:[name="albumiswidthlist"]').val(albumiswidthlist);
		}else{
			var htmlse="<li id=\""+gid+"\" onclick=\"alselected('"+gid+"','"+imgpath+"','selected',"+iswidth+");\">"+htmlvol+"</li>";
			$(htmlse).replaceAll("#"+gid);
			$(gidstr).hide();
			var maxnowid=Number(maxselect)+1;
			$('input:[name="maxselect"]').val(maxnowid);
			var albumlist=albumlist.replace(imgpath+"|","");
			$('input:[name="albumlist"]').val(albumlist);
			var albumidlist=albumidlist.replace(gid+"|","");
			$('input:[name="albumidlist"]').val(albumidlist);
			var albumiswidthlist=albumiswidthlist.replace(iswidth+"|","");
			$('input:[name="albumiswidthlist"]').val(albumiswidthlist);
		}
	}
	document.oncontextmenu=new Function('event.returnValue=false;');
	document.onselectstart=new Function('event.returnValue=false;');
</script>
</head>
<body>
<input type="hidden" name="maxselect" value="<?php echo $this->_tpl_vars['maxselect'] ?>"/>
<input type="hidden" name="albumlist" value=""/>
<input type="hidden" name="albumidlist" value=""/>
<input type="hidden" name="albumiswidthlist" value=""/>
<div id="select" class="windowselecttop">
	<select size="1" name="lng" id="lng" onchange="javascript:selectlinkagelng('amidlist','index.php?archive=connected&action=albumarray&lng='+this.value)">
	<?php if (count($this->_tpl_vars['lnglist'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['lnglist']); $list++){?>
		<option <?php echo $this->_tpl_vars['lnglist'][$list]['selected'] ?> value="<?php echo $this->_tpl_vars['lnglist'][$list]['lng'] ?>"><?php echo $this->_tpl_vars['lnglist'][$list]['lngtitle'] ?></option>
	<?php }} ?>
	</select>
	<span id="amidlist">
	<select size="1" name="amid" id="amid"  onchange="picload(this.value)">
		<option value="0">请选择相册</option>
		<?php if (count($this->_tpl_vars['array'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['array']); $list++){?>
		<option value="<?php echo $this->_tpl_vars['array'][$list]['amid'] ?>"><?php echo $this->_tpl_vars['array'][$list]['title'] ?></option>
		<?php }} ?>
	</select>
	</span>
	<span id="fileloading" class="fileloading">相册正在加载中...</span>
</div>
<div id="mainbodybottonauto" class="managebottonadd">
	<div class="albumlist" id="albumlist"><?php echo $this->_tpl_vars['ST']['filemanage_filecheck_select_no'] ?></div>
</div>
<div id="downbotton" style="margin-top: 5px;">
	<div id="subbotton">
		<table border="0" width="100%">
			<tr id="bottonsubmit">
				<td id="right"><input type="submit" name="Submit" id="submitbotton" onclick="javascript:refile();" value="<?php echo $this->_tpl_vars['ST']['botton_add'] ?>" class="button orange" title="<?php echo $this->_tpl_vars['ST']['botton_add'] ?>"/></td>
				<td id="left" class="padding-left5"><input type="reset" name="reset" onclick="javascript:parent.resetwindow();" id="release" value="<?php echo $this->_tpl_vars['ST']['botton_upfile_reset'] ?>" class="button orange"  title="<?php echo $this->_tpl_vars['ST']['botton_upfile_reset'] ?>" /></td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>