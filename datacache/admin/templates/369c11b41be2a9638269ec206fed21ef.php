<table border="0" width="100%" bordercolor="#FFFFFF">
	<tr>
		<td width="5%"><input type="checkbox" name="check_all" id="check_all" value="1" onClick="select_ok('selectform','selectall','check_all');"/></td>
		<td width="6%"><a id="btlimit_fgid" class="infolink06" href="javascript:onlimit('fgid','asc','#btlimit_fgid','#limit_fgid','','selectform','selectall','check_all')"  hidefocus="true"><?php echo $this->_tpl_vars['ST']['formmain_text_mid'] ?></a><span id="limit_fgid" class="limitdesc"></span></td>
		<td width="8%"><?php echo $this->_tpl_vars['ST']['formmain_text_lng'] ?></td>
		<td width="35%"><?php echo $this->_tpl_vars['ST']['formmain_text_formgroupname'] ?></td>
		<td width="6%"><?php echo $this->_tpl_vars['ST']['formmain_text_ismenu'] ?></td>
		<td width="10%"><?php echo $this->_tpl_vars['ST']['formmain_text_class'] ?></td>
		<td width="30%"><?php echo $this->_tpl_vars['ST']['formmain_text_set'] ?></td>
	</tr>
</table>