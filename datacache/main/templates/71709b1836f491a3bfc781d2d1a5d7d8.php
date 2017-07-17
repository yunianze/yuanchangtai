<div class="navLogo middle clearfix">
    <!-- logo -->
    <a href="<?php echo $this->_tpl_vars['homelink'] ?>"  title="点击进入首页"    class="logo"></a>
    <!-- 导航栏 -->
    <ul class="nav clearfix">
        214adb21252b0af7b03s214s9menu|path:<?php echo $this->_tpl_vars['path'] ?>,current:<?php echo $this->_tpl_vars['current'] ?>,ishome:0|||60af7b03s21fs <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
        <li class="top-li ">
            <a href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>"  class="<?php if($this->_tpl_vars['array'][$i]['path']==$this->_tpl_vars['path'] && $this->_tpl_vars['array'][$i]['current']==$this->_tpl_vars['current']){ ?>hover<?php } ?>">
               <?php echo $this->_tpl_vars['array'][$i]['title'] ?>
            </a>
        </li>
        <?php }} ?> 214adb21252b0af7b03s214s9
    </ul>
</div>
