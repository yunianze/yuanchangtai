<?php if(count($this->_tpl_vars['array']) > 0){ ?>
<?php if (count($this->_tpl_vars['array'])>0){$divid_list=1;for($list=0;$list<count($this->_tpl_vars['array']); $list++){?>
<div class="infolist" title="<?php echo $this->_tpl_vars['array'][$list]['filetitle'] ?>" onselectstart="return false;" <?php if($this->powercheck('communicate','albumfileedit')==true ){ ?>ondblClick="javascript:parent.onbotton('<?php echo $this->_tpl_vars['ST']['setedit_botton'] ?>','index.php?archive=albummain&action=albumfileedit&afid=<?php echo $this->_tpl_vars['array'][$list]['afid'] ?>&type=edit&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),true,'albumafileedit<?php echo $this->_tpl_vars['array'][$list]['afid'] ?>',self.frameElement.getAttribute('name'));"<?php } ?>>
     <table border="0" style="border-collapse:collapse" width="100%" bordercolor="#FFFFFF">
		<tr>
			<td width="5%"><input type="checkbox" name="selectinfoid" value="<?php echo $this->_tpl_vars['array'][$list]['afid'] ?>"></td>
			<td width="8%"><input type="hidden" name="infoid" value="<?php echo $this->_tpl_vars['array'][$list]['afid'] ?>"><input type="text" name="infopid" size="3" value="<?php echo $this->_tpl_vars['array'][$list]['pid'] ?>" class="infoInput" onclick="if(this.value=='<?php echo $this->_tpl_vars['array'][$list]['pid'] ?>'){this.value = '';}else {this.select();}" onblur="if(this.value ==''){this.value ='<?php echo $this->_tpl_vars['array'][$list]['pid'] ?>';}"></td>
			<td width="8%"><?php echo $this->_tpl_vars['array'][$list]['afid'] ?></td>
			<td width="25%"><?php echo $this->_tpl_vars['array'][$list]['filetitle'] ?></td>
			<td width="20%"><?php echo $this->_tpl_vars['array'][$list]['filename'] ?></td>
			<td width="14%"><?php echo $this->timeformat($this->_tpl_vars['array'][$list]['addtime'],3) ?></td>
			<td width="8%"><?php if($this->_tpl_vars['array'][$list]['isrecomm']==1){ ?><?php echo $this->_tpl_vars['ST']['seomanage_audit_ok'] ?><?php }else{ ?><?php echo $this->_tpl_vars['ST']['seomanage_audit_no'] ?><?php } ?></td>
			<td width="12%" id="infotype">
				<table border="0" style="border-collapse:collapse" bordercolor="#FFFFFF">
					<tr>
						<td>
							<a class="setedit" target="_blank" href="<?php echo $this->_tpl_vars['adminurl'] ?><?php echo $this->_tpl_vars['array'][$list]['filepath'] ?><?php echo $this->_tpl_vars['array'][$list]['filename'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['filemanage_view_botton'] ?></a>
						</td>
						<?php if($this->powercheck('communicate','albumfileedit')==true ){ ?>
						<td class="padding-left3"><a class="setedit" onclick="javascript:parent.onbotton('<?php echo $this->_tpl_vars['ST']['setedit_botton'] ?>','index.php?archive=albummain&action=albumfileedit&afid=<?php echo $this->_tpl_vars['array'][$list]['afid'] ?>&type=edit&freshid='+Math.random()+'&iframename='+self.frameElement.getAttribute('name'),true,'albumafileedit<?php echo $this->_tpl_vars['array'][$list]['afid'] ?>',self.frameElement.getAttribute('name'));" id="albumafileedit<?php echo $this->_tpl_vars['array'][$list]['afid'] ?>" href="#body" title="<?php echo $this->_tpl_vars['ST']['setedit_botton'] ?>" hidefocus="true"><?php echo $this->_tpl_vars['ST']['setedit_botton'] ?></a></td>
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