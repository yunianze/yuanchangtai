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
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/Bimg.css">
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
        <div class="pro_list commonRight">
            <div class="setTitle clearfix">
                <h1 class="Ptitle"><?php echo $this->_tpl_vars['type']['typename'] ?></h1>
                <!-- 位置 -->
                <div class="changeUrl clearfix ">
                    6623ef97c6f6ccf2fb032e800d2edda9path|type:type,id:<?php echo $this->_tpl_vars['type']['tid'] ?>||||6623ef97c6f6ccf2fb032e800d2edda9
                </div>
                <!-- 位置结束 -->
            </div>
            <?php if(count($this->_tpl_vars['array']) > 0){ ?>
            <ul class="pro clearfix">
                <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                <li <?php if($divid_i==3){ ?>class="clearMR"<?php $divid_i=0;}$divid_i++;?>>
                    <a href="<?php echo $this->_tpl_vars['array'][$i]['pic'] ?>" rel="lytebox[plants]" title="<?php echo $this->_tpl_vars['array'][$i]['title'] ?> "><img src="<?php echo $this->zoom($this->_tpl_vars['array'][$i]['pic'],210,308,'#fff',1) ?>" alt="富恒仪表">
                    </a>
                </li>
                <?php }} ?>
            </ul>
           <div class="fh_botton">
                <div id="pagination" class="pagination">
                    <?php echo $this->_tpl_vars['pagebotton'] ?>
                </div>
            </div>
            <?php }else{ ?>
            <div class="fh_botton">
                <div id="pagination">暂无内容</div>
            </div>
            <?php } ?>
        </div>
    </div>
    <!-- 右侧结束 -->
    <!-- 中部结束 -->
    <!-- footer -->
    885BA145EFC8431D34F5CC06D142F143specialty/cn/public/footer.html|885BA145EFC8431D34F5CC06D142F143
    <!-- footer end-->
</body>
<script src="<?php echo $this->_tpl_vars['rootpath'] ?>js/Bimg.js"></script>
<script src="<?php echo $this->_tpl_vars['rootpath'] ?>js/jquery.min.js"></script>

</html>
