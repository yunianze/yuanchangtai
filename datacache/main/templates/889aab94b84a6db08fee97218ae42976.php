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
        <img src="<?php echo $this->_tpl_vars['rootpath'] ?>images/mainPro.jpg" alt="">
    </div>
    <!-- banner end -->
    <!-- 中部 -->
    <div class="middle clearfix setPadding">
       <!-- 左侧 -->
        885BA145EFC8431D34F5CC06D142F143specialty/en/public/left.html|885BA145EFC8431D34F5CC06D142F143
        <!-- 左侧结束 -->
        <!-- 右侧 -->
        <div class="base_read goods_list">
        <div class="type_location clearfix">
                <strong class="type"><?php echo $this->_tpl_vars['type']['typename'] ?></strong>
                <!-- 位置 -->
                    6623ef97c6f6ccf2fb032e800d2edda9path|type:type,id:<?php echo $this->_tpl_vars['type']['tid'] ?>||||6623ef97c6f6ccf2fb032e800d2edda9
                <!-- 位置结束 -->
                </div>
                <?php if(count($this->_tpl_vars['array']) > 0){ ?>
            <ul class="pro clearfix">
                <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                <li <?php if($divid_i==3){ ?>class='clearMR'<?php $divid_i=0;}$divid_i++;?>>
                    <a href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>" title="<?php echo $this->_tpl_vars['array'][$i]['title'] ?>">
                    <div class="setBorder"><img src="<?php echo $this->zoom($this->_tpl_vars['array'][$i]['pic'],254,163,'#fff',1) ?>" alt="<?php echo $this->_tpl_vars['array'][$i]['title'] ?>">
                    </div>
                     <div class="des">
                        <p><?php echo $this->_tpl_vars['array'][$i]['title'] ?></p>
                        </div>
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
                <div id="pagination">Data collation...</div>
            </div>
            <?php } ?>
            
        </div>
    </div>
    <!-- 右侧结束 -->
    <!-- 中部结束 -->
    <!-- footer -->
    885BA145EFC8431D34F5CC06D142F143specialty/en/public/footer.html|885BA145EFC8431D34F5CC06D142F143
    <!-- footer end-->
</body>

</html>
