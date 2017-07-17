//触觉事件监听
document.body.addEventListener('touchstart', function() {});

//高度相等
var img = new Image();
img.onload = function(){
    function compareHeight(){
        $bodyHeight = $('body').height();
        $('#wrap').css('minHeight',$bodyHeight);
        $wrapHeight = $('#wrap').height();
        $navHeight = $('#nav').height();
        if($bodyHeight > $wrapHeight){
            $('#nav').css('minHeight',$bodyHeight);
        } else {
            $('#nav').css('minHeight',$wrapHeight);
        }
        $('#wrap').css('minHeight',$navHeight);
    }
    compareHeight();
    $('#nav').resize(function(){
        compareHeight();
    });
};

//导航开关
$(function() {
    $wrapWidth = $('#wrap').width();
    $navWidth = $('#nav').width();
    $left = -$navWidth;
    // $('#navSwitch').toggle(
    //     function() {
    //         $('#wrap').stop().animate({
    //             left: left
    //         }, 600);
    //         $('#navSwitch').addClass('hover');
    //         $('#mask').css('display','block');
    //     },
    //     function() {
    //         $('#wrap').stop().animate({
    //             left: 0
    //         }, 600);
    //         $('#navSwitch').removeClass('hover');
    //         $('#mask').css('display','none');
    //     }
    // );
    $('#navSwitch').click(function() {
        if ($('#navSwitch').hasClass('hover')) {
            $('#wrap').stop().animate({
                left: 0
            }, 600);
            $('#navSwitch').removeClass('hover');
            $('#mask').css('display', 'none');
        } else {
            $('#wrap').stop().animate({
                left: $left
            }, 600);
            $('#navSwitch').addClass('hover');
            $('#mask').css('display', 'block');
        }
    });
    $('#mask').click(function() {
        $('#wrap').stop().animate({
            left: 0
        }, 600);
        $('#navSwitch').removeClass('hover');
        $('#mask').css('display', 'none');
    });
});

//搜索框onfocus
function searchOnFocus(that) {
    that.style.outline = "none";
    that.parentNode.style.border = "none";
    that.parentNode.style.padding = "1px";
    that.parentNode.style.boxShadow = "0 0 5px 0 #ce1a21 ";
    that.parentNode.style.backgroundColor = "#fff";
}

function searchOnBlur(that) {
    that.parentNode.style.border = "1px solid #ccc";
    that.parentNode.style.padding = "0px"
    that.parentNode.style.boxShadow = "none";
    that.parentNode.style.backgroundColor = "#f7f7f7";
}


//三级导航
$(function() {
    nav('#mainNav');
});

function nav(obj) {
    $l2 = $(obj).children('li').children('span');
    $l3 = $l2.siblings('ul').children('li').children('span');
    $l2.click(function() {
        $l2.not(this).siblings('ul').stop().slideUp(400); //关闭其他二级菜单
        $l2.not(this).removeClass('r180'); //初始化其他二级的箭头

        $l3.siblings('ul').stop().slideUp(400); //关闭所有三级菜单
        $l3.removeClass('r180'); //初始化所有三级级的箭头

        $(this).siblings('ul').stop().slideToggle(400); //子菜单显示关闭

        // backgroundcolor switch
        $l2.parent('li').not(this).removeClass('hover');
        $(this).parent('li').addClass('hover');

        // arrow switch
        if ($(this).hasClass('r180')) {
            $(this).removeClass('r180');
        } else {
            $(this).addClass('r180');
        }
    });
    $l3.click(function() {
        $l3.not(this).siblings('ul').stop().slideUp(400); //关闭其他三级
        $l3.not(this).removeClass('r180'); //初始化其他三级的箭头
        $(this).siblings('ul').stop().slideToggle(400); //子菜单显示关闭
        if ($(this).hasClass('r180')) {
            $(this).removeClass('r180');
        } else {
            $(this).addClass('r180');
        }
    });
}

//返回顶部
$(window).scroll(function() {
    if ($(window).scrollTop() > 200) {
        $("#slideup").fadeIn(300);
    } else {
        $("#slideup").fadeOut(300);
    }
});

function scrollToTop() {
    $("html,body").animate({
        scrollTop: 0
    }, 300);
}

//二级菜单
$(function(){
    $('#secNav h1').click(function(){
        $(this).siblings('ul').slideToggle(300);
        if($(this).hasClass('close')){
            $(this).removeClass('close');
        } else {
            $(this).addClass('close');
        }
    });
})