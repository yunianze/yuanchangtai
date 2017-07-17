<?php /* 表单字段列表 */ ?>
<?php if($this->_tpl_vars['menutype'] == 'formattlist'){ ?>
<ul class="listbottonul" id="listbottonul">
	<?php if($this->powercheck('communicate','formattradd')==true ){ ?>
	<li class="menumain"><a class="addinfo" onclick="javascript:parent.onbotton('<?php echo $this->addslashes($this->_tpl_vars['ST']['formmain_attr_add'],'hc') ?>','index.php?archive=formmain&action=formattradd&fgid=<?php echo $this->_tpl_vars['fgid'] ?>&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),false,'addattr<?php echo $this->_tpl_vars['fgid'] ?>',self.frameElement.getAttribute('name'));" id="addattr<?php echo $this->_tpl_vars['fgid'] ?>" href="#body" title="<?php echo $this->_tpl_vars['ST']['formmain_attr_add'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['formmain_attr_add'] ?></a></li>
	<?php } ?>
	<li class="menumain"><a class="selectall" id="selectall" href="javascript:select_change(true,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['selAll_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['selAll_botton'] ?></a></li>
	<li class="menumain"><a id="bolt" href="#body" hidefocus="true" hidefocus="true"><?php echo $this->_tpl_vars['ST']['bolt_botton'] ?></a>
		<ul class="menulist">
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['user_type_botton'] ?></span>
				<ul>
					<li><a class="menunoclick" id="attrisclass0" href="#body" onclick="javascript:dbfilter('attrisclass','isclass',0,0,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['all_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['all_botton'] ?></a></li>
					<li><a class="menuclick" id="attrisclass1" href="#body" onclick="javascript:dbfilter('attrisclass','isclass',1,1,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['open_botton_title'] ?></a></li>
					<li><a class="menuclick" id="attrisclass2" href="#body" onclick="javascript:dbfilter('attrisclass','isclass',2,2,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['close_botton_title'] ?></a></li>
				</ul>
			</li>
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_add_isvalidate'] ?></span>
				<ul>
					<li><a class="menunoclick" id="attisvalidate0" href="#body" onclick="javascript:dbfilter('attisvalidate','isvalidate',0,0,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['all_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['all_botton'] ?></a></li>
					<li><a class="menuclick" id="attisvalidate1" href="#body" onclick="javascript:dbfilter('attisvalidate','isvalidate',1,1,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['open_botton_title'] ?></a></li>
					<li><a class="menuclick" id="attisvalidate2" href="#body" onclick="javascript:dbfilter('attisvalidate','isvalidate',2,2,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['close_botton_title'] ?></a></li>
				</ul>
			</li>
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['formmain_attr_add_isline'] ?></span>
				<ul>
					<li><a class="menunoclick" id="memattisline0" href="#body" onclick="javascript:dbfilter('memattisline','isline',0,0,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['all_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['all_botton'] ?></a></li>
					<li><a class="menuclick" id="memattisline1" href="#body" onclick="javascript:dbfilter('memattisline','isline',1,1,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['is_yes'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['is_yes'] ?></a></li>
					<li><a class="menuclick" id="memattisline2" href="#body" onclick="javascript:dbfilter('memattisline','isline',2,2,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['is_no'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['is_no'] ?></a></li>
				</ul>
			</li>
		</ul>
	</li>
	<?php if($this->powercheck('communicate','delformattr')==true ){ ?>
	<li class="menumain"><a id="del" onclick="javascript:callrun('index.php?archive=formmain&action=delformattr','attrselectinfoid',false,null,null,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['del_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" href="#body" hidefocus="true"><?php echo $this->_tpl_vars['ST']['del_botton'] ?></a></li>
	<?php } ?>
	<?php if($this->powercheck('communicate','formattredit')==true ){ ?>
	<li class="menumain"><a id="sortall" onclick="javascript:sortinput('index.php?archive=formmain&action=attrsort','index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['sort_messok'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" href="#body" hidefocus="true"><?php echo $this->_tpl_vars['ST']['pid_botton'] ?></a></li>
	<?php } ?>
	<li class="menumain"><a id="refresh" href="#body" onclick="javascript:refresh('selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['refresh_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['refresh_botton'] ?></a></li>
	<?php if($this->powercheck('communicate','formattredit')==true ){ ?>
	<li class="menumain"><a id="setbotton" href="#body" hidefocus="true" title="<?php echo $this->_tpl_vars['ST']['set_botton'] ?>"><?php echo $this->_tpl_vars['ST']['set_botton'] ?></a>
		<ul class="menulist">
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['user_type_set_botton'] ?></span>
				<ul>
					<li><a class="menuclick" href="#body" onclick="javascript:callrun('index.php?archive=formmain&action=attrsetting','attrselectinfoid',true,'isclass',1,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['update_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['open_botton_title'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['open_botton_title'] ?></a></li>
					<li><a class="menuclick" href="#body" onclick="javascript:callrun('index.php?archive=formmain&action=attrsetting','attrselectinfoid',true,'isclass',0,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['update_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['close_botton_title'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['close_botton_title'] ?></a></li>
				</ul>
			</li>
		</ul>
	</li>
	<?php } ?>
</ul>
<?php } ?>      