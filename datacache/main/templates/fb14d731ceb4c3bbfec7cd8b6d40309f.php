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
    885BA145EFC8431D34F5CC06D142F143specialty/cn/public/head.html|885BA145EFC8431D34F5CC06D142F143
    <!-- 导航栏结束 -->
    <!-- banner -->
    <div class="innerbanner clearfix">
        <?php if($this->_tpl_vars['type']['typepic']!==''){ ?>
        <img src="<?php echo $this->_tpl_vars['rootdir'] ?><?php echo $this->_tpl_vars['type']['typepic'] ?>" alt=""> <?php } ?>
    </div>
    <!-- banner end -->
    <!-- 中部 -->
    <div class="location clearfix">
        <div class="middle clearfix">
            <div class="type">
                <strong><?php echo $this->_tpl_vars['type']['typename'] ?></strong> <?php echo $this->htmlcode($this->_tpl_vars['type']['content'],1) ?>
            </div>
            <!-- 位置 -->
            6623ef97c6f6ccf2fb032e800d2edda9path|type:type,id:<?php echo $this->_tpl_vars['type']['tid'] ?>||||6623ef97c6f6ccf2fb032e800d2edda9
            <!-- 位置结束 -->
        </div>
    </div>
    <!-- 右侧 -->
    <div class="honor  video-list min-height">
        <div class="middle clearfix">
            <!-- 左侧 -->
            885BA145EFC8431D34F5CC06D142F143specialty/cn/public/left.html|885BA145EFC8431D34F5CC06D142F143
            <!-- 左侧结束 -->
            <div class="right-content">
                <?php if(count($this->_tpl_vars['array']) > 0){ ?>
                <ul id="date_p" class="honor-pic video-pic clearfix">
                    <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                    <li <?php if($divid_i==3){ ?>class='clearMR'<?php $divid_i=0;}$divid_i++;?>>
                        <a title="<?php echo $this->_tpl_vars['array'][$i]['title'] ?>" href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>" >
                        <div class="zoom">
                            <img src="<?php echo $this->zoom($this->_tpl_vars['array'][$i]['pic'],200,150,'#fff',1) ?>" alt="">
                            <div class="hover"></div>
                            </div>
                            <p><?php echo $this->_tpl_vars['array'][$i]['title'] ?></p>
                        </a>
                    </li>
                    <?php }} ?>
                </ul>
                <div class="fh_botton" style="width:680px;">
                    <div id="pagination" class="pagination">
                        <?php echo $this->_tpl_vars['pagebotton'] ?>
                    </div>
                </div>
                <?php }else{ ?>
                <div class="fh_botton">
                    <div id="pagination">暂无内容</div>
                </div>
                <?php } ?>
                <div class="hotPic">
                    <p>热门资讯</p>
                    <div id="picBox">
                        <span id="prevTop" class="btn prev"></span>
                        <span id="nextTop" class="btn next"></span> 214adb21252b0af7b03s214s9photo|amid:5|||60af7b03s21fs  
                            <ul>
                                <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                                <li>
                                    <a title="<?php echo $this->_tpl_vars['array'][$i]['title'] ?>" href="javascript:void(0)">
                                    <div class="zoom">
                                    <img src="<?php echo $this->zoom($this->_tpl_vars['array'][$i]['pic'],243,324,'#fff',1) ?>">
                                    </div>
                                        <p><?php echo $this->_tpl_vars['array'][$i]['filetitle'] ?></p>
                                    </a>
                                </li>
                                <?php }} ?>
                            </ul>
                            214adb21252b0af7b03s214s9</div>
                </div>
            </div>
        </div>
    </div>
    <!-- 右侧结束 -->
    <!-- 中部结束 -->
    <!-- footer -->
    885BA145EFC8431D34F5CC06D142F143specialty/cn/public/footer.html|885BA145EFC8431D34F5CC06D142F143
    <!-- footer end-->
</body>
<script type="text/javascript">
// 图片切换
prochange();

function prochange() {

    function G(s) {
        return document.getElementById(s);
    }

    function getStyle(obj, attr) {
        if (obj.currentStyle) {
            return obj.currentStyle[attr];
        } else {
            return getComputedStyle(obj, false)[attr];
        }
    }

    function Animate(obj, json) {
        if (obj.timer) {
            clearInterval(obj.timer);
        }
        obj.timer = setInterval(function() {
            for (var attr in json) {
                var iCur = parseInt(getStyle(obj, attr));
                iCur = iCur ? iCur : 0;
                var iSpeed = (json[attr] - iCur) / 5;
                iSpeed = iSpeed > 0 ? Math.ceil(iSpeed) : Math.floor(iSpeed);
                obj.style[attr] = iCur + iSpeed + 'px';
                if (iCur == json[attr]) {
                    clearInterval(obj.timer);
                }
            }
        }, 30);
    }
    var oPic = G("picBox");
    var oPrevTop = G("prevTop");
    var oNextTop = G("nextTop");

    var oPicLi = oPic.getElementsByTagName("li");
    var len1 = oPicLi.length;

    var oPicUl = oPic.getElementsByTagName("ul")[0];
    var w1 = oPicLi[0].offsetWidth;

    oPicUl.style.width = w1 * len1 + "px";

    var index = 0;

    function Change() {
        Animate(oPicUl, {
            left: -index * w1
        });
        if (index < len1) {
            Animate(oPicUl, {
                left: -(index) * w1
            });
        } else if (index = len1) {
            Animate(oPicUl, {
                left: 0
            });
        } else {
            Animate(oPicUl, {
                left: -(index - 1) * w1
            });
        }
    }

    oNextTop.onclick = function() {
        index++;
        console.log(index)
        index = index == len1 ? 0 : index;
        Change();
    }

    oPrevTop.onclick = function() {
        index--;
        index = index == -len1 ? 0 : Math.abs(index);
        Change();
    }
}
</script>

</html>
