<!DOCTYPE html>
<html lang="en">

<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <title><?php echo $this->_tpl_vars['lngpack']['sitename'] ?></title>
    <meta name="viewport" content="width=1200, user-scalable=yes">
    <meta name="keywords" content="<?php echo $this->_tpl_vars['lngpack']['keyword'] ?>" />
    <meta name="description" content="<?php echo $this->_tpl_vars['lngpack']['description'] ?>" />
    <link rel="shortcut icon" href="<?php echo $this->_tpl_vars['rootpath'] ?>images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/common.css">
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/index.css">
    <link type="text/css" rel="stylesheet" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/swiper-3.3.1.min.css">
    <script type="text/javascript" src="<?php echo $this->_tpl_vars['rootdir'] ?>index.php?ac=scriptout&at=waplink"></script>
</head>

<body>
    <!-- 导航栏 -->
    885BA145EFC8431D34F5CC06D142F143specialty/cn/public/head.html|885BA145EFC8431D34F5CC06D142F143
    <!-- 导航栏结束 -->
    <!-- banner -->
    <div class="banner">
        <div class="swiper-container">
            214adb21252b0af7b03s214s9bann|atid:1,adtype:1|||60af7b03s21fs
            <div class="swiper-wrapper">
                <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                <div class="swiper-slide">
                    <img src="<?php echo $this->_tpl_vars['rootdir'] ?><?php echo $this->_tpl_vars['array'][$i]['filename'] ?>" alt="">
                </div>
                <?php }} ?>
            </div>
            214adb21252b0af7b03s214s9
            <!-- Add Arrows -->
            <div class="swiper-pagination "></div>
        </div>
    </div>
    <!-- banner end -->
    <!-- 产品展示 -->
    <div class="pro middle">
        <div class="title">
            <p>产品展示</p>
            <b>Tea Time Estonian </b>
        </div>
        <div class="setPos">
            <span id="prev" class="btn prev"></span>
            <span id="next" class="btn next"></span>
            <div class="mod18">
                <div id="listBox" class="listBox">
                    <ul class="cf">
                        214adb21252b0af7b03s214s9list|mid:3,tid:1|||60af7b03s21fs <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                        <li><a title="<?php echo $this->_tpl_vars['array'][$i]['title'] ?>" href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>"><i <?php if($i+1==1){ ?>class="arr2"<?php } ?>></i><img src="<?php echo $this->zoom($this->_tpl_vars['array'][$i]['pic'],222,146,'',1) ?>" /></a></li>
                        <?php }} ?> 214adb21252b0af7b03s214s9
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- 新闻资讯 -->
    <div class="news middle">
        <div class="title">
            <p>新闻资讯</p>
            <b>Tea Time Estonian </b>
        </div>
        <ul class="newsList clearfix" id="date_p">
            214adb21252b0af7b03s214s9list|mid:2,tid:2,max:4|||60af7b03s21fs <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
            <li class="<?php if($i+1==1){ ?>bigImg<?php }else{ ?>normals<?php } ?>">
                <a title="<?php echo $this->_tpl_vars['array'][$i]['title'] ?>" href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>">
                            <?php if($i+1==1){ ?>
                            <img src="<?php echo $this->zoom($this->_tpl_vars['array'][$i]['pic'],474,197,'#fff',2) ?>" alt="">
                            <h2>MORE  >></h2>
                            <?php } ?>
                                <div class="p_date clearfix">
                                <div class="date">
                                    <h3></h3>
                                    <h4></h4>
                                    <h5 style="display:none;"><?php echo $this->timeformat($this->_tpl_vars['array'][$i]['addtime'],2) ?></h5>
                                    </div>
                                    <div class="des">
                                    <h1><?php echo $this->cutstr($this->_tpl_vars['array'][$i]['title'],25,'...') ?></h1>
                                <p class="summary"><?php echo $this->cutstr($this->_tpl_vars['array'][$i]['summary'],50,'...') ?></p>
                                </div>
                                </div>
                            </a>
            </li>
            <?php }} ?> 214adb21252b0af7b03s214s9
        </ul>
    </div>
    <!-- 关于我们 -->
    <div class="footerbg">
    <div class="about middle">
        <div class="title">
            <p>关于我们</p>
            <b>Tea Time Estonian </b>
        </div>
        <ul class="xianchang clearfix">
            214adb21252b0af7b03s214s9list|mid:7,tid:14,max:4|||60af7b03s21fs <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
            <li class="<?php if($divid_i==4){ ?>clearMR<?php $divid_i=0;}$divid_i++;?> xLi">
                <a href="javascript:void(0)">
                    <div><img src="<?php echo $this->zoom($this->_tpl_vars['array'][$i]['pic'],222,296,'#fff',2) ?>" alt="">
                        <p><i><?php echo $this->_tpl_vars['array'][$i]['title'] ?></i></p>
                    </div>
                </a>
            </li>
            <?php }} ?> 214adb21252b0af7b03s214s9
        </ul>
            <div class="thumbs"></div>
        <div class="changtai">
            214adb21252b0af7b03s214s9typeview|tid:14|||60af7b03s21fs <?php echo $this->htmlcode($this->_tpl_vars['typeread']['content'],1) ?> 214adb21252b0af7b03s214s9
        </div>
        <div class="jianchi">
        <img src="<?php echo $this->_tpl_vars['rootpath'] ?>images/jianchi.png">
         <a href="4adb4912cd04e6fd3type|14|link4adb4912cd04e6fd3">了解详情 </a>
        </div>
    </div>
    <!-- footer -->
    885BA145EFC8431D34F5CC06D142F143specialty/cn/public/footer.html|885BA145EFC8431D34F5CC06D142F143
    <!-- footer end -->
    
    </div>
</body>
<script src="<?php echo $this->_tpl_vars['rootpath'] ?>js/jquery.min.js"></script>
<script src="<?php echo $this->_tpl_vars['rootpath'] ?>js/swiper-3.3.1.min.js"></script>
<script src="<?php echo $this->_tpl_vars['rootpath'] ?>js/pro.js"></script>
<script>
var swiper = new Swiper('.swiper-container', {
    pagination: '.swiper-pagination',
    speed: 1000,
    autoplay: 4000,
    loop: true,
    paginationClickable: true,
    slidesPerView: 'auto',
    loopedSlides: 1,
});

/*日期修改*/
var oDate = document.getElementById('date_p');
var oLi = oDate.getElementsByTagName('li');
var mn = null;
var dn = null;
for (var i = 0; i < oLi.length; i++) {
    mn = mouth(oLi.item(i).getElementsByTagName('h5').item(0).innerHTML);
    dn = year(oLi.item(i).getElementsByTagName('h5').item(0).innerHTML);
    oLi.item(i).getElementsByTagName('h3').item(0).innerHTML = mn;
    oLi.item(i).getElementsByTagName('h4').item(0).innerHTML = dn;

}
// 2012-01-01
function mouth(datel) {
    if (datel.substr(5, 2) < 10) {
        return '0' + datel.substr(6, 1);
    } else {
        return datel.substr(5, 2);
    }
}

function year(datel) {
    return datel.substr(0, 7);
}
</script>

</html>
