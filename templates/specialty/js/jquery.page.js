//分页插件 
(function($) {
    var ms = {
        init: function(obj, args) {
            return (function() {
                ms.fillHtml(obj, args);
                ms.bindEvent(obj, args);
            })();
        },
        //填充html 
        fillHtml: function(obj, args) {
            return (function() {
                obj.empty();
                //上一页 
                if (args.current > 1) {
                    obj.append('<a href="javascript:;" class="prevPage">&nbsp;</a>');
                } else {
                    obj.remove('.prevPage');
                    obj.append('<span class="disabled  prevPage ">&nbsp;</span>');
                }
                //中间页码 
                if (args.current != 1 && args.current >= 4 && args.pageCount != 4) {
                    obj.append('<a href="javascript:;" class="tcdNumber">' + 1 + '</a>');
                }
                if (args.current - 2 > 2 && args.current <= args.pageCount && args.pageCount > 5) {
                    obj.append('<span>...</span>');
                }
                var start = args.current - 2,
                    end = args.current + 2;
                if ((start > 1 && args.current < 4) || args.current == 1) {
                    end++;
                }
                if (args.current > args.pageCount - 4 && args.current >= args.pageCount) {
                    start--;
                }
                for (; start <= end; start++) {
                    if (start <= args.pageCount && start >= 1) {
                        if (start != args.current) {
                            obj.append('<a href="javascript:;" class="tcdNumber">' + start + '</a>');
                        } else {
                            obj.append('<span class="current">' + start + '</span>');
                            $(".page").eq(start - 1).fadeIn();
                            $(".page").eq(start - 1).siblings().hide();
                        }
                    }
                }
                if (args.current + 2 < args.pageCount - 1 && args.current >= 1 && args.pageCount > 5) {
                    obj.append('<span>...</span>');
                }
                if (args.current != args.pageCount && args.current < args.pageCount - 2 && args.pageCount != 4) {
                    obj.append('<a href="javascript:;" class="tcdNumber">' + args.pageCount + '</a>');
                }
                //下一页 
                if (args.current < args.pageCount) {
                    obj.append('<a href="javascript:;" class="nextPage">&nbsp;</a>');
                } else {
                    obj.remove('.nextPage');
                    obj.append('<span class="disabled nextPage">&nbsp;</span>');
                }
            })();
        },
        //绑定事件 
        bindEvent: function(obj, args) {
            return (function() {
                obj.on("click", "a.tcdNumber", function() {
                    var current = parseInt($(this).text());
                    ms.fillHtml(obj, { "current": current, "pageCount": args.pageCount });
                    if (typeof(args.backFn) == "function") {
                        args.backFn(current);
                    }
                });
                //上一页 
                obj.on("click", "a.prevPage", function() {
                    var current = parseInt(obj.children("span.current").text());
                    ms.fillHtml(obj, { "current": current - 1, "pageCount": args.pageCount });
                    if (typeof(args.backFn) == "function") {
                        args.backFn(current - 1);
                        console.log(current - 1);
                        // 判断当前页切换内容
                        $(".page").each(function() {
                                $(".page").eq(current - 2).fadeIn().end().siblings().hide();
                            })
                            // 判断当前页
                    }
                });
                //下一页 
                obj.on("click", "a.nextPage", function() {
                    var current = parseInt(obj.children("span.current").text());
                    ms.fillHtml(obj, { "current": current + 1, "pageCount": args.pageCount });
                    if (typeof(args.backFn) == "function") {
                        args.backFn(current + 1);
                        // 判断当前页切换内容
                        $(".page").each(function() {
                                console.log(current);
                                $(".page").eq(current).fadeIn().end().siblings().hide();
                            })
                            // 判断当前页
                    }
                });
            })();
        }
    }
    $.fn.createPage = function(options) {
        var args = $.extend({
            pageCount: 10,
            current: 1,
            backFn: function() {}
        }, options);
        ms.init(this, args);
    }
})(jQuery);

    var page=document
    var cut=$(".page").size()-1;
if ($(".page").eq(cut).children().length>0) {
    var num = $(".page").size();
     console.log(cut)
} else {
     var num = $(".page").size()-1;
}
$(".tcdPageCode").createPage({
    pageCount: num,
    current: 1,
    backFn: function(p) {
        //单击回调方法，p是当前页码 
    }
});
// pageCount：总页数 
// current：当前页
