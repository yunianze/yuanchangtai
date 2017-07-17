<?php /* 内链接列表 */ ?>
<?php if($this->_tpl_vars['menutype'] == 'seolinklist'){ ?>
<ul class="listbottonul" id="listbottonul">
	<?php if($this->powercheck('article','keylinkadd')==true ){ ?>
	<?php if($this->_tpl_vars['tabarray']['mid']!=''){ ?>
	<li class="menumain"><a id="addinfo" class="addinfo" onclick="javascript:parent.onbotton('<?php echo $this->addslashes($this->_tpl_vars['ST']['botton_add_seolink'],'hc') ?>','index.php?archive=seomanage&action=keylinkadd&tid=<?php echo $this->_tpl_vars['tabarray']['tid'] ?>&mid=<?php echo $this->_tpl_vars['tabarray']['mid'] ?>&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),false,'addinfo',self.frameElement.getAttribute('name'));"  href="#body" title="<?php echo $this->_tpl_vars['ST']['botton_add_seolink'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['botton_add_seolink'] ?></a></li>
	<?php }else{ ?>
	<li class="menumain"><a id="addinfo" class="addinfo" onclick="javascript:alert('<?php echo $this->_tpl_vars['ST']['article_js_doc_add_midtidnoselect'] ?>');return false;"  href="#body" title="<?php echo $this->_tpl_vars['ST']['botton_add_seolink'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['botton_add_seolink'] ?></a></li>
	<?php } ?>
	<?php } ?>

	<li class="menumain"><a id="selectall" class="selectall" href="javascript:select_change(true,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['selAll_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['selAll_botton'] ?></a></li>
	<li class="menumain"><a id="bolt" href="#body" hidefocus="true" hidefocus="true"><?php echo $this->_tpl_vars['ST']['bolt_botton'] ?></a>
		<ul class="menulist">
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['seomanage_text_islink'] ?></span>
				<ul>
					<li><a class="menunoclick" id="islink0" href="#body" onclick="javascript:dbfilter('islink','islink',0,0,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['all_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['all_botton'] ?></a></li>
					<li><a class="menuclick" id="islink1" href="#body" onclick="javascript:dbfilter('islink','islink',1,1,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['seomanage_islink_ok'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['seomanage_islink_ok'] ?></a></li>
					<li><a class="menuclick" id="islink2" href="#body" onclick="javascript:dbfilter('islink','islink',2,2,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['seomanage_islink_no'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['seomanage_islink_no'] ?></a></li>
				</ul>
			</li>
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['seomanage_text_class'] ?></span>
				<ul>
					<li><a class="menunoclick" id="istop0" href="#body" onclick="javascript:dbfilter('istop','istop',0,0,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['all_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['all_botton'] ?></a></li>
					<li><a class="menuclick" id="istop1" href="#body" onclick="javascript:dbfilter('istop','istop',1,1,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['seomanage_audit_ok'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['seomanage_audit_ok'] ?></a></li>
					<li><a class="menuclick" id="istop2" href="#body" onclick="javascript:dbfilter('istop','istop',2,2,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['seomanage_audit_no'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['seomanage_audit_no'] ?></a></li>
				</ul>
			</li>
		</ul>
	</li>
	<?php if($this->powercheck('article','delkey')==true ){ ?>
	<li class="menumain"><a id="del" onclick="javascript:callrun('index.php?archive=seomanage&action=delkey','selectinfoid',false,null,null,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['del_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" href="#body" hidefocus="true"><?php echo $this->_tpl_vars['ST']['del_botton'] ?></a></li>
	<?php } ?>
	<?php if($this->powercheck('article','keylinkedit')==true ){ ?>
	<li class="menumain"><a id="sortall" onclick="javascript:sortinput('index.php?archive=seomanage&action=keysort','index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['sort_messok'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" href="#body" hidefocus="true"><?php echo $this->_tpl_vars['ST']['pid_botton'] ?></a></li>
	<?php } ?>
	<li class="menumain"><a id="refresh" href="#body" onclick="javascript:refresh('selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['refresh_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['refresh_botton'] ?></a></li>
	<?php if($this->powercheck('article','keylinkedit')==true ){ ?>
	<li class="menumain"><a id="setbotton" href="#body" hidefocus="true" title="<?php echo $this->_tpl_vars['ST']['set_botton'] ?>"><?php echo $this->_tpl_vars['ST']['set_botton'] ?></a>
		<ul class="menulist">
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['seomanage_text_islink'] ?></span>
				<ul>
					<li><a class="menuclick" href="#body" onclick="javascript:callrun('index.php?archive=seomanage&action=setting','selectinfoid',true,'islink',1,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['update_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['seomanage_islink_ok'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['seomanage_islink_ok'] ?></a></li>
					<li><a class="menuclick" href="#body" onclick="javascript:callrun('index.php?archive=seomanage&action=setting','selectinfoid',true,'islink',0,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['update_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['seomanage_islink_no'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['seomanage_islink_no'] ?></a></li>
				</ul>
			</li>
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['seomanage_text_class'] ?></span>
				<ul>
					<li><a class="menuclick" href="#body" onclick="javascript:callrun('index.php?archive=seomanage&action=setting','selectinfoid',true,'istop',1,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['update_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['seomanage_audit_ok'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['seomanage_audit_ok'] ?></a></li>
					<li><a class="menuclick" href="#body" onclick="javascript:callrun('index.php?archive=seomanage&action=setting','selectinfoid',true,'istop',0,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['update_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['seomanage_audit_no'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['seomanage_audit_no'] ?></a></li>
				</ul>
			</li>
		</ul>
	</li>
	<?php } ?>
</ul>
<?php } ?>      