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
    885BA145EFC8431D34F5CC06D142F143specialty/en/public/head.html|885BA145EFC8431D34F5CC06D142F143
    <!-- 导航栏结束 -->
    <!-- banner -->
    <div class="innnerbanner clearfix">
        <?php if($this->_tpl_vars['type']['typepic']!==''){ ?>
        <img src="<?php echo $this->_tpl_vars['rootdir'] ?><?php echo $this->_tpl_vars['type']['typepic'] ?>" alt=""> <?php } ?>
    </div>
    <!-- banner end -->
    <!-- 中部 -->
    <div class="middle clearfix setPadding">
        <!-- 左侧 -->
        885BA145EFC8431D34F5CC06D142F143specialty/en/public/left.html|885BA145EFC8431D34F5CC06D142F143
        <!-- 左侧结束 -->
        <!-- 右侧 -->
         <div class="base_read article_read">
            <div class="type_location clearfix">
                <strong class="type"><?php echo $this->_tpl_vars['type']['typename'] ?></strong>
                <!-- 位置 -->
                6623ef97c6f6ccf2fb032e800d2edda9path|type:type,id:<?php echo $this->_tpl_vars['type']['tid'] ?>||||6623ef97c6f6ccf2fb032e800d2edda9
                <!-- 位置结束 -->
            </div>
            <div class="Intitle">
                <strong><?php echo $this->_tpl_vars['read']['title'] ?></strong>
                <span style="padding-right:22px;">update：<?php echo $this->timeformat($this->_tpl_vars['read']['addtime'],2,'-') ?></span> 
                <em>Clicks：<?php echo $this->_tpl_vars['read']['click'] ?></em>
                   </div>
                <div class="content">
                <?php echo $this->_tpl_vars['read']['content'] ?>
                </div>
         
            <div class="fh_book">
                <ul class="fh_newslist_read unstyled">
                    214adb21252b0af7b03s214s9plist|did:<?php echo $this->_tpl_vars['read']['did'] ?>|||60af7b03s21fs
                    <li><?php if($this->_tpl_vars['read']['ctitle']!=''){ ?>The Previous：<a class="infolist2" title="<?php echo $this->_tpl_vars['read']['title'] ?>" href="<?php echo $this->_tpl_vars['read']['link'] ?>"><?php echo $this->_tpl_vars['read']['ctitle'] ?></a><?php } ?></li>
                    214adb21252b0af7b03s214s9 214adb21252b0af7b03s214s9plist|did:<?php echo $this->_tpl_vars['read']['did'] ?>,class:1|||60af7b03s21fs
                    <li><?php if($this->_tpl_vars['read']['ctitle']!=''){ ?>The Next：<a class="infolist2" title="<?php echo $this->_tpl_vars['read']['title'] ?>" href="<?php echo $this->_tpl_vars['read']['link'] ?>"><?php echo $this->_tpl_vars['read']['ctitle'] ?></a><?php } ?></li>
                    214adb21252b0af7b03s214s9
                </ul>
            </div>
        </div>
    </div>
    <!-- 右侧结束 -->
    <!-- 中部结束 -->
    <!-- footer -->
    885BA145EFC8431D34F5CC06D142F143specialty/en/public/footer.html|885BA145EFC8431D34F5CC06D142F143
    <!-- footer end-->
</body>

</html>
