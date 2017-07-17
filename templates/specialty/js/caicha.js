// JavaScript Document/

$(document).ready(function() {
    for (i = 0; i < $('.xLi').length; i++) { 
        $(".thumbs").append("<li></li>"); 
    }
     $('.thumbs li').eq(0).addClass('curr');
    startTimer();
    var timer;
    var slideCount = $('.xLi').length;
    var currSlide = $('.thumbs li').filter('.curr').index();
    var nextSlide = currSlide + 1;
    var fadeSpeed = 800;
    // var wLi=$('.xLi').eq(0).width();
    // var total= slideCount*(wLi+20);
    // $('.xianchang').css("width",total+'px');


    function startTimer() {
        timer = setInterval(function() {
            $('.xLi').eq(currSlide).addClass('curr');
            $('.xLi, .thumbs li').removeClass('curr');
            $('.xLi').eq(nextSlide).fadeIn(fadeSpeed);
            $('.thumbs li').eq(nextSlide).addClass('curr');
            currSlide = nextSlide;
            nextSlide = currSlide + 1 < slideCount ? currSlide + 1 : 0;
        }, 12000);
    }
    $('.thumbs li').click(function() {
        clearInterval(timer);
        startTimer();
        currSlide = $(this).index();
        nextSlide = currSlide + 1 < slideCount ? currSlide + 1 : 0;;
        $('.xLi').fadeOut(fadeSpeed);
        $('.xLi, .thumbs li').removeClass('curr');
        $('.xLi').eq($(this).index()).fadeIn(fadeSpeed);
        $(this).addClass('curr');
    });
});
