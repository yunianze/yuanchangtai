<?php if(count($this->_tpl_vars['array']) > 0){ ?>
<?php if (count($this->_tpl_vars['array'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['array']); $list++){?>
<div class="infolist" onselectstart="return false;" ondblClick="javascript:parent.onbotton('<?php echo $this->_tpl_vars['ST']['formmessmain_text_set_botton'] ?>','index.php?archive=formmessmain&action=read&fvid=<?php echo $this->_tpl_vars['array'][$list]['fvid'] ?>&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),true,'messageedit<?php echo $this->_tpl_vars['array'][$list]['fvid'] ?>',self.frameElement.getAttribute('name'));">
	<table border="0" style="border-collapse:collapse" width="100%" bordercolor="#FFFFFF">
		<tr>
			<td width="5%"><input type="checkbox" name="messselectinfoid" value="<?php echo $this->_tpl_vars['array'][$list]['fvid'] ?>"></td>
			<td width="10%"><?php echo $this->_tpl_vars['array'][$list]['fvid'] ?></td>
			<td width="60%"><?php echo $this->timeformat($this->_tpl_vars['array'][$list]['addtime'],3) ?></td>
			<td width="10%" id="infotype">
				<table>
					<tr>
						<td><?php if($this->_tpl_vars['array'][$list]['isreply']==1){ ?><span class="select_ok"></span><?php }else{ ?><span class="select_no"></span><?php } ?></td>
					</tr>
				</table>
			</td>
			<td width="15%" id="infotype">
				<table>
					<tr>
						<td><a class="setedit3" onclick="javascript:parent.onbotton('<?php echo $this->_tpl_vars['ST']['formmessmain_text_set_botton'] ?>','index.php?archive=formmessmain&action=read&fvid=<?php echo $this->_tpl_vars['array'][$list]['fvid'] ?>&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),false,'messageedit<?php echo $this->_tpl_vars['array'][$list]['fvid'] ?>',self.frameElement.getAttribute('name'));" id="messageedit<?php echo $this->_tpl_vars['array'][$list]['fvid'] ?>" href="#body" title="<?php echo $this->_tpl_vars['ST']['formmessmain_text_set_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['formmessmain_text_set_botton'] ?></a></td>
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