<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title><?php echo $this->_tpl_vars['softtitle'] ?></title>
<link href="templates/css/baselist.css" rel="stylesheet" type="text/css" />
<link href="templates/css/all.css" rel="stylesheet" type="text/css" />
<link href="templates/css/formdiv.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/clickTablist.js"></script>
<script type="text/javascript" src="js/control.js"></script>
<script type="text/javascript" src="js/dialog.js"></script>
<script type="text/javascript" src="js/jscroll.js"></script>
<script type="text/javascript">
	var tabtitle='<?php echo $this->_tpl_vars['tab']['title'] ?>';
	var tabdataLink='<?php echo $this->_tpl_vars['tab']['url'] ?>';
	var esptabkey={showLoader:function(){$('#divMainLoader').css('display','none')},removeLoader:function(){$('#divMainLoader').css('display','none')},buildTree:function(){$('.functree li').each(function(){if($(this).is(':has(ul)')){$(this).addClass('collapse')}if($(this).next().is('li')||$(this).next().is('ul')){$(this).css({borderLeft:'dashed 1px #dedede'})}});$('li.collapse>span').click(function(){$(this).next('ul').slideToggle('fast',function(){if($(this).parent().hasClass('collapse')){$(this).parent().removeClass('collapse').addClass('expand')}else{$(this).parent().removeClass('expand').addClass('collapse')}})});$('p.tabclick').css({'cursor':'pointer'}).hover(function(){$(this).css({'color':'#3de','text-decoration':'none'})},function(){$(this).css({'color':'#000','text-decoration':'none'})}).click(function(){var dataLink=$(this).attr('dataLink')+"&freshid="+Math.random();$.fn.jerichoTab.addTab({tabFirer:$(this),title:$(this).text(),closeable:true,iconImg:$(this).attr('iconImg'),data:{dataType:$(this).attr('dataType'),dataLink:dataLink}}).showLoader().loadData()})},buildTabpanel:function(){$.fn.initJerichoTab({renderTo:'.divRight',uniqueId:'myJerichoTab',contentCss:{'height':$('.divRight').height()-40},tabs:[{closeable:false,iconImg:'',title:tabtitle,data:{dataType:'iframe',dataLink:tabdataLink}}],activeTabIndex:0,loadOnce:true})}};
	$().ready(function() {
		d1 = new Date().getTime();
		esptabkey.showLoader();
		var w = $(window).width()-20;
		var h = $(window).height()-98;
		$('.divRight').css({ width: w+10, height: h});
		<?php echo $this->_tpl_vars['jsstr'] ?>
		$("#clickmenubotton li span").click(function(){$(this).addClass("bgmenuhove2");$(this).parent().find("ul.subnav").slideDown('fast').show();$(this).parent().hover(function(){},function(){$(this).parent().find("ul.subnav").fadeOut('fast');$(this).parent().find("span").removeClass("bgmenuhove2")})});$(".srcolcontent,#srcolcontent").jscroll({W:"15px",BgUrl:"url(templates/images/s_bg.gif)",Bg:"right 0 repeat-y",Bar:{Bd:{Out:"#bcbcbc",Hover:"#ccc"},Bg:{Out:"-45px 0 repeat-y",Hover:"-58px 0 repeat-y",Focus:"-71px 0 repeat-y"}},Btn:{btn:true,uBg:{Out:"0 0",Hover:"-15px 0",Focus:"-30px 0"},dBg:{Out:"0 -15px",Hover:"-15px -15px",Focus:"-30px -15px"}},Fn:function(){}});$("#centerhidden").toggle(function(){scrolclear()},function(){scrolopen()});
	});
	function sizewindow(){var w=$(window).width()-20;var h=$(window).height()-98;$('.divRight').css({width:w+10,height:h});$('#srcolcontent').css({height:h-175});$('#modelleftcontent').css({height:h-45});$('#jerichotab_contentholder').css({height:h-40});$('.jerichotabiframeclass').css({height:h-40})}var resizewindow=null;window.onresize=function(){var h=$(window).height();if(resizewindow!=h){sizewindow();resizewindow=h}};function locationout(){window.location.replace('index.php?archive=adminuser&action=loingout')}
	document.oncontextmenu=new Function('event.returnValue=false;');
	document.onselectstart=new Function('event.returnValue=false;');
</script>
</head>
<body>
826870a379354a6b252b0af7b0331b7ftop.html|826870a379354a6b252b0af7b0331b7f
<div class="centerright">
	<div class="divRight"></div>
	<div class="ajaxloading" id="divMainLoader">正在加载中，请稍等...</div>
	<b id="firefoxuser" style="display:none"></b>
	<b id="ieuser" style="display:none"></b>
</div>
</body>
</html>