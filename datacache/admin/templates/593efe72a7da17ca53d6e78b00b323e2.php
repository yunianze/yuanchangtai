<table border="0" width="100%" bordercolor="#FFFFFF">
	<tr>
		<td width="5%"><input type="checkbox" name="check_all" id="check_all" value="1" onClick="select_ok('selectform', 'selectall', 'check_all');"/></td>
		<td width="8%"><a id="btlimit_pid" class="infolink06" href="javascript:onlimit('pid','asc','#btlimit_pid','#limit_pid','#limit_id','selectform','selectall','check_all')" hidefocus="true"><?php echo $this->_tpl_vars['ST']['language_text_pid'] ?></a><span id="limit_pid" class="limitdesc displaynone"></span></td>
		<td width="8%"><a id="btlimit_id" class="infolink06" href="javascript:onlimit('id','asc','#btlimit_id','#limit_id','#limit_pid','selectform','selectall','check_all')"  hidefocus="true"><?php echo $this->_tpl_vars['ST']['language_text_id'] ?></a><span id="limit_id" class="limitdesc"></span></td>
		<td width="20%"><?php echo $this->_tpl_vars['ST']['language_text_name'] ?></td>
		<td width="10%"><?php echo $this->_tpl_vars['ST']['language_text_key'] ?></td>
		<td width="8%"><?php echo $this->_tpl_vars['ST']['language_text_class'] ?></td>
		<td width="41%"><?php echo $this->_tpl_vars['ST']['language_text_set'] ?></td>
	</tr>
</table>