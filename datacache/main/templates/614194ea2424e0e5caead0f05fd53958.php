<div class="location">
<a href="<?php echo $this->_tpl_vars['homelink'] ?>" style="background:url('<?php echo $this->_tpl_vars['rootpath'] ?>images/home.png') no-repeat left center;padding-left:20px;">Home</a>
<?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
	> <a href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>"><?php echo $this->_tpl_vars['array'][$i]['title'] ?></a>
<?php }} ?>
</div>