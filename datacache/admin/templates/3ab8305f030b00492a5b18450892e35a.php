<script type="text/javascript">
$().ready(function() {
	$(".bottonmenu li span").hover(function() {
		$(this).parent().find("ul.subnavlist").slideDown('fast').show();
		$(this).parent().hover(function() {}, function(){
			$(this).parent().find("ul.subnavlist").fadeOut('fast');
		});
	});
});
</script>
<div id="headbg">
	<div id="head">
		<div class="logo"><div id="logo"></div></div>
		<div id="botton">
			<ul class="bottonmenu">
				<li id="topleftbg"></li>
				<li id="bottonbg" style="width:60px;"><a class="annex" hidefocus="true" href="index.php?archive=management&action=tab&loadfun=mangercenter&out=tabcenter">管理主页</a></li>
				<li id="bottonbg" style="width:60px;"><a class="annex" hidefocus="true" href="#body" onclick="windowsdig('<?php echo $this->_tpl_vars['ST']['adminuser_top_password_edit'] ?>','iframe:index.php?archive=management&action=password&iframename=','680px','340px','iframe');"><?php echo $this->_tpl_vars['ST']['adminuser_top_password_edit'] ?></a></li>
				<li id="bottonbg" style="width:60px;"><a class="annex" hidefocus="true" href="#body" onclick="windowsdig('<?php echo $this->_tpl_vars['ST']['management_login_volupdatetitle'] ?>','iframe:index.php?archive=upgrademain&action=upgrade&iframename=','680px','440px','iframe');"><?php echo $this->_tpl_vars['ST']['management_login_volupdatetitle'] ?></a></li>
				<li id="bottonbg" style="width:60px;"><a class="annex" hidefocus="true" href="#body" onclick="windowsdig('<?php echo $this->_tpl_vars['ST']['adminuser_top_clearcache'] ?>','iframe:index.php?archive=management&action=clearcache&iframename=','680px','250px','iframe');"><?php echo $this->_tpl_vars['ST']['adminuser_top_clearcache'] ?></a></li>
				<?php if($this->powercheck('system','filecheck')==true ){ ?>
				<li id="bottonbg" style="width:90px;"><a class="annex" hidefocus="true" href="#body" onclick="windowsdig('<?php echo $this->_tpl_vars['ST']['adminuser_top_filecheck'] ?>','iframe:index.php?archive=management&action=filecheck&iframename=','680px','450px','iframe');"><?php echo $this->_tpl_vars['ST']['adminuser_top_filecheck'] ?></a></li>
				<?php } ?>
				<?php if($this->powercheck('system','clearlog')==true ){ ?>
				<li id="bottonbg" style="width:60px;"><a class="annex" hidefocus="true" href="#body" onclick="windowsdig('<?php echo $this->_tpl_vars['ST']['adminuser_top_clearlog'] ?>','iframe:index.php?archive=management&action=clearlog&iframename=','680px','340px','iframe');"><?php echo $this->_tpl_vars['ST']['adminuser_top_clearlog'] ?></a></li>
				<?php } ?>
				<li id="bottonbg" style="width:120px;">
					<span>网站漏洞安全扫描</span>
					<ul class="subnavlist">
						<li><a target="_blank" hidefocus="true" href="http://webscan.360.cn/index/checkwebsite/?url=<?php echo $this->_tpl_vars['softhttp'] ?>">360网站安全扫描</a></li>
						<li><a target="_blank" hidefocus="true" href="http://www.scanv.com/physical/report/?domain=<?php echo $this->_tpl_vars['softhttp'] ?>">SCANV安全扫描</a></li>
					</ul>
				</li>
				<li id="bottonbg" style="width:60px;"><a class="annex" target="_blank" hidefocus="true" href="<?php echo $this->_tpl_vars['adminurl'] ?>">网站预览</a></li>
				<li id="bottonbg" style="width:40px;"><a class="annex" hidefocus="true" href="index.php?archive=adminuser&amp;action=loingout">退出</a></li>
				<li id="rightbg"></li>
			</ul>
		</div>
	</div>
	<div class="menubotton">
		826dfebd693cd4d9f372d59e23d5a077menu|<?php echo $this->_tpl_vars['menuid'] ?>||826dfebd693cd4d9f372d59e23d5a077
	</div>
	<div class="menuline"></div>
	<div class="menuline2"></div>
</div>
<?php echo $this->_tpl_vars['lng'] ?>