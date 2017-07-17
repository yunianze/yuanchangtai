<?php /* 相册文件列表 */ ?>
<?php if($this->_tpl_vars['menutype'] == 'albumfilelist'){ ?>
<ul class="listbottonul" id="listbottonul">
	<?php if($this->powercheck('communicate','albumfileedit')==true ){ ?>
	<li class="menumain"><a class="addinfo" onclick="javascript:parent.onbotton('<?php echo $this->addslashes($this->_tpl_vars['ST']['albummain_add_log2'],'hc') ?>','index.php?archive=albummain&action=albumfileadd&amid=<?php echo $this->_tpl_vars['tabarray']['amid'] ?>&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),false,'addphoto<?php echo $this->_tpl_vars['tabarray']['amid'] ?>',self.frameElement.getAttribute('name'));" id="addphoto<?php echo $this->_tpl_vars['tabarray']['amid'] ?>"  href="#body" title="<?php echo $this->_tpl_vars['ST']['albummain_add_log2'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['albummain_add_log2'] ?></a></li>
	<?php } ?>
	<?php if($this->powercheck('communicate','albumfileedit')==true ){ ?>
	<li class="menumain"><a id="refreshfile" class="dbupdatefile" onclick="javascript:sortinput('index.php?archive=albummain&action=refreshphoto&amid=<?php echo $this->_tpl_vars['tabarray']['amid'] ?>', 'index.php?archive=management&action=load', '<?php echo $this->_tpl_vars['ST']['update_photomessok'] ?>', true, '<?php echo $this->_tpl_vars['ST']['run_ok'] ?>', '<?php echo $this->_tpl_vars['ST']['run_no'] ?>', 'selectform', 'selectall', 'check_all', 'selectinfoid', 'selectinfoid');" href="#body" title="<?php echo $this->_tpl_vars['ST']['albummain_botton_refreshphoth'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['albummain_botton_refreshphoth'] ?></a></li>
	<li class="menumain"><a id="upfiledir" class="dbupfilebotton" onclick="javascript:parent.windowsdig('<?php echo $this->_tpl_vars['ST']['imgupload_botton'] ?>', 'iframe:index.php?archive=filemanage&action=filewindow&listfunction=filelist&filetype=img&isgetback=2&checkfrom=list&amid=<?php echo $this->_tpl_vars['tabarray']['amid'] ?>&iframename=' + self.frameElement.getAttribute('name'), '900px', '480px', 'iframe')" href="#body" title="<?php echo $this->_tpl_vars['ST']['imgupload_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['imgupload_botton'] ?></a></li>
	<?php } ?>
	<li class="menumain"><a id="selectall" class="selectall" href="javascript:select_change(true,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['selAll_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['selAll_botton'] ?></a></li>
	<li class="menumain"><a id="bolt" href="#body" hidefocus="true" hidefocus="true"><?php echo $this->_tpl_vars['ST']['bolt_botton'] ?></a>
		<ul class="menulist">
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['seomanage_text_class'] ?></span>
				<ul>
					<li><a class="menunoclick" id="isrecomm0" href="#body" onclick="javascript:dbfilter('isrecomm','isrecomm',0,0,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['all_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['all_botton'] ?></a></li>
					<li><a class="menuclick" id="isrecomm1" href="#body" onclick="javascript:dbfilter('isrecomm','isrecomm',1,1,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['seomanage_audit_ok'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['seomanage_audit_ok'] ?></a></li>
					<li><a class="menuclick" id="isrecomm2" href="#body" onclick="javascript:dbfilter('isrecomm','isrecomm',2,2,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['seomanage_audit_no'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['seomanage_audit_no'] ?></a></li>
				</ul>
			</li>
		</ul>
	</li>
	<?php if($this->powercheck('communicate','albumfiledel')==true ){ ?>
	<li class="menumain"><a id="del" onclick="javascript:callrun('index.php?archive=albummain&action=albumfiledel','selectinfoid',false,null,null,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['del_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" href="#body" hidefocus="true"><?php echo $this->_tpl_vars['ST']['del_botton'] ?></a></li>
	<?php } ?>
	<?php if($this->powercheck('communicate','albumfileedit')==true ){ ?>
	<li class="menumain"><a id="sortall" onclick="javascript:sortinput('index.php?archive=albummain&action=sort','index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['sort_messok'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all','infoid','infopid');" href="#body" title="<?php echo $this->_tpl_vars['ST']['article_log_sort'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['pid_botton'] ?></a></li>
	<?php } ?>
	<li class="menumain"><a id="refresh" href="#body" onclick="javascript:refresh('selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['refresh_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['refresh_botton'] ?></a></li>
	<?php if($this->powercheck('communicate','albumfileedit')==true ){ ?>
	<li class="menumain"><a id="setbotton" href="#body" hidefocus="true" title="<?php echo $this->_tpl_vars['ST']['set_botton'] ?>"><?php echo $this->_tpl_vars['ST']['set_botton'] ?></a>
		<ul class="menulist">
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['seomanage_text_class'] ?></span>
				<ul>
					<li><a class="menuclick" href="#body" onclick="javascript:callrun('index.php?archive=albummain&action=filesetting','selectinfoid',true,'isrecomm',1,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['update_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['seomanage_audit_ok'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['seomanage_audit_ok'] ?></a></li>
					<li><a class="menuclick" href="#body" onclick="javascript:callrun('index.php?archive=albummain&action=filesetting','selectinfoid',true,'isrecomm',0,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['update_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['seomanage_audit_no'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['seomanage_audit_no'] ?></a></li>
				</ul>
			</li>
		</ul>
	</li>
	<?php } ?>
</ul>
<?php } ?>      