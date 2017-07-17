<?php if(count($this->_tpl_vars['array']) > 0){ ?>
<?php if (count($this->_tpl_vars['array'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['array']); $list++){?>
<div class="infolist" onselectstart="return false;" title="<?php echo $this->_tpl_vars['array'][$list]['typename'] ?>-<?php echo $this->_tpl_vars['array'][$list]['attrname'] ?>"<?php if($this->powercheck('communicate','formattredit')==true ){ ?> ondblClick="javascript:parent.onbotton('<?php echo $this->_tpl_vars['array'][$list]['attrname'] ?><?php echo $this->_tpl_vars['ST']['formmain_attr_edit'] ?>','index.php?archive=formmain&action=formattredit&faid=<?php echo $this->_tpl_vars['array'][$list]['faid'] ?>&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),true,'attedit<?php echo $this->_tpl_vars['array'][$list]['faid'] ?>',self.frameElement.getAttribute('name'));"<?php } ?>>
	<table border="0" style="border-collapse:collapse" width="100%" bordercolor="#FFFFFF">
		<tr>
			<td width="4%"><input type="checkbox" name="attrselectinfoid" value="<?php echo $this->_tpl_vars['array'][$list]['faid'] ?>"></td>
			<td width="8%">
				<input type="hidden" name="infoid" id="infoid" value="<?php echo $this->_tpl_vars['array'][$list]['faid'] ?>">
				<input type="text" name="pid" size="3" value="<?php echo $this->_tpl_vars['array'][$list]['pid'] ?>" class="infoInput" >
			</td>
			<td width="8%"><?php echo $this->_tpl_vars['array'][$list]['faid'] ?></td>
			<td width="20%"><?php echo $this->cutstr($this->_tpl_vars['array'][$list]['typename'],10) ?></td>
			<td width="17%"><?php echo $this->_tpl_vars['array'][$list]['attrname'] ?></td>
			<td width="12%"><?php echo $this->_tpl_vars['array'][$list]['inputtype'] ?></td>
			<td width="7%" id="infotype">
				<table>
					<tr>
						<td><?php if($this->_tpl_vars['array'][$list]['isline']==1){ ?><span class="select_ok"></span><?php }else{ ?><span class="select_no"></span><?php } ?></td>
					</tr>
				</table>
			</td>
			<td width="7%" id="infotype">
				<table>
					<tr>
						<td><?php if($this->_tpl_vars['array'][$list]['isvalidate']==1){ ?><span class="select_ok"></span><?php }else{ ?><span class="select_no"></span><?php } ?></td>
					</tr>
				</table>
			</td>
			<td width="7%" id="infotype">
				<table>
					<tr>
						<td><?php if($this->_tpl_vars['array'][$list]['isclass']==1){ ?><span class="audit_ok" title="<?php echo $this->_tpl_vars['ST']['modelmanage_audit_ok'] ?>"></span><?php }else{ ?><span class="audit_no" title="<?php echo $this->_tpl_vars['ST']['modelmanage_audit_no'] ?>"></span><?php } ?></td>
					</tr>
				</table>
			</td>
			<td width="10%" id="infotype">
				<?php if($this->powercheck('communicate','formattredit')==true ){ ?>
				<table>
					<tr>
						<td><a class="setedit" onclick="javascript:parent.onbotton('<?php echo $this->_tpl_vars['array'][$list]['attrname'] ?><?php echo $this->_tpl_vars['ST']['formmain_attr_edit'] ?>','index.php?archive=formmain&action=formattredit&faid=<?php echo $this->_tpl_vars['array'][$list]['faid'] ?>&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),false,'attedit<?php echo $this->_tpl_vars['array'][$list]['faid'] ?>',self.frameElement.getAttribute('name'));" id="attedit<?php echo $this->_tpl_vars['array'][$list]['faid'] ?>" href="#body" title="<?php echo $this->_tpl_vars['ST']['formmain_attr_edit'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['setedit_botton'] ?></a></td>
					</tr>
				</table>
				<?php } ?>
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