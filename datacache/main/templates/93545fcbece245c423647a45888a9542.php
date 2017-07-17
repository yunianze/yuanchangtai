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
    <link rel="stylesheet" href="<?php echo $this->_tpl_vars['rootpath'] ?>css/jquery.page.css">
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
    <div class="article_list min-height">
        <div class="middle clearfix">
            <!-- 左侧 -->
            <div class="left">
                214adb21252b0af7b03s214s9typelist|utid:<?php echo $this->_tpl_vars['type']['topid'] ?>,tid:<?php echo $this->_tpl_vars['type']['tid'] ?>|||60af7b03s21fs
                <div class="lBg"></div>
                <ul class="treeview">
                    <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                    <li class="hover">
                        <a href="javascript:void(0)"  title="<?php echo $this->_tpl_vars['array'][$i]['typename'] ?>"><?php echo $this->_tpl_vars['array'][$i]['typename'] ?> </a>
                    </li>
                    <?php }} ?>
                </ul>
                214adb21252b0af7b03s214s9
            </div>
            <!-- 左侧结束 -->
            <div class="rightCon">
                <?php if(count($this->_tpl_vars['array']) > 0){ ?>
                <ul class="news-list mt110 clearfix" id="date">
                     <div class="page pageCurr clearfix">
                    <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                    <li>
                        <a title="<?php echo $this->_tpl_vars['array'][$i]['title'] ?>" href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>">
                            <div class="imgB">
                                <img src="<?php echo $this->zoom($this->_tpl_vars['array'][$i]['pic'],760,252,'#fff',1) ?>" alt="">
                            </div>
                            <div class="des">
                                <p><?php echo $this->_tpl_vars['array'][$i]['title'] ?></p>
                            </div>
                            <div class="date">
                                <h1></h1>
                                <h2></h2>
                                <h3><?php echo $this->timeformat($this->_tpl_vars['array'][$i]['addtime'],2,'.') ?></h3>
                            </div>
                            <em><?php echo $this->cutstr($this->_tpl_vars['array'][$i]['summary'],90,'...') ?></em>
                        </a>
                    </li>
                    <?php if($divid_i==3){ ?></div>
                    <div class="page clearfix">
                        <?php $divid_i=0;}$divid_i++;?> <?php }} ?>
                    </div>
                </ul>
                 <div class="tcdPageCode">
                </div>
                <?php }else{ ?>
                <div class="fh_botton">
                    <div id="pagination">暂无内容</div>
                </div>
                <?php } ?>
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
<script src="<?php echo $this->_tpl_vars['rootpath'] ?>js/jquery.page.js"></script>
<script type="text/javascript">
/*日期修改*/
var oDate = document.getElementById('date');
var oLi = oDate.getElementsByTagName('li');
var mn = null;
var dn = null;
for (var i = 0; i < oLi.length; i++) {
    mn = mouth(oLi.item(i).getElementsByTagName('h3').item(0).innerHTML);
    dn = day(oLi.item(i).getElementsByTagName('h3').item(0).innerHTML);
    yn = year(oLi.item(i).getElementsByTagName('h3').item(0).innerHTML);
    oLi.item(i).getElementsByTagName('h1').item(0).innerHTML = mn;
    oLi.item(i).getElementsByTagName('h2').item(0).innerHTML = dn;
    oLi.item(i).getElementsByTagName('h3').item(0).innerHTML = yn;

}
// 2012-01-01
function day(datel) {
  return  datel.substring(8, 10)+'/';
}

function mouth(datel) {
    return datel.substring(5, 7)+'/';

}

function year(datel) {
    return datel.substring(0, 4);
}
</script>

</html>
