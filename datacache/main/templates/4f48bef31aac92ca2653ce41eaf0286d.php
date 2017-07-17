<!DOCTYPE html>
<html lang="en">

<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <title><?php echo $this->_tpl_vars['lngpack']['sitename'] ?></title>
    <meta name="keywords" content="<?php echo $this->_tpl_vars['lngpack']['keyword'] ?>" />
    <meta name="description" content="<?php echo $this->_tpl_vars['lngpack']['description'] ?>" />
    <script type="text/javascript" src="<?php echo $this->_tpl_vars['rootdir'] ?>js/jquery.js"></script>
    <script type="text/javascript" src="<?php echo $this->_tpl_vars['rootdir'] ?>js/basicrun.js"></script>
    <script type="text/javascript" src="<?php echo $this->_tpl_vars['rootdir'] ?>js/jquery.Slide.js"></script>
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo $this->_tpl_vars['rootpath'] ?>images/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/common.css">
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/public.css">
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/5div.css">
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/page.css">
    <script type="text/javascript" src="<?php echo $this->_tpl_vars['rootdir'] ?>index.php?ac=public&at=typepuv&tid=<?php echo $this->_tpl_vars['type']['tid'] ?>"></script>
</head>

<body>
    885BA145EFC8431D34F5CC06D142F143specialty/cn/public/head.html|885BA145EFC8431D34F5CC06D142F143
    <div class="bst_page ">
        214adb21252b0af7b03s214s9search|mid:0,tid:0,att:0,keyword:<?php echo $this->_tpl_vars['keyword'] ?>,keyname:<?php echo $this->_tpl_vars['keyname'] ?>|||60af7b03s21fs
        <form name="infosearch" method="post" action="<?php echo $this->_tpl_vars['link'] ?>">
            <input type="hidden" name="lng" value="<?php echo $this->_tpl_vars['lng'] ?>">
            <div class="bst_member_login_center bst_formwidth_c">
                <div class="title mb20">
                    <div class="messageicon2"></div>
                    <div class="messtitle">搜索框</div>
                </div>
                <div class="bst_form_group">
                    <label for="title" class="control_label16">搜索关键字</label>
                    <div class="control_required20">
                        <input type="text" name="keyword" class="col5 infoInput" value="<?php echo $this->_tpl_vars['keyword'] ?>" size="20" maxlength="30" onfocus="if (this.value=='<?php echo $this->_tpl_vars['keyword'] ?>'){this.value=''}" onblur="if(this.value==''){this.value='<?php echo $this->_tpl_vars['keyword'] ?>'}" />
                    </div>
                </div>
                <div class="bst_form_group">
                    <label for="title" class="control_label16">搜索类型</label>
                    <div class="control_required20">
                        <select size="1" name="keyname" class="infoInput">
                            <option value="title" <?php if($this->_tpl_vars['keyname']=='title' ){ ?> selected<?php } ?>>按内容标题搜索</option>
                            <option value="summary" <?php if($this->_tpl_vars['keyname']=='summary' ){ ?> selected<?php } ?>>按简介搜索</option>
                            <option value="tsn" <?php if($this->_tpl_vars['keyname']=='tsn' ){ ?> selected<?php } ?>>按编号搜索</option>
                        </select>
                    </div>
                </div>
                <?php if(count($this->_tpl_vars['array'])>0){ ?>
                <div class="bst_form_group">
                    <label for="title" class="control_label16">所属分类</label>
                    <div class="control_required20">
                        <select size="1" name="tid" id="tid" class="infoInput">
                            <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                            <option value="<?php echo $this->_tpl_vars['array'][$i]['tid'] ?>" title="<?php echo $this->_tpl_vars['array'][$i]['typename'] ?>"><?php if($this->_tpl_vars['array'][$i]['level']>1){ ?>├<?php } ?><?php echo $this->treelist($this->_tpl_vars['array'][$i]['level'],'─') ?> <?php echo $this->cutstr($this->_tpl_vars['array'][$i]['typename'],6) ?></option>
                            <?php }} ?>
                        </select>
                    </div>
                </div>
                <?php } ?> <?php if (count($this->_tpl_vars['searchatt'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['searchatt']); $list++){?>
                <div class="bst_form_group">
                    <label for="title" class="control_label16"><?php echo $this->_tpl_vars['searchatt'][$list]['typename'] ?></label>
                    <div class="control_required20">
                        <?php if(($this->_tpl_vars['searchatt'][$list]['inputtype']=='select')){ ?>
                        <select size="1" name="att[<?php echo $this->_tpl_vars['searchatt'][$list]['attrname'] ?>]" class="infoInput" id="<?php echo $this->_tpl_vars['searchatt'][$list]['attrname'] ?>">
                            <option value=""><?php echo $this->_tpl_vars['ST']['botton_select_name'] ?><?php echo $this->_tpl_vars['searchatt'][$list]['typename'] ?></option>
                            <?php if (count($this->_tpl_vars['searchatt'][$list]['attrvalue'])>0){$divid_ii=1;for($ii=0;$ii<count($this->_tpl_vars['searchatt'][$list]['attrvalue']); $ii++){?>
                            <option <?php echo $this->_tpl_vars['searchatt'][$list]['attrvalue'][$ii]['selected'] ?> value="<?php echo $this->_tpl_vars['searchatt'][$list]['attrvalue'][$ii]['name'] ?>"><?php echo $this->_tpl_vars['searchatt'][$list]['attrvalue'][$ii]['name'] ?></option>
                            <?php }} ?>
                        </select>
                        <?php } elseif(($this->_tpl_vars['searchatt'][$list]['inputtype']=='radio')){ ?> <?php if (count($this->_tpl_vars['searchatt'][$list]['attrvalue'])>0){$divid_ii=1;for($ii=0;$ii<count($this->_tpl_vars['searchatt'][$list]['attrvalue']); $ii++){?>
                        <input type="radio" value="att[<?php echo $this->_tpl_vars['searchatt'][$list]['attrvalue'][$ii]['name'] ?>]" class="infoInput" name="<?php echo $this->_tpl_vars['searchatt'][$list]['attrname'] ?>" <?php if($this->_tpl_vars['searchatt'][$list]['attrvalue'][$ii]['selected']=='selected' ){ ?>checked="checked" <?php } ?>/> <?php echo $this->_tpl_vars['searchatt'][$list]['attrvalue'][$ii]['name'] ?>&nbsp; <?php }} ?> <?php } elseif(($this->_tpl_vars['searchatt'][$list]['inputtype']=='checkbox')){ ?> <?php if (count($this->_tpl_vars['searchatt'][$list]['attrvalue'])>0){$divid_ii=1;for($ii=0;$ii<count($this->_tpl_vars['searchatt'][$list]['attrvalue']); $ii++){?>
                        <input type="checkbox" value="att[<?php echo $this->_tpl_vars['searchatt'][$list]['attrvalue'][$ii]['name'] ?>]" class="infoInput" name="<?php echo $this->_tpl_vars['searchatt'][$list]['attrname'] ?>[]" /> <?php echo $this->_tpl_vars['searchatt'][$list]['attrvalue'][$ii]['name'] ?>&nbsp; <?php }} ?> <?php }else{ ?>
                        <input type="text" name="att[<?php echo $this->_tpl_vars['searchatt'][$list]['attrname'] ?>]" size="20" id="<?php echo $this->_tpl_vars['searchatt'][$list]['attrname'] ?>" value="<?php echo $this->_tpl_vars['searchatt'][$list]['attrvalue'] ?>" maxlength="<?php echo $this->_tpl_vars['searchatt'][$list]['attrlenther'] ?>" class="infoInput" /> <?php } ?>
                    </div>
                </div>
                <?php }} ?>
                <div class="bst_form_group">
                    <label class="control_label16"></label>
                    <div class="control_required20">
                        <input type="submit" id="submit" class="button blue2" value="确认搜索" />
                    </div>
                </div>
            </div>
        </form>
        214adb21252b0af7b03s214s9
        <div class="bst_page_typename_width">内容搜索结果<?php if($this->_tpl_vars['keyword']){ ?>：<?php echo $this->_tpl_vars['keyword'] ?><?php } ?></div>
        <div class="bst_page_center_line"></div>
        <?php if(count($this->_tpl_vars['array']) > 0){ ?>
        <ul class="bst_newslist unstyled">
            <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
            <li class="bst_strlist">
                <dl>
                    <dd class="tl"><a title="<?php echo $this->_tpl_vars['array'][$i]['title'] ?>" target="_blank" href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>"><?php echo $this->_tpl_vars['array'][$i]['ctitle'] ?></a></dd>
                    <dd class="dr"><?php echo $this->timeformat($this->_tpl_vars['array'][$i]['addtime'],3) ?></dd>
                </dl>
            </li>
            <?php }} ?>
        </ul>
        <div class="bst_page_center_line"></div>
        <div class="bst_page_botton">
            <div id="pagelist"><?php echo $this->_tpl_vars['pagetext'] ?></div>
        </div>
        <div class="bst_page_botton">
            <div id="pagination" class="pagination">
                <?php echo $this->_tpl_vars['pagebotton'] ?>
            </div>
        </div>
        <?php }else{ ?>
        <div class="bst_page_botton">
            <div id="pagination">暂未搜索到相关内容</div>
        </div>
        <?php } ?>
    </div>
</body>

</html>
