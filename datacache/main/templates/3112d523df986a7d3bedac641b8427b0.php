<div class="footer">
    <div class="middle">
        <!-- <img src="" alt=""> -->
        <img src="<?php echo $this->_tpl_vars['rootpath'] ?>images/logo.png" alt="" style="margin:40px auto;">
        <div style="clear:both;"></div>
        <ul class="mid clearfix">
            214adb21252b0af7b03s214s9menu|path:<?php echo $this->_tpl_vars['path'] ?>,current:<?php echo $this->_tpl_vars['current'] ?>,ishome:1|||60af7b03s21fs <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
            <li <?php if($i+1==1){ ?>class="clearML"<?php } ?>>
                <a href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>" <?php if($this->_tpl_vars['array'][$i]['path']==$this->_tpl_vars['path'] && $this->_tpl_vars['array'][$i]['current']==$this->_tpl_vars['current']){ ?>class="hover" <?php } ?>>
                   <?php echo $this->_tpl_vars['array'][$i]['title'] ?>
                </a>
            </li>
            <?php }} ?> 214adb21252b0af7b03s214s9
        </ul>
        <div class="getcontact">
            <p>Copyright © Hangzhou Jiexin Technology Co., Ltd</p>
            <!-- <a href="javascript:void(0);"><p>浙ICP备13023679号</p></a> -->
            <a href="http://www.5iss.cc/" class="ss" target="_blank">

                Powered by：<p> 5iss.cc</p>
        </div>
    </div>
</div>
