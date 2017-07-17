<?php /* 权限组列表 */ ?>
<?php if($this->_tpl_vars['menutype'] == 'grouplist'){ ?>
<ul class="listbottonul" id="listbottonul">
	<?php if($this->powercheck('system','groupadd')==true ){ ?>
	<li class="menumain"><a id="addinfo" class="addinfo" onclick="javascript:parent.onbotton('<?php echo $this->addslashes($this->_tpl_vars['ST']['botton_add_group'],'hc') ?>','index.php?archive=powergroup&action=groupadd&tab=true&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),false,'addinfo',self.frameElement.getAttribute('name'));"  href="#body" title="<?php echo $this->_tpl_vars['ST']['botton_add_group'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['botton_add_group'] ?></a></li>
	<?php } ?>
	<li class="menumain"><a id="selectall" class="selectall" href="javascript:select_change(true,'selectform','selectall','check_all')" hidefocus="true"><?php echo $this->_tpl_vars['ST']['selAll_botton'] ?></a></li>
	<li class="menumain"><a id="bolt" href="#body" hidefocus="true" hidefocus="true"><?php echo $this->_tpl_vars['ST']['bolt_botton'] ?></a>
		<ul class="menulist">
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['group_properties_botton'] ?></span>
				<ul>
					<li><a class="menunoclick" id="delclass0" href="#body" onclick="javascript:dbfilter('delclass','delclass',0,0,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['all_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['all_botton'] ?></a></li>
					<li><a class="menuclick" id="delclass1" href="#body" onclick="javascript:dbfilter('delclass','delclass',1,1,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['group_sys_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['group_sys_botton'] ?></a></li>
					<li><a class="menuclick" id="delclass2" href="#body" onclick="javascript:dbfilter('delclass','delclass',2,2,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['group_custom_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['group_custom_botton'] ?></a></li>
				</ul>
			</li>
		</ul>
	</li>
	<?php if($this->powercheck('system','delgroup')==true ){ ?>
	<li class="menumain"><a id="del" onclick="javascript:callrun('index.php?archive=powergroup&action=delgroup','selectinfoid',false,null,null,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['del_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" href="#body" hidefocus="true"><?php echo $this->_tpl_vars['ST']['del_botton'] ?></a></li>
	<?php } ?>
	<li class="menumain"><a id="refresh" href="#body" onclick="javascript:refresh('selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['refresh_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['refresh_botton'] ?></a></li>
</ul>
<?php } ?>      