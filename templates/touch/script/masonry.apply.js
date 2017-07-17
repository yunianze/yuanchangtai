$(function() {
    var $container = $('#masonry');
    $container.imagesLoaded(function() {
        $container.masonry({
            itemSelector: '.item',
            gutter: 0,
            isAnimated: true,
        });
    });
});
