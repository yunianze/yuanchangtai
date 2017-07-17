<div class="setColor clearfix">
    <div class="middle">
        <!-- logo -->
        <a href="javascript:void(0);" class="logo"></a>
        <div class="lngSearch clearfix">
         <!-- 语言版本  -->
        214adb21252b0af7b03s214s9lng||||60af7b03s21fs <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?> <?php if($i+1==1){ ?>
        <a href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>" class="lngCn" style="display:none;">
                  <?php echo $this->_tpl_vars['array'][$i]['lngtitle'] ?>
                </a> <?php } ?> <?php if($i+1==1){ ?>
        <a href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>" class="lngEn">
                  <?php echo $this->_tpl_vars['array'][$i]['lngtitle'] ?>
                </a> <?php } ?> <?php }} ?> 214adb21252b0af7b03s214s9
        <!-- 搜索 -->
        214adb21252b0af7b03s214s9search|mid:0|||60af7b03s21fs
        <form name="infosearch" method="post" action="<?php echo $this->_tpl_vars['link'] ?>">
            <input type="hidden" name="lng" value="<?php echo $this->_tpl_vars['lng'] ?>">
            <input type="hidden" name="mid" value="0">
            <div class="search clearfix">
               <input type="text" id="keyword" name="keyword"  
                onblur ="if(this.value==''){this.value='Please enter key words';
                    }"
                     onfocus="if(this.value=='Please enter key words'){this.value='';}"  value="Please enter key words">
                      <input type="submit"  value="">
            </div>
        </form>
        214adb21252b0af7b03s214s9
       
                </div>
                 <!-- 导航栏 -->
        <ul class="nav clearfix">
            214adb21252b0af7b03s214s9menu|path:<?php echo $this->_tpl_vars['path'] ?>,current:<?php echo $this->_tpl_vars['current'] ?>,ishome:1|||60af7b03s21fs <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
            <li <?php if($i+1==1){ ?>class="clearML"<?php } ?>>
                <a href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>" <?php if($this->_tpl_vars['array'][$i]['path']==$this->_tpl_vars['path'] && $this->_tpl_vars['array'][$i]['current']==$this->_tpl_vars['current']){ ?>class="hover" <?php } ?>>
                   <?php echo $this->_tpl_vars['array'][$i]['title'] ?>
                </a>
            </li>
            <?php }} ?> 214adb21252b0af7b03s214s9
        </ul>
        
    </div>
</div>
