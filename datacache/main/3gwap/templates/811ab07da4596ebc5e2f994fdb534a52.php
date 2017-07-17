214adb21252b0af7b03s214s9typelist|utid:$<?php echo $this->_tpl_vars['type']['tid'] ?>,tid:<?php echo $this->_tpl_vars['type']['tid'] ?>|||60af7b03s21fs 
<?php if(count( $this->_tpl_vars['array'] ) > 0 ){ ?>
<div id="secNav">
    <h1 class="close"><?php echo $this->_tpl_vars['uptypeview']['typename'] ?></h1>
    <ul>
        <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
        <li><a <?php if($this->_tpl_vars['array'][$i]['selected']==1 ){ ?>class="hover" <?php } ?> href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>"><?php echo $this->_tpl_vars['array'][$i]['typename'] ?></a></li>
        <?php }} ?>
    </ul>
</div>
<?php } ?>
214adb21252b0af7b03s214s9