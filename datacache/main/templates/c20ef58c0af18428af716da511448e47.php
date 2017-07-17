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
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/slider-pro.min.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/examples.css" media="screen" />
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
    <div class="goods_read min-height">
        <div class="middle clearfix">
            <!-- 左侧 -->
            885BA145EFC8431D34F5CC06D142F143specialty/cn/public/left.html|885BA145EFC8431D34F5CC06D142F143
            <!-- 左侧结束 -->
            <div class="rightCon mt110">
            <!-- 切换 -->
                <div id="example5" class="slider-pro" style="margin:3% 0;">
                    <div class="sp-slides">
                        <div class="sp-slide"><img class="sp-image" data-src="<?php echo $this->zoom($this->_tpl_vars['read']['pic'],618,421,'#fff',1) ?>" data-retina="<?php echo $this->_tpl_vars['read']['pic'] ?>" />
                            <div class="sp-caption">
                                <strong><?php echo $this->_tpl_vars['read']['title'] ?></strong>
                            </div>
                        </div>
                        <?php if (count($this->_tpl_vars['photo'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['photo']); $i++){?>
                        <div class="sp-slide"><img class="sp-image" data-src="<?php echo $this->zoom($this->_tpl_vars['photo'][$i]['picfile'],618,421,'#fff',1) ?>" data-retina="<?php echo $this->_tpl_vars['photo'][$i]['picfile'] ?>" />
                            <div class="sp-caption">
                                <strong><?php echo $this->_tpl_vars['read']['title'] ?></strong>
                                <div class="adv clearfix">
                                    <?php echo $this->htmlcode($this->_tpl_vars['read']['advan'],1) ?>
                                </div>
                            </div>
                        </div>
                        <?php }} ?>
                    </div>
                    <div class="sp-thumbnails">
                        <div class="sp-thumbnail">
                            <div class="sp-thumbnail-image-container"> <img class="sp-thumbnail-image" src="<?php echo $this->zoom($this->_tpl_vars['read']['pic'],129,80,'#fff',1) ?>" /> </div>
                        </div>
                        <?php if (count($this->_tpl_vars['photo'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['photo']); $i++){?>
                        <div class="sp-thumbnail">
                            <div class="sp-thumbnail-image-container"> <img class="sp-thumbnail-image" src="<?php echo $this->zoom($this->_tpl_vars['photo'][$i]['picfile'],129,80,'#fff',1) ?>" /> </div>
                        </div>
                        <?php }} ?>
                    </div>
                </div>
                <!-- 切换结束 -->

                <!-- 详情 -->
            <div class="goodCon">
                 <div class="Gt">
                     <p>产品详情</p>
                 </div>
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
    <!-- 中部结束 -->
    <!-- footer -->
    885BA145EFC8431D34F5CC06D142F143specialty/cn/public/footer.html|885BA145EFC8431D34F5CC06D142F143
    <!-- footer end-->
</body>
<script src="<?php echo $this->_tpl_vars['rootpath'] ?>js/jquery.min.js"></script>
<script src="<?php echo $this->_tpl_vars['rootpath'] ?>js/jquery.sliderPro.min.js"></script>
<script>
$(document).ready(function($) {
    $('#example5').sliderPro({
        width: 618,
        height: 421,
        orientation: 'vertical',
        loop: true,
        arrows: true,
        buttons: false,
        autoplay: true,
        autoplayDelay: 5000,
        thumbnailsPosition: 'right',
        thumbnailPointer: true,
        thumbnailWidth: 129,
        thumbnailHeight: 80,
        fadeArrows: true,
    });
});

</script>

</html>
