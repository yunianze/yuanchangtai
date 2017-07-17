<div id="nav">
    <div class="mask"></div>
    <!-- search start -->
    214adb21252b0af7b03s214s9search|mid:0|||60af7b03s21fs
    <form class="search" name="infosearch" method="post" action="<?php echo $this->_tpl_vars['link'] ?>">
        <input type="hidden" name="lng" value="<?php echo $this->_tpl_vars['lng'] ?>">
        <input type="hidden" name="mid" value="0">
        <input type="text" id="keyword" name="keyword" placeholder="请输入关键词" onfocus="searchOnFocus(this)" onblur="searchOnBlur(this)">
        <input type="submit" name="botton" value="">
    </form>
    214adb21252b0af7b03s214s9
    <!-- search end -->
    <a href="<?php echo $this->_tpl_vars['homelink'] ?>" class="home">首页</a>
    <ul id="mainNav">
        214adb21252b0af7b03s214s9typelist||||60af7b03s21fs
        <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
        <li>
            <a href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>" class="te">
                <?php echo $this->_tpl_vars['array'][$i]['typename'] ?>
            </a> 
            <?php if(count( $this->_tpl_vars['array'][$i]['childArray'] ) > 0 ){ ?>
            <span></span>
            <ul>
                <?php if (count($this->_tpl_vars['array'][$i]['childArray'])>0){$divid_ii=1;for($ii=0;$ii<count($this->_tpl_vars['array'][$i]['childArray']); $ii++){?>
                <li>
                    <a href="<?php echo $this->_tpl_vars['array'][$i]['childArray'][$ii]['link'] ?>" class="te"><?php echo $this->_tpl_vars['array'][$i]['childArray'][$ii]['typename'] ?></a>
                    <?php if(count( $this->_tpl_vars['array'][$i]['childArray'][$ii]['childArray'] ) > 0 ){ ?>
                    <span></span>
                    <ul>
                        <?php if (count($this->_tpl_vars['array'][$i]['childArray'][$ii]['childArray'])>0){$divid_iii=1;for($iii=0;$iii<count($this->_tpl_vars['array'][$i]['childArray'][$ii]['childArray']); $iii++){?>
                        <li>
                            <a href="<?php echo $this->_tpl_vars['array'][$i]['childArray'][$ii]['childArray'][$iii]['link'] ?>"><?php echo $this->_tpl_vars['array'][$i]['childArray'][$ii]['childArray'][$iii]['typename'] ?></a>
                        </li>
                        <?php }} ?>
                    </ul>
                    <?php } ?>
                </li>
                <?php }} ?>
            </ul>
            <?php } ?>
        </li>
        <?php }} ?>
        214adb21252b0af7b03s214s9
    </ul>
</div>
