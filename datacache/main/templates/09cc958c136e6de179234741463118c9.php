<form name="<?php echo $this->_tpl_vars['form']['formcode'] ?>" id="<?php echo $this->_tpl_vars['form']['formcode'] ?>" method="post" action="<?php echo $this->_tpl_vars['form']['action'] ?>" onSubmit="return <?php echo $this->_tpl_vars['form']['formcode'] ?>form('<?php echo $this->_tpl_vars['form']['isseccode'] ?>')">
    <input type="hidden" name="linkurl" value="add" />
    <input type="hidden" name="fgid" id="fgid" value="<?php echo $this->_tpl_vars['form']['fgid'] ?>" />
    <input type="hidden" name="formcode" id="formcode" value="<?php echo $this->_tpl_vars['form']['formcode'] ?>" />
    <input type="hidden" name="did" id="did" value="<?php echo $this->_tpl_vars['did'] ?>" />
    <input type="hidden" name="tokenkey" value="<?php echo $this->_tpl_vars['tokenkey']['token_key'] ?>" />
    <div class="formCss clearfix">
        <div class="formBox" style="float:left;">
            <span>姓名：</span>
            <input type="text" name="yyname" />
        </div>
        <div class="formBox" style="float:right;">
            <span>电话：</span>
            <input type="text" name="tel" />
        </div>
        <div style="clear:both;"></div>
        <div class="formBox" style="float:left;">
            <span>邮箱：</span>
            <input type="text" name="email" />
        </div>
        <div class="formBox" style="float:right;">
            <span>地址：</span>
            <input type="text" name="address" />
        </div>
          <div style="clear:both;"></div>
         <div class="formBox">
        <span>内容：</span>
        <textarea name="ffcontent"></textarea>
        </div>
        <div class="submit-top clearfix" style="overflow:hidden;text-align:right;">
         <input type="submit" value="提交" class="submit" id="<?php echo $this->_tpl_vars['form']['formcode'] ?>botton">
        <?php echo $this->htmlcode($this->_tpl_vars['form']['content'],'1') ?>
       
        </div>
    </div>
</form>
<!-- <script>
function messageOnFocus(that) {
    // that.style.outline = "none";
    // that.style.border = "none";
    that.style.boxShadow = "0 0 2px 0 #cccccc inset ";
    that.style.backgroundColor = "#fff";
}

function messageOnBlur(that) {
    // that.style.border = "1px solid #ccc";
    that.style.boxShadow = "none";
}
</script> -->
<script type="text/javascript" src="<?php echo $this->_tpl_vars['rootdir'] ?>js/basicrun.js"></script>
<script type="text/javascript" src="<?php echo $this->_tpl_vars['rootdir'] ?>js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
    var seccode_empty = "<?php echo $this->_tpl_vars['lngpack']['seescodeerr'] ?>";
    function <?php echo $this->_tpl_vars['form']['formcode'] ?>form(seccodetype) {
        <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
            <?php if($this->_tpl_vars['array'][$i]['isvalidate']==1){ ?>
                <?php if($this->_tpl_vars['array'][$i]['validatetext']!=''){ ?>
                    if(document.<?php echo $this->_tpl_vars['form']['formcode'] ?>.<?php echo $this->_tpl_vars['array'][$i]['attrname'] ?>.value.match(<?php echo $this->_tpl_vars['array'][$i]['validatetext'] ?>ig)==null) {
                <?php }else{ ?>
                    if(document.<?php echo $this->_tpl_vars['form']['formcode'] ?>.<?php echo $this->_tpl_vars['array'][$i]['attrname'] ?>.value==''){
                <?php } ?>
                document.<?php echo $this->_tpl_vars['form']['formcode'] ?>.<?php echo $this->_tpl_vars['array'][$i]['attrname'] ?>.focus();
                alert('<?php echo $this->_tpl_vars['array'][$i]['typename'] ?>输入错误，请返回重新输入');
                return false;
            }
            <?php } ?>
        <?php }} ?>

        if(seccodetype=='1' && document.<?php echo $this->_tpl_vars['form']['formcode'] ?>.seccode.value.match(/^[A-Z]{4}$/ig)==null) {
            document.<?php echo $this->_tpl_vars['form']['formcode'] ?>.seccode.focus();
            alert(seccode_empty);
            return false;
        }
    }
</script>
