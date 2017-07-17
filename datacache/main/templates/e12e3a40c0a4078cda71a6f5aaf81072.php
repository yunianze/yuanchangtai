<div class="left">
    214adb21252b0af7b03s214s9typelist|utid:<?php echo $this->_tpl_vars['type']['topid'] ?>,tid:<?php echo $this->_tpl_vars['type']['tid'] ?>|||60af7b03s21fs
    <div class="lBg"></div>
    <ul class="treeview">
        <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
        <li <?php if($this->_tpl_vars['array'][$i]['selected']==1 ){ ?>class="hover" <?php } ?> >
            <a href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>" title="<?php echo $this->_tpl_vars['array'][$i]['typename'] ?>" ><?php echo $this->_tpl_vars['array'][$i]['typename'] ?> </a> <?php if(count( $this->_tpl_vars['array'][$i]['childArray'] ) > 0 ){ ?>
            <ul class="subItem clearfix">
                <?php if (count($this->_tpl_vars['array'][$i]['childArray'])>0){$divid_ii=1;for($ii=0;$ii<count($this->_tpl_vars['array'][$i]['childArray']); $ii++){?>
                <li class="treeone">
                    <a href="<?php echo $this->_tpl_vars['array'][$i]['childArray'][$ii]['link'] ?>" <?php if($this->_tpl_vars['array'][$i]['childArray'][$ii]['selected']==1 ){ ?>class="hover" <?php } ?> title="<?php echo $this->_tpl_vars['array'][$i]['childArray'][$ii]['typename'] ?>"><?php echo $this->_tpl_vars['array'][$i]['childArray'][$ii]['typename'] ?></a>
                </li>
                <?php }} ?>
            </ul>
            <?php } ?>
        </li>
        <?php }} ?>
    </ul>
    214adb21252b0af7b03s214s9
</div>
