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
                <h1>搜索结果</h1>
            </div>
            <!-- head end -->
            <div class="content search_result">
                214adb21252b0af7b03s214s9search|mid:0,tid:0,att:0,keyword:<?php echo $this->_tpl_vars['keyword'] ?>,keyname:<?php echo $this->_tpl_vars['keyname'] ?>|||60af7b03s21fs
                <form class="search" name="infosearch" method="post" action="<?php echo $this->_tpl_vars['link'] ?>">
                    <input type="hidden" name="lng" value="<?php echo $this->_tpl_vars['lng'] ?>">
                    <input name="keyword" type="text" placeholder="关键词：<?php echo $this->_tpl_vars['keyword'] ?>">
                    <input type="submit" value="">
                </form>
                214adb21252b0af7b03s214s9
                <?php if(count($this->_tpl_vars['array']) > 0){ ?>
                <ul id="articlelist">
                    <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                    <li><a href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>" class="te">
                    <span>[<?php echo $this->_tpl_vars['array'][$i]['typename'] ?>]</span><?php echo $this->_tpl_vars['array'][$i]['title'] ?>
                    </a></li>
                    <?php }} ?>
                </ul>
                <div id="pagelist"><?php echo $this->_tpl_vars['pagetext'] ?></div>
                <div id="pagination" class="pagination">
                    <?php echo $this->_tpl_vars['pagevt']['t'] ?><?php echo $this->_tpl_vars['pagevt']['p'] ?><?php echo $this->_tpl_vars['pagevt']['n'] ?><?php echo $this->_tpl_vars['pagevt']['e'] ?>
                </div>
                <?php }else{ ?>
                <p class="noContent">资料整理中...</p>
                <?php } ?>
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
