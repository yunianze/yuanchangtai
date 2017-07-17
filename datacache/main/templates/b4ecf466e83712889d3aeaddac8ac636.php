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
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/form.css">
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=Bz70TjFtICGjscDnMZWtqviW"></script>
</head>

<body>
    <!-- 导航栏 -->
    885BA145EFC8431D34F5CC06D142F143specialty/cn/public/head.html|885BA145EFC8431D34F5CC06D142F143
    <!-- 导航栏结束 -->
    <!-- banner -->
    <div class="innnerbanner clearfix">
        <?php if($this->_tpl_vars['type']['typepic']!==''){ ?>
        <img src="<?php echo $this->_tpl_vars['rootdir'] ?><?php echo $this->_tpl_vars['type']['typepic'] ?>" alt=""> <?php } ?>
    </div>
    <!-- banner end -->
    <!-- 中部 -->
    <div class="middle clearfix">
        <!-- 左侧 -->
        885BA145EFC8431D34F5CC06D142F143specialty/cn/public/left.html|885BA145EFC8431D34F5CC06D142F143
        <!-- 左侧结束 -->
        <!-- 右侧 -->
        <div class="base_read commonRight map_read">
            <div class="setTitle clearfix">
                <h1 class="Ptitle"><?php echo $this->_tpl_vars['type']['typename'] ?></h1>
                <!-- 位置 -->
                <div class="changeUrl clearfix ">
                    6623ef97c6f6ccf2fb032e800d2edda9path|type:type,id:<?php echo $this->_tpl_vars['type']['tid'] ?>||||6623ef97c6f6ccf2fb032e800d2edda9
                </div>
                <!-- 位置结束 -->
            </div>
            <div class="map_content">
            <span>C</span>
            <div class="doubleTitle">
            <h1><?php echo $this->_tpl_vars['type']['typename'] ?></h1>
            <p>ontact Fuheng</p>
            </div>
            </div>
            <ul class="getLink">
                <li><span>公司地址</span><p><?php echo $this->_tpl_vars['read']['title'] ?></p></li>
                <li><span>联系方式</span><p><?php echo $this->_tpl_vars['read']['content'] ?></p></li>
                <li class="clearMR"><span>邮箱</span><p><?php echo $this->_tpl_vars['read']['longtitle'] ?></p></li>
            </ul>
            <div id="add" style="display:none;">
            <?php echo $this->htmlcode($this->_tpl_vars['read']['mapcontent'],1) ?>
            </div>
            6623ef97c6f6ccf2fb032e800d2edda9form|fgid:1||||6623ef97c6f6ccf2fb032e800d2edda9
            <div style="width:100%;height:387px;border:#ccc solid 1px;font-size:12px;margin:44px auto;" id="map"></div>
        </div>
    </div>
    <!-- footer -->
    885BA145EFC8431D34F5CC06D142F143specialty/cn/public/footer.html|885BA145EFC8431D34F5CC06D142F143
    <!-- footer end-->
</body>
<script src="<?php echo $this->_tpl_vars['rootpath'] ?>js/map.js"></script>

</html>
