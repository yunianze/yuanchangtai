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
    <div class="innerbanner clearfix">
        <?php if($this->_tpl_vars['type']['typepic']!==''){ ?>
        <img src="<?php echo $this->_tpl_vars['rootdir'] ?><?php echo $this->_tpl_vars['type']['typepic'] ?>" alt=""> <?php } ?>
    </div>
    <!-- banner end -->
    <!-- 中部 -->
    <div class="location clearfix">
    <div class="middle clearfix">
    <div class="type">
    <strong><?php echo $this->_tpl_vars['type']['typename'] ?></strong>
    <?php echo $this->htmlcode($this->_tpl_vars['type']['content'],1) ?>
    </div>
        <!-- 位置 -->
        6623ef97c6f6ccf2fb032e800d2edda9path|type:type,id:<?php echo $this->_tpl_vars['type']['tid'] ?>||||6623ef97c6f6ccf2fb032e800d2edda9
        <!-- 位置结束 -->
        </div>
    </div>
        <!-- 右侧 -->
        <div class="about min-height">
    <div class="middle clearfix">
        <!-- 左侧 -->
        885BA145EFC8431D34F5CC06D142F143specialty/cn/public/left.html|885BA145EFC8431D34F5CC06D142F143
        <!-- 左侧结束 -->
            <div class="right-content">
                <?php echo $this->_tpl_vars['read']['content'] ?>
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
    <!-- 中部结束 -->
    <!-- footer -->
    885BA145EFC8431D34F5CC06D142F143specialty/cn/public/footer.html|885BA145EFC8431D34F5CC06D142F143
    <!-- footer end-->
</body>
</html>
