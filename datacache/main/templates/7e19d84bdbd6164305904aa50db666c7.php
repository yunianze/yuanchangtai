<!DOCTYPE html>
<html lang="en">

<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <title><?php echo $this->_tpl_vars['lngpack']['sitename'] ?></title>
    <meta name="keywords" content="<?php echo $this->_tpl_vars['lngpack']['keyword'] ?>" />
    <meta name="description" content="<?php echo $this->_tpl_vars['lngpack']['description'] ?>" />
    <link rel="shortcut icon" href="<?php echo $this->_tpl_vars['rootpath'] ?>images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/common.css">
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/inside.css">
</head>

<body>
    <!-- 导航栏 -->
    885BA145EFC8431D34F5CC06D142F143specialty/cn/public/head.html|885BA145EFC8431D34F5CC06D142F143
    <!-- 导航栏结束 -->
    <!-- banner -->
    <div class="inBanner clearfix">
        <?php if($this->_tpl_vars['type']['typepic']!==''){ ?>
        <img src="<?php echo $this->_tpl_vars['rootdir'] ?><?php echo $this->_tpl_vars['type']['typepic'] ?>" alt=""> <?php } ?>
    </div>
    <!-- banner end -->
    <div class="article_read min-height">
        <div class="middle clearfix">
            <!-- 左侧 -->
            <div class="left">
                214adb21252b0af7b03s214s9typelist|utid:<?php echo $this->_tpl_vars['type']['topid'] ?>,tid:<?php echo $this->_tpl_vars['type']['tid'] ?>|||60af7b03s21fs
                <div class="lBg"></div>
                <ul class="treeview">
                    <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                    <li class="hover">
                        <a href="javascript:void(0)"  title="<?php echo $this->_tpl_vars['array'][$i]['typename'] ?>"><?php echo $this->_tpl_vars['array'][$i]['typename'] ?> </a>
                    </li>
                    <?php }} ?>
                </ul>
                214adb21252b0af7b03s214s9
            </div>
            <!-- 左侧结束 -->
            <div class="rightCon">
                <div class="nTitle">
                    <strong><?php echo $this->_tpl_vars['read']['title'] ?></strong>
                    <span style="padding-right:30px;">更新时间：<?php echo $this->timeformat($this->_tpl_vars['read']['addtime'],2,'.') ?></span>
                    <span>浏览次数：<?php echo $this->_tpl_vars['read']['click'] ?>次</span>
                </div>
                <div class="content">
                    <?php echo $this->_tpl_vars['read']['content'] ?>
                </div>
                <div class="fh_book">
                    <ul class="fh_newslist_read unstyled">
                        214adb21252b0af7b03s214s9plist|did:<?php echo $this->_tpl_vars['read']['did'] ?>|||60af7b03s21fs
                        <li><?php if($this->_tpl_vars['read']['ctitle']!=''){ ?>上一篇：<a class="infolist2" title="<?php echo $this->_tpl_vars['read']['title'] ?>" href="<?php echo $this->_tpl_vars['read']['link'] ?>"><?php echo $this->_tpl_vars['read']['ctitle'] ?></a><?php } ?></li>
                        214adb21252b0af7b03s214s9 214adb21252b0af7b03s214s9plist|did:<?php echo $this->_tpl_vars['read']['did'] ?>,class:1|||60af7b03s21fs
                        <li><?php if($this->_tpl_vars['read']['ctitle']!=''){ ?>下一篇：<a class="infolist2" title="<?php echo $this->_tpl_vars['read']['title'] ?>" href="<?php echo $this->_tpl_vars['read']['link'] ?>"><?php echo $this->_tpl_vars['read']['ctitle'] ?></a><?php } ?></li>
                        214adb21252b0af7b03s214s9
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- 右侧结束 -->
    <!-- footer -->
    885BA145EFC8431D34F5CC06D142F143specialty/cn/public/footer.html|885BA145EFC8431D34F5CC06D142F143
    <!-- footer end-->
</body>

</html>
