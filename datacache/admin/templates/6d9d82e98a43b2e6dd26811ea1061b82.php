<?php if(count($this->_tpl_vars['upfilearray']) > 0){ ?>
<div class="infolist">
	<table border="0" style="border-collapse:collapse" width="100%" bordercolor="#FFFFFF" onclick="javascript:search('<?php echo $this->_tpl_vars['upfilearray']['loadurl'] ?>');">
		<tr>
			<td width="5%"></td>
			<td width="40%" id="left" class="padding-left3"><img src="templates/images/fileicon/dir.png">/<?php echo $this->_tpl_vars['upfilearray']['filepath'] ?></td>
			<td width="10%"></td>
			<td width="20%"></td>
			<td width="25%" id="infotype">
				<table border="0" style="border-collapse:collapse" bordercolor="#FFFFFF">
					<tr>
						<td><a class="setedit3" href="#body" onclick="javascript:search('<?php echo $this->_tpl_vars['upfilearray']['loadurl'] ?>');" title="<?php echo $this->_tpl_vars['ST']['filemanage_view_updir'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['filemanage_view_updir'] ?></a></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>
<?php } ?>
<input type="hidden" name="filepath" id="filepath" value="<?php echo $this->_tpl_vars['filepath'] ?>">
<?php if(count($this->_tpl_vars['array']) > 0){ ?>
<?php if (count($this->_tpl_vars['array'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['array']); $list++){?>
<div class="infolist">
	<table border="0"  style="border-collapse:collapse" width="100%" bordercolor="#FFFFFF">
		<tr>
			<td width="5%"><input type="checkbox" name="selectinfoid" value="<?php echo $this->_tpl_vars['array'][$list]['fiid'] ?>"></td>
			<td width="40%" id="left" class="padding-left3"<?php if($this->_tpl_vars['array'][$list]['filetype']=='dir'){ ?> title="<?php echo $this->_tpl_vars['ST']['filemanage_view_opendir'] ?>"  onClick="javascript:search('<?php echo $this->_tpl_vars['array'][$list]['loadurl'] ?>');"<?php } ?>><img src="templates/images/fileicon/<?php echo $this->_tpl_vars['array'][$list]['extension'] ?>.png"> <?php echo $this->_tpl_vars['array'][$list]['filename'] ?></td>
			<td width="10%"><?php if($this->_tpl_vars['array'][$list]['filetype']!='dir'){ ?><?php echo $this->format_size($this->_tpl_vars['array'][$list]['size'],1) ?><?php } ?></td>
			<td width="20%"><?php echo $this->timeformat($this->_tpl_vars['array'][$list]['addtime'],3) ?></td>
			<td width="25%" id="infotype">
				<table border="0" style="border-collapse:collapse" bordercolor="#FFFFFF">
					<tr>
						<?php if($this->_tpl_vars['array'][$list]['filetype']=='img'){ ?>
							<td>
								<a class="setedit" target="_blank" href="<?php echo $this->_tpl_vars['array'][$list]['url'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['filemanage_view_botton'] ?></a>
							</td>
							<?php if($this->powercheck('communicate','fileedit')==true ){ ?>
							<td class="padding-left3">
								<a class="setedit2" onclick="javascript:parent.onbotton('<?php echo $this->_tpl_vars['ST']['filemanage_view_edit'] ?>','index.php?archive=filemain&action=imagecrop&dir=<?php echo $this->_tpl_vars['array'][$list]['filepath'] ?>&filename=<?php echo $this->_tpl_vars['array'][$list]['filename'] ?>&type=<?php echo $this->_tpl_vars['array'][$list]['filetype'] ?>&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),true,'imagecrop<?php echo $this->_tpl_vars['array'][$list]['fiid'] ?>',self.frameElement.getAttribute('name'));" id="imagecrop<?php echo $this->_tpl_vars['array'][$list]['fiid'] ?>" href="#body" title="<?php echo $this->_tpl_vars['ST']['filemanage_view_edit'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['filemanage_view_edit'] ?></a>
							</td>
							<?php } ?>
						<?php } ?>
						<?php if($this->powercheck('communicate','fileedit')==true && $this->_tpl_vars['array'][$list]['filetype']=='dir' ){ ?>
						<td class="padding-left3">
							<a class="setedit3" onclick="javascript:parent.onbotton('<?php echo $this->_tpl_vars['ST']['filemanage_view_rename1'] ?>','index.php?archive=filemain&action=renamedir&dir=<?php echo $this->_tpl_vars['array'][$list]['filepath'] ?>&filename=<?php echo $this->_tpl_vars['array'][$list]['filename'] ?>&type=dir&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),true,'filerename<?php echo $this->_tpl_vars['array'][$list]['fiid'] ?>',self.frameElement.getAttribute('name'));" id="filerename<?php echo $this->_tpl_vars['array'][$list]['fiid'] ?>" href="#body" title="<?php echo $this->_tpl_vars['ST']['filemanage_view_rename1'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['filemanage_view_rename1'] ?></a>
						</td>
						<?php } ?>
						<?php if($this->powercheck('communicate','fileedit')==true && $this->_tpl_vars['array'][$list]['filetype']!='dir' ){ ?>
						<td class="padding-left3">
							<a class="setedit3" onclick="javascript:parent.onbotton('<?php echo $this->_tpl_vars['ST']['filemanage_view_rename'] ?>','index.php?archive=filemain&action=renamedir&dir=<?php echo $this->_tpl_vars['array'][$list]['filepath'] ?>&filename=<?php echo $this->_tpl_vars['array'][$list]['filename'] ?>&type=<?php echo $this->_tpl_vars['array'][$list]['filetype'] ?>&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),true,'filerename<?php echo $this->_tpl_vars['array'][$list]['fiid'] ?>',self.frameElement.getAttribute('name'));" id="filerename<?php echo $this->_tpl_vars['array'][$list]['fiid'] ?>" href="#body" title="<?php echo $this->_tpl_vars['ST']['filemanage_view_rename'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['filemanage_view_rename'] ?></a>
						</td>
						<?php } ?>
					</tr>
				</table>

			</td>
		</tr>
	</table>
</div>
<?php }} ?>
<?php }else{ ?>
<div class="infolist">
	<table border="0" style="border-collapse:collapse" width="100%" bordercolor="#FFFFFF">
		<tr>
			<td align="center"><?php echo $this->_tpl_vars['ST']['list_nothing_title'] ?></td>
		</tr>
	</table>
</div>
<?php } ?>      