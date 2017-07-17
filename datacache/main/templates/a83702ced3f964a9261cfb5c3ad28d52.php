<!DOCTYPE html>
<html lang="en">

<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <title><?php echo $this->_tpl_vars['lngpack']['sitename'] ?></title>
    <meta name="keywords" content="<?php echo $this->_tpl_vars['lngpack']['keyword'] ?>" />
    <meta name="description" content="<?php echo $this->_tpl_vars['lngpack']['description'] ?>" />
    <link rel="shortcut icon" href="<?php echo $this->_tpl_vars['rootpath'] ?>images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/common.css">
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/index.css">
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/responsiveslides.css">
    <script type="text/javascript" src="<?php echo $this->_tpl_vars['rootdir'] ?>index.php?ac=scriptout&at=waplink"></script>
</head>

<body id="en">
    <!-- 导航栏 -->
    885BA145EFC8431D34F5CC06D142F143specialty/en/public/head.html|885BA145EFC8431D34F5CC06D142F143
    <!-- 导航栏结束 -->
    <!-- banner -->
    <div class="block_home_slider">
        <div id="home_slider" class="flexslider">
            <ul class="slides">
                214adb21252b0af7b03s214s9bann|atid:6,adtype:1|||60af7b03s21fs <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                <li>
                    <div class="slide">
                        <img src="<?php echo $this->_tpl_vars['rootdir'] ?><?php echo $this->_tpl_vars['array'][$i]['filename'] ?>">
                    </div>
                </li>
                <?php }} ?> 214adb21252b0af7b03s214s9
            </ul>
        </div>
    </div>
    <!-- banner end -->
    <!-- about  -->
    <div class="about">
        <div class="middle">
            <div class="title">
                214adb21252b0af7b03s214s9typeview|tid:16|||60af7b03s21fs
                <strong><?php echo $this->_tpl_vars['typeread']['typename'] ?></strong> <?php echo $this->htmlcode($this->_tpl_vars['typeread']['content'],1) ?> 214adb21252b0af7b03s214s9
            </div>
            <div class="content">
                214adb21252b0af7b03s214s9bread|tid:16|||60af7b03s21fs <?php echo $this->_tpl_vars['read']['summary'] ?> 214adb21252b0af7b03s214s9
                <div class="link">
                    <a href="4adb4912cd04e6fd3type|16|link4adb4912cd04e6fd3">More</a>
                </div>
            </div>
        </div>
    </div>
    <!-- 产品方案 -->
    <div class="products middle">
        <div class="title">
            214adb21252b0af7b03s214s9typeview|tid:18|||60af7b03s21fs
            <strong><?php echo $this->_tpl_vars['typeread']['typename'] ?></strong> <?php echo $this->htmlcode($this->_tpl_vars['typeread']['content'],1) ?> 214adb21252b0af7b03s214s9
        </div>
            <div class="w1014">
                <ul id="pro" class="images">
                    <li>
                    214adb21252b0af7b03s214s9typelist|tid:<?php echo $this->_tpl_vars['type']['tid'] ?>,utid:18|||60af7b03s21fs 
                    <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                        <a href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>" title="<?php echo $this->_tpl_vars['array'][$i]['typename'] ?>">
                            <img src="<?php echo $this->zoom($this->_tpl_vars['array'][$i]['typepic'],311,172,'#fff',1) ?>" alt="<?php echo $this->_tpl_vars['array'][$i]['typename'] ?>">
                            <div class="des">
                            <p><?php echo $this->_tpl_vars['array'][$i]['typename'] ?></p>
                            </div>
                        </a>
                    <?php }} ?> 214adb21252b0af7b03s214s9
                    </li>
                </ul>
                <div class="sw">
                    <div id="goL" class="go-left">></div>
                    <div id="goR" class="go-right">
                        <</div>
                    </div>
            </div>
        </div>
        <!-- 联系我们 -->
        <div class="contact">
        <div class="readContent">
         <div class="title">
            214adb21252b0af7b03s214s9typeview|tid:27|||60af7b03s21fs
            <strong><?php echo $this->_tpl_vars['typeread']['typename'] ?></strong> <?php echo $this->htmlcode($this->_tpl_vars['typeread']['content'],1) ?> 
            <span>&nbsp;</span>
            214adb21252b0af7b03s214s9
        </div>
                <div id="add">
        214adb21252b0af7b03s214s9bread|tid:27|||60af7b03s21fs
       <?php echo $this->_tpl_vars['read']['content'] ?>
214adb21252b0af7b03s214s9
        </div>
        </div>
          <div id="map">
        <div id="wrap" class="my-map">
        <div id="mapContainer"></div>
    </div>
    </div>
        </div>
        <!-- footer -->
        885BA145EFC8431D34F5CC06D142F143specialty/en/public/footer.html|885BA145EFC8431D34F5CC06D142F143
        <!-- footer end -->
</body>
<script src="<?php echo $this->_tpl_vars['rootpath'] ?>js/jquery.min.js"></script>
<script src="<?php echo $this->_tpl_vars['rootpath'] ?>js/responsiveslides.js"></script>
<script src="<?php echo $this->_tpl_vars['rootpath'] ?>js/clickChange.js"></script>
<script src="<?php echo $this->_tpl_vars['rootpath'] ?>js/clickChangejs.js"></script>
<script src="http://webapi.amap.com/maps?v=1.3&key=8325164e247e15eea68b59e89200988b"></script>
<script src="<?php echo $this->_tpl_vars['rootpath'] ?>js/emap.js"></script>
<script type="text/javascript">
$(function() {
    $('#home_slider').flexslider({
        animation: 'slide',
        controlNav: true,
        directionNav: true,
        animationLoop: true,
        slideshow: false,
        useCSS: false
    });

});
</script>

</html>
