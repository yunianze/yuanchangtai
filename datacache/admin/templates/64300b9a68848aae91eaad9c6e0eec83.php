<?php if(count($this->_tpl_vars['array'])>0){ ?>
<ul>
	<?php if (count($this->_tpl_vars['array'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['array']); $list++){?>
		<li id="albumpic<?php echo $this->_tpl_vars['array'][$list]['afid'] ?>" onclick="alselected('albumpic<?php echo $this->_tpl_vars['array'][$list]['afid'] ?>','<?php echo $this->_tpl_vars['array'][$list]['fileallpath'] ?>','selected',<?php echo $this->_tpl_vars['array'][$list]['iswidth'] ?>);"><p><img src="<?php echo $this->_tpl_vars['adminurl'] ?><?php echo $this->_tpl_vars['array'][$list]['fileallpath'] ?>" <?php if($this->_tpl_vars['array'][$list]['iswidth']==1){ ?>width="100"<?php }else{ ?>height="100"<?php } ?>><span class="panel_checkbox">已选中</span></p></li>
	<?php }} ?>
</ul>
<?php }else{ ?>
<?php echo $this->_tpl_vars['ST']['filemanage_filecheck_select_fileno'] ?>
<?php } ?>      