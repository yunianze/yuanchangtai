<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <!-- 推广优化组件开始 -->
    <title><?php echo $this->_tpl_vars['lngpack']['sitename'] ?></title>
    <meta name="keywords" content="<?php echo $this->_tpl_vars['lngpack']['keyword'] ?>">
    <meta name="description" content="<?php echo $this->_tpl_vars['lngpack']['description'] ?>">
    <!-- 推广优化组件结束 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <!-- css start -->
    <link type="text/css" rel="stylesheet" href="<?php echo $this->_tpl_vars['rootpath'] ?>style/reset.css">
    <link type="text/css" rel="stylesheet" href="<?php echo $this->_tpl_vars['rootpath'] ?>style/public.css">
    <link type="text/css" rel="stylesheet" href="<?php echo $this->_tpl_vars['rootpath'] ?>style/inside.css">
    <link rel="stylesheet" href="<?php echo $this->_tpl_vars['rootpath'] ?>style/fakeLoader.css">
    <!-- css end -->
</head>

<body>
    <div class="wrap">
        <div id="wrap">
            <div id="mask"></div>
            <!-- head start -->
            <div id="head">
                <a class="back" href="javascript:history.go(-1)"></a>
                <div id="navSwitch">
                    <span class="s1"></span>
                    <p></p>
                    <span class="s3"></span>
                </div>
                <h1><?php echo $this->_tpl_vars['type']['typename'] ?></h1>
            </div>
            <!-- head end -->
            <!-- secNav start -->
            885BA145EFC8431D34F5CC06D142F143touch/cn/public/secNav.html|885BA145EFC8431D34F5CC06D142F143
            <!-- secNav end -->
            <div class="content article_read">
                <div class="t">
                    <h5><?php echo $this->_tpl_vars['read']['title'] ?></h5>
                    <h6>发布时间：<?php echo $this->timeformat($this->_tpl_vars['read']['addtime'],3) ?></h6>
                </div>
                <div class="c">
                    <?php echo $this->_tpl_vars['read']['content'] ?>
                </div>
                <div id="pageSwitch">
                    214adb21252b0af7b03s214s9plist|did:<?php echo $this->_tpl_vars['read']['did'] ?>|||60af7b03s21fs
                    <?php if($this->_tpl_vars['read']['ctitle']!=''){ ?>
                    <a href="<?php echo $this->_tpl_vars['read']['link'] ?>" class="fl">
                        <h5 class="te">上一篇</h5>
                        <h6 class="te"><?php echo $this->_tpl_vars['read']['title'] ?></h6>
                    </a>
                    <?php }else{ ?>
                    <div class="none fl">
                        <h5>没有了</h5>
                    </div>
                    <?php } ?>
                    214adb21252b0af7b03s214s9
                    214adb21252b0af7b03s214s9plist|did:<?php echo $this->_tpl_vars['read']['did'] ?>,class:1|||60af7b03s21fs
                    <?php if($this->_tpl_vars['read']['ctitle']!=''){ ?>
                    <a href="<?php echo $this->_tpl_vars['read']['link'] ?>" class="fr">
                        <h5 class="te">下一篇</h5>
                        <h6 class="te"><?php echo $this->_tpl_vars['read']['title'] ?></h6>
                    </a>
                    <?php }else{ ?>
                    <div class="none">
                        <h5>没有了</h5>
                    </div>
                    <?php } ?>
                    214adb21252b0af7b03s214s9
                </div>
            </div>
            <!-- navigation  start-->
            885BA145EFC8431D34F5CC06D142F143touch/cn/public/nav.html|885BA145EFC8431D34F5CC06D142F143
            <!-- navigation  end-->
            <!-- footer start -->
            885BA145EFC8431D34F5CC06D142F143touch/cn/public/footer.html|885BA145EFC8431D34F5CC06D142F143
            <!-- footer end -->
        </div>
    </div>
</body>
</html>
