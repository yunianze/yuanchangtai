<?php /* 文件管理 */ ?>
<?php if($this->_tpl_vars['menutype'] == 'fileadminlist'){ ?>
<ul class="listbottonul" id="listbottonul">
	<?php if($this->powercheck('communicate','mkdir')==true ){ ?>
	<li class="menumain"><a id="addinfo" class="addinfo" onclick="javascript:parent.onbotton('<?php echo $this->addslashes($this->_tpl_vars['ST']['creatfile_botton'],'hc') ?>', 'index.php?archive=filemain&action=mkdir&path=' + escape(document.getElementById('filepath').value) + '&freshid=' + Math.random() + '&iframename=' + self.frameElement.getAttribute('name'), true, 'addinfo', self.frameElement.getAttribute('name'));"  href="#body" title="<?php echo $this->_tpl_vars['ST']['creatfile_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['creatfile_botton'] ?></a></li>
	<?php } ?>
	<li class="menumain"><a id="refreshfile" class="dbupdatefile" onclick="javascript:sortinput('index.php?archive=filemain&action=refreshfiledb&dirlist=' + escape(document.getElementById('filepath').value), 'index.php?archive=management&action=load', '<?php echo $this->_tpl_vars['ST']['update_filemessok'] ?>', true, '<?php echo $this->_tpl_vars['ST']['run_ok'] ?>', '<?php echo $this->_tpl_vars['ST']['run_no'] ?>', 'selectform', 'selectall', 'check_all', 'selectinfoid', 'selectinfoid');" href="#body" title="<?php echo $this->_tpl_vars['ST']['refreshfile_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['refreshfile_botton'] ?></a></li>

	<?php if($this->powercheck('communicate','upfile')==true ){ ?>
	<li class="menumain"><a id="upfiledir" class="dbupfilebotton" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['imgupload_botton'] ?>', 'iframe:index.php?archive=filemanage&action=filewindow&listfunction=filelist&filetype=img&isgetback=1&checkfrom=list&path=' + escape(document.getElementById('filepath').value) + '&iframename=' + self.frameElement.getAttribute('name'), '900px', '480px', 'iframe')" href="#body" title="<?php echo $this->_tpl_vars['ST']['imgupload_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['imgupload_botton'] ?></a></li>
	<li class="menumain"><a id="upfiledir" class="dbupfilebotton" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['fileupload_botton'] ?>', 'iframe:index.php?archive=filemanage&action=filewindow&listfunction=filelist&filetype=file&isgetback=1&checkfrom=list&path=' + escape(document.getElementById('filepath').value) + '&iframename=' + self.frameElement.getAttribute('name'), '900px', '480px', 'iframe')" href="#body" title="<?php echo $this->_tpl_vars['ST']['fileupload_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['fileupload_botton'] ?></a></li>
	<li class="menumain"><a id="upfiledir" class="dbupfilebotton" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['movieupload_botton'] ?>', 'iframe:index.php?archive=filemanage&action=filewindow&listfunction=filelist&filetype=mover&isgetback=1&checkfrom=list&path=' + escape(document.getElementById('filepath').value) + '&iframename=' + self.frameElement.getAttribute('name'), '900px', '480px', 'iframe')" href="#body" title="<?php echo $this->_tpl_vars['ST']['movieupload_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['movieupload_botton'] ?></a></li>
	<?php } ?>
	<li class="menumain"><a id="selectall" class="selectall" href="javascript:select_change(true,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['selAll_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['selAll_botton'] ?></a></li>
	<?php if($this->powercheck('communicate','delfile')==true ){ ?>
	<li class="menumain"><a id="del" onclick="javascript:delfile('index.php?archive=filemain&action=delfile', 'selectinfoid', false, null, null, 'index.php?archive=management&action=load', '<?php echo $this->_tpl_vars['ST']['del_messok'] ?>', '<?php echo $this->_tpl_vars['ST']['select_no'] ?>', true, '<?php echo $this->_tpl_vars['ST']['run_ok'] ?>', '<?php echo $this->_tpl_vars['ST']['run_no'] ?>', 'selectform', 'selectall', 'check_all', 'filepath');" href="#body" hidefocus="true"><?php echo $this->_tpl_vars['ST']['del_botton'] ?></a></li>
	<?php } ?>
	<li class="menumain"><a id="refresh" href="#body" onclick="javascript:refresh('selectform', 'selectall', 'check_all');" title="<?php echo $this->_tpl_vars['ST']['refresh_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['refresh_botton'] ?></a></li>
</ul>
<?php } ?>