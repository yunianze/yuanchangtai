<?php /* 表单留言列表 */ ?>
<?php if($this->_tpl_vars['menutype'] == 'messlist'){ ?>
<ul class="listbottonul" id="listbottonul">
	<li class="menumain"><a id="selectall" class="selectall" href="javascript:select_change(true,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['selAll_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['selAll_botton'] ?></a></li>
	<li class="menumain"><a id="bolt" href="#body" hidefocus="true" hidefocus="true"><?php echo $this->_tpl_vars['ST']['bolt_botton'] ?></a>
		<ul class="menulist">
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['formmessmain_isreply_botton'] ?></span>
				<ul>
					<li><a class="menunoclick" id="isreply0" href="#body" onclick="javascript:dbfilter('isreply','isreply',0,0,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['all_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['all_botton'] ?></a></li>
					<li><a class="menuclick" id="isreply1" href="#body" onclick="javascript:dbfilter('isreply','isreply',1,1,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['formmessmain_isreply_botton1'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['formmessmain_isreply_botton1'] ?></a></li>
					<li><a class="menuclick" id="isreply2" href="#body" onclick="javascript:dbfilter('isreply','isreply',2,2,3,'selectform','selectall','check_all')" title="<?php echo $this->_tpl_vars['ST']['formmessmain_isreply_botton2'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['formmessmain_isreply_botton2'] ?></a></li>
				</ul>
			</li>
			<li><a class="menuclick" id="articleisorder0" href="#body" onclick="javascript:refreshurl('index.php?archive=formmessmain&action=messlist&&fgid=&isclass=&isreply=&limitkey=&limitclass=','selectform')" title="<?php echo $this->_tpl_vars['ST']['all_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['getalllist_botton'] ?></a></li>
		</ul>
	</li>
	<?php if($this->powercheck('communicate','formmessagedel')==true){ ?>
	<li class="menumain"><a id="del" onclick="javascript:callrun('index.php?archive=formmessmain&action=formmessagedel','messselectinfoid',false,null,null,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['del_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" href="#body" hidefocus="true"><?php echo $this->_tpl_vars['ST']['del_botton'] ?></a></li>
	<?php } ?>
	<li class="menumain"><a id="refresh" href="#body" onclick="javascript:refresh('selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['refresh_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['refresh_botton'] ?></a></li>
	<li class="menumain"><a id="setbotton" href="#body" hidefocus="true" title="<?php echo $this->_tpl_vars['ST']['set_botton'] ?>"><?php echo $this->_tpl_vars['ST']['set_botton'] ?></a>
		<ul class="menulist">
			<li><span class="menufont"><?php echo $this->_tpl_vars['ST']['formmessmain_isreply_botton'] ?></span>
				<ul>
					<li><a class="menuclick" href="#body" onclick="javascript:callrun('index.php?archive=formmessmain&action=setting','messselectinfoid',true,'isreply',1,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['update_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['formmessmain_isreply_botton1'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['formmessmain_isreply_botton1'] ?></a></li>
					<li><a class="menuclick" href="#body" onclick="javascript:callrun('index.php?archive=formmessmain&action=setting','messselectinfoid',true,'isreply',0,'index.php?archive=management&action=load','<?php echo $this->_tpl_vars['ST']['update_messok'] ?>','<?php echo $this->_tpl_vars['ST']['select_no'] ?>',true,'<?php echo $this->_tpl_vars['ST']['run_ok'] ?>','<?php echo $this->_tpl_vars['ST']['run_no'] ?>','selectform','selectall','check_all');" title="<?php echo $this->_tpl_vars['ST']['formmessmain_isreply_botton2'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['formmessmain_isreply_botton2'] ?></a></li>
				</ul>
			</li>
		</ul>
	</li>
</ul>
<?php } ?>
      