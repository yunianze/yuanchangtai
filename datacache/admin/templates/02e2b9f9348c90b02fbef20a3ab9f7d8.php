<?php /* 管理员列表 */ ?>
<?php if($this->_tpl_vars['menutype'] == 'mangerlist'){ ?>
<ul class="listbottonul" id="listbottonul">
	<?php if($this->powercheck('system','manageradd')==true ){ ?>
	<li class="menumain"><a id="addinfo" class="addinfo" onclick="javascript:parent.onbotton('<?php echo $this->addslashes($this->_tpl_vars['ST']['botton_add_manageradd'],'hc') ?>','index.php?archive=management&action=manageradd&tab=true&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),false,'addinfo',self.frameElement.getAttribute('name'));"  href="#body" title="<?php echo $this->_tpl_vars['ST']['botton_add_group'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['botton_add_manageradd'] ?></a></li>
	<?php } ?>
	<li class="menumain"><a id="selectall" class="selectall" href="javascript:select_change(true,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['selAll_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['selAll_botton'] ?></a></li>
	<li class="menumain"><a id="bolt" href="#body" hidefocus="true" hidefocus="true"><?php echo $this->_tpl_vars['ST']['bolt_botton'] ?></a>
		<ul class="menulist">
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['mangerlist_user_type'] ?></span>
				<ul>
					<li><a class="menunoclick" id="isclass0" href="#body" onclick="javascript:dbfilter('isclass','isclass',0,0,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['all_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['all_botton'] ?></a></li>
					<li><a class="menuclick" id="isclass1" href="#body" onclick="javascript:dbfilter('isclass','isclass',1,1,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['mangerlist_audit_ok'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['mangerlist_audit_ok'] ?></a></li>
					<li><a class="menuclick" id="isclass2" href="#body" onclick="javascript:dbfilter('isclass','isclass',2,2,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['mangerlist_audit_no'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['mangerlist_audit_no'] ?></a></li>
				</ul>
			</li>
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['inputtype_botton'] ?></span>
				<ul>
					<li><a class="menunoclick" id="inputclassid0" href="#body" onclick="javascript:dbfilter('inputclassid','inputclassid',0,0,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['all_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['all_botton'] ?></a></li>
					<li><a class="menuclick" id="inputclassid1" href="#body" onclick="javascript:dbfilter('inputclassid','inputclassid',1,1,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['input1_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['input1_botton'] ?></a></li>
					<li><a class="menuclick" id="inputclassid2" href="#body" onclick="javascript:dbfilter('inputclassid','inputclassid',2,2,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['input0_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['input0_botton'] ?></a></li>
				</ul>
			</li>
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['grouptype_botton'] ?></span>
				<ul>
					<li><a class="menunoclick" id="powergroup0" href="#body" onclick="javascript:dbfilter('powergroup','powergroup',0,0,<?php echo $this->_tpl_vars['powernum'] ?>,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['all_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['all_botton'] ?></a></li>
					<?php if (count($this->_tpl_vars['powerarray'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['powerarray']); $i++){?>
					<li><a class="menuclick" id="powergroup<?php echo $i+1 ?>" href="#body" onclick="javascript:dbfilter('powergroup','powergroup',<?php echo $this->_tpl_vars['powerarray'][$i]['id'] ?>,<?php echo $i+1 ?>,<?php echo $this->_tpl_vars['powernum'] ?>,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['powerarray'][$i]['powername'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['powerarray'][$i]['powername'] ?></a></li>
					<?php }} ?>
				</ul>
			</li>
		</ul>
	</li>
	<?php if($this->powercheck('system','delmanage')==true ){ ?>
	<li class="menumain"><a id="del" onclick="javascript:callrun('index.php?archive=management&action=delmanage','selectinfoid',false,null,null,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['del_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" href="#body" hidefocus="true"><?php echo $this->_tpl_vars['ST']['del_botton'] ?></a></li>
	<?php } ?>
	<li class="menumain"><a id="refresh" href="#body" onclick="javascript:refresh('selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['refresh_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['refresh_botton'] ?></a></li>
	<?php if($this->powercheck('system','manageedit')==true ){ ?>
	<li class="menumain"><a id="setbotton" href="#body" hidefocus="true" title="<?php echo $this->_tpl_vars['ST']['set_botton'] ?>"><?php echo $this->_tpl_vars['ST']['set_botton'] ?></a>
		<ul class="menulist">
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['mangerlist_user_type_set'] ?></span>
				<ul>
					<li><a class="menuclick" href="#body" onclick="javascript:callrun('index.php?archive=management&action=setting','selectinfoid',true,'isclass',1,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['update_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['mangerlist_audit_ok'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['mangerlist_audit_ok'] ?></a></li>
					<li><a class="menuclick" href="#body" onclick="javascript:callrun('index.php?archive=management&action=setting','selectinfoid',true,'isclass',0,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['update_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['mangerlist_audit_no'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['mangerlist_audit_no'] ?></a></li>
				</ul>
			</li>
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['input_set_botton'] ?></span>
				<ul>
					<li><a class="menuclick" href="#body" onclick="javascript:callrun('index.php?archive=management&action=setting','selectinfoid',true,'inputclassid',1,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['update_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['input1_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['input1_botton'] ?></a></li>
					<li><a class="menuclick" href="#body" onclick="javascript:callrun('index.php?archive=management&action=setting','selectinfoid',true,'inputclassid',0,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['update_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['input0_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['input0_botton'] ?></a></li>
				</ul>
			</li>
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['group_set_botton'] ?></span>
				<ul>
					<?php if (count($this->_tpl_vars['powerarray'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['powerarray']); $i++){?>
					<li><a class="menuclick" href="#body" onclick="javascript:callrun('index.php?archive=management&action=setting','selectinfoid',true,'powergroup',<?php echo $this->_tpl_vars['powerarray'][$i]['id'] ?>,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['update_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['powerarray'][$i]['powername'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['powerarray'][$i]['powername'] ?></a></li>
					<?php }} ?>
				</ul>
			</li>
		</ul>
	</li>
	<?php } ?>
</ul>
<?php } ?>      