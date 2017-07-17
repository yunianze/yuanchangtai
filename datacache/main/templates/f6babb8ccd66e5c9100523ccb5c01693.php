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
    <div class="about min-height">
        <div class="middle clearfix">
            <!-- 左侧 -->
            885BA145EFC8431D34F5CC06D142F143specialty/cn/public/left.html|885BA145EFC8431D34F5CC06D142F143
            <!-- 左侧结束 -->
            <div class="right-content">
                <?php echo $this->_tpl_vars['read']['content'] ?>
                <div class="mod18">
                    <span id="prev" class="btn prev"></span>
                    <span id="next" class="btn next"></span>
                    <div id="listBox" class="listBox">
                        <ul class="cf">
                            214adb21252b0af7b03s214s9list|mid:8,tid:16|||60af7b03s21fs <?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                            <li <?php if($i+1==1){ ?>class="on"<?php } ?>><i <?php if($i+1==1){ ?>class="arr2"<?php } ?>></i><img src="<?php echo $this->_tpl_vars['array'][$i]['pic'] ?>" /></li>
                            <?php }} ?> 214adb21252b0af7b03s214s9
                        </ul>
                    </div>
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
(function() {

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
    var oList = G("listBox");

    var oPrev = G("prev");
    var oNext = G("next");

    var oListLi = oList.getElementsByTagName("li");
    var len2 = oListLi.length;

    var oListUl = oList.getElementsByTagName("ul")[0];
    var w2 = oListLi[0].offsetWidth;

    oListUl.style.width = w2 * len2 + "px";

    var index = 0;

    var num = 5;
    var num2 = Math.ceil(num / 2);

    function Change() {


        if (index < num2) {
            Animate(oListUl, {
                left: 0
            });
        } else if (index + num2 <= len2) {
            Animate(oListUl, {
                left: -(index - num2 + 1) * w2
            });
        } else {
            Animate(oListUl, {
                left: -(len2 - num) * w2
            });
        }

        for (var i = 0; i < len2; i++) {
            oListLi[i].className = "";
            if (i == index) {
                oListLi[i].className = "on";
            }
        }
    }

    oNext.onclick = function() {
        index++;
        index = index == len2 ? 0 : index;
        Change();
    }

    oPrev.onclick = function() {
        index--;
        index = index == -1 ? len2 - 1 : index;
        Change();
    }

    for (var i = 0; i < len2; i++) {
        oListLi[i].index = i;
        oListLi[i].onclick = function() {
            index = this.index;
            Change();
        }
    }

})()
</script>

</html>
