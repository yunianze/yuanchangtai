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
            885BA145EFC8431D34F5CC06D142F143touch/en/public/secNav.html|885BA145EFC8431D34F5CC06D142F143
            <!-- secNav end -->
            <div class="content article_list">
                <?php if(count($this->_tpl_vars['array']) > 0){ ?>
                <!--每页显示数量-->
                <input type="hidden" name="limit" id="limit" value="<?php echo $this->_tpl_vars['limit'] ?>"/>
                <!--数据总数量-->
                <input type="hidden" name="countnum" id="countnum" value="<?php echo $this->_tpl_vars['countnum'] ?>"/>
                <!--总翻页数量-->
                <input type="hidden" name="maxpage" id="maxpage" value="<?php echo $this->_tpl_vars['maxpage'] ?>"/>
                <!--当前翻页数-->
                <input type="hidden" name="nowpage" id="nowpage" value="1"/>
                <ul id="articlelist">
                    <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                    <li><a href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>">
                        <h6 class="te"><?php echo $this->_tpl_vars['array'][$i]['title'] ?></h6>
                        <p><?php echo $this->cutstr($this->_tpl_vars['array'][$i]['summary'],60,'...') ?></p>
                        <span>addtime：<?php echo $this->timeformat($this->_tpl_vars['array'][$i]['addtime'],2,'-') ?></span>
                    </a></li>
                    <?php }} ?>
                </ul>
                <?php if($this->_tpl_vars['maxpage']>1){ ?>
                <a class="more r" href="javascript:pageajaxlist();">More</a>
                <?php } ?>
                <?php }else{ ?>
                <p class="noContent">Data processing...</p>
                <?php } ?>
            </div>
            <!-- navigation  start-->
            885BA145EFC8431D34F5CC06D142F143touch/en/public/nav.html|885BA145EFC8431D34F5CC06D142F143
            <!-- navigation  end-->
            <!-- footer start -->
            885BA145EFC8431D34F5CC06D142F143touch/en/public/footer.html|885BA145EFC8431D34F5CC06D142F143
            <!-- footer end -->
        </div>
    </div>
    <script>
    function pageajaxlist() {
        var limit = $('#limit').val();
        var nowpage = $('#nowpage').val();
        var maxpage = $('#maxpage').val();
        var limitstard = parseInt(nowpage) * limit;
        nowpage = parseInt(nowpage) + 1;
        $('#nowpage').val(nowpage);
        if (nowpage == maxpage){
            $(".more").hide();
        }
        if (nowpage <= maxpage) {
            $.ajax({
                type: "GET",
                url: "4adb4912cd04e6fd3mlink|1|article4adb4912cd04e6fd3&tid=<?php echo $this->_tpl_vars['type']['tid'] ?>",
                data: "limitstard=" + limitstard + "&nowpage=" + nowpage + "&limit=" + limit,
                success: function(data) {
                    $("#articlelist").append(data);
                }
            });
        }
    }
    </script>
</body>
</html>
