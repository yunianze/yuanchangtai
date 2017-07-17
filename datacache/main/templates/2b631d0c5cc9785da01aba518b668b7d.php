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
        <div class="base_read map_read">
             <div class="type_location clearfix">
                <strong class="type"><?php echo $this->_tpl_vars['type']['typename'] ?></strong>
                <!-- 位置 -->
                    6623ef97c6f6ccf2fb032e800d2edda9path|type:type,id:<?php echo $this->_tpl_vars['type']['tid'] ?>||||6623ef97c6f6ccf2fb032e800d2edda9
                <!-- 位置结束 -->
                </div>
            <div id="map">
             <div id="wrap" class="my-map">
        <div id="mapContainer"></div>
            </div>
            </div>
            <strong class="mainP">Hangzhou gsignal Technology Co., Ltd</strong>
            <div style="clear:both;"></div>
              <div id="add" >
            <?php echo $this->_tpl_vars['read']['content'] ?>
            </div>
        </div>
    </div>
    <!-- footer -->
    885BA145EFC8431D34F5CC06D142F143specialty/en/public/footer.html|885BA145EFC8431D34F5CC06D142F143
    <!-- footer end-->
</body>
<script src="http://webapi.amap.com/maps?v=1.3&key=8325164e247e15eea68b59e89200988b"></script>
<script src="<?php echo $this->_tpl_vars['rootpath'] ?>js/contactEMap.js"></script>

</html>
