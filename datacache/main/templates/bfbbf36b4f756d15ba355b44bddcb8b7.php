<form name="<?php echo $this->_tpl_vars['form']['formcode'] ?>" id="<?php echo $this->_tpl_vars['form']['formcode'] ?>" method="post" action="<?php echo $this->_tpl_vars['form']['action'] ?>" onSubmit="return <?php echo $this->_tpl_vars['form']['formcode'] ?>form('<?php echo $this->_tpl_vars['form']['isseccode'] ?>')">
    <input type="hidden" name="linkurl" value="add" />
    <input type="hidden" name="fgid" id="fgid" value="<?php echo $this->_tpl_vars['form']['fgid'] ?>" />
    <input type="hidden" name="formcode" id="formcode" value="<?php echo $this->_tpl_vars['form']['formcode'] ?>" />
    <input type="hidden" name="did" id="did" value="<?php echo $this->_tpl_vars['did'] ?>" />
    <input type="hidden" name="tokenkey" value="<?php echo $this->_tpl_vars['tokenkey']['token_key'] ?>" />
    <div class="formCss clearfix">
        <!-- <h1>给我们留言</h1> -->
        <div class="formBox clearfix">
        <input type="text" name="Ename" placeholder="Name" onfocus="messageOnFocus(this)" onblur="messageOnBlur(this)"  style="float:left;">
         <input type="text" name="Etel" placeholder="Tel" onfocus="messageOnFocus(this)" onblur="messageOnBlur(this)" style="float:right;">
        </div>
        <div class="formBox clearfix">
        <input type="text" name="Eemail" placeholder="E-mail" onfocus="messageOnFocus(this)" onblur="messageOnBlur(this)" style="float:left;">
         <input type="text" name="Eaddress" placeholder="Address" onfocus="messageOnFocus(this)" onblur="messageOnBlur(this)" style="float:right;">
        </div>
        <div class="formBox clearfix">
        <textarea name="Econtent" class="content" placeholder="Message" onfocus="messageOnFocus(this)" onblur="messageOnBlur(this)"></textarea>
        </div>
        <input type="submit" value="Submit" class="submit" id="<?php echo $this->_tpl_vars['form']['formcode'] ?>botton">
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