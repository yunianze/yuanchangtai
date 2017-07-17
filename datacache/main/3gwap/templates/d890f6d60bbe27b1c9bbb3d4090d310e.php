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
    <link type="text/css" rel="stylesheet" href="<?php echo $this->_tpl_vars['rootpath'] ?>style/index.css">
    <link rel="stylesheet" href="<?php echo $this->_tpl_vars['rootpath'] ?>style/fakeLoader.css">
    <link type="text/css" rel="stylesheet" href="<?php echo $this->_tpl_vars['rootpath'] ?>style/swiper.min.css">
    <!-- css end -->
</head>

<body>
    <div class="wrap">
        <div id="wrap">
            <div id="mask"></div>
            <!-- head start -->
            885BA145EFC8431D34F5CC06D142F143touch/cn/public/head.html|885BA145EFC8431D34F5CC06D142F143
            <!-- head end -->
            <!-- banner start -->
            <div id="banner">
                <div class="swiper-container">
                    214adb21252b0af7b03s214s9bann|atid:1,adtype:1|||60af7b03s21fs
                    <div class="swiper-wrapper">
                        <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                        <div class="swiper-slide">
                            <img alt="" src="<?php echo $this->zoom($this->_tpl_vars['array'][$i]['filename'],640,360,'',2) ?>">
                        </div>
                        <?php }} ?>
                    </div>
                    214adb21252b0af7b03s214s9
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <!-- banner end -->
            <!-- products start -->
            <div class="products">
                <div class="title"><strong>产品中心</strong></div>
                <ul class="clearfix">
                    214adb21252b0af7b03s214s9list|mid:3,tid:1,max:6|||60af7b03s21fs <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                    <li <?php if($divid_i==2){ ?>class="fr"<?php $divid_i=0;}$divid_i++;?>>
                        <a href="<?php echo $this->_tpl_vars['array'][$i]['typelink'] ?>">
                            <img src="<?php echo $this->zoom($this->_tpl_vars['array'][$i]['pic'],288,250,'#fff',1) ?>">
                            <p><?php echo $this->_tpl_vars['array'][$i]['title'] ?></p>
                        </a>
                        <?php }} ?>
                    </li>
                    214adb21252b0af7b03s214s9
                </ul>
                <a href="4adb4912cd04e6fd3type|1|link4adb4912cd04e6fd3" class="more r">查看更多</a>
            </div>
            <!-- products end -->
            <!-- about start -->
            <div class="about">
                <div class="title"><strong>关于我们</strong></div>
                <div class="box">
                    214adb21252b0af7b03s214s9typeview|tid:14|||60af7b03s21fs
<?php echo $this->htmlcode($this->_tpl_vars['typeread']['content'],1) ?>
214adb21252b0af7b03s214s9
                   
                    <a href="4adb4912cd04e6fd3type|14|link4adb4912cd04e6fd3" class="more r">查看更多</a>
                </div>
            </div>
            <!-- about end -->
            <!-- news start -->
            <div class="news">
                <div class="title"><strong>新闻中心</strong></div>
                <ul>
                    214adb21252b0af7b03s214s9list|mid:2,tid:2,max:5|||60af7b03s21fs <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                    <li>
                        <a href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>">
                            <h6 class="te"><?php echo $this->_tpl_vars['array'][$i]['title'] ?></h6>
                            <p><?php echo $this->cutstr($this->_tpl_vars['array'][$i]['summary'],60,'...') ?></p>
                            <span>发布时间：<?php echo $this->timeformat($this->_tpl_vars['array'][$i]['addtime'],2,'-') ?></span>
                        </a>
                    </li>
                    <?php }} ?> 214adb21252b0af7b03s214s9
                </ul>
                <a href="4adb4912cd04e6fd3type|2|link4adb4912cd04e6fd3" class="more">查看更多</a>
            </div>
            <!-- news end -->
            <!-- navigation  start-->
            885BA145EFC8431D34F5CC06D142F143touch/cn/public/nav.html|885BA145EFC8431D34F5CC06D142F143
            <!-- navigation  end-->
            <!-- footer start -->
            885BA145EFC8431D34F5CC06D142F143touch/cn/public/footer.html|885BA145EFC8431D34F5CC06D142F143
            <!-- footer end -->
        </div>
    </div>
    <script src="<?php echo $this->_tpl_vars['rootpath'] ?>script/swiper.jquery.min.js"></script>
    <script>
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true,
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: 4000,
        autoplayDisableOnInteraction: false
    });
    </script>
</body>

</html>
