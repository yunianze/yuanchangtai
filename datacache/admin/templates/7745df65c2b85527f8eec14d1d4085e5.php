<table border="0" width="100%" bordercolor="#FFFFFF">
	<tr>
		<td width="5%"><input type="checkbox" name="check_all" id="check_all" value="1" onClick="select_ok('selectform', 'selectall', 'check_all');"/></td>
		<td width="10%"><a id="btlimit_pid" class="infolink06" href="javascript:onlimit('pid','asc','#btlimit_pid','#limit_pid','#limit_id','selectform','selectall','check_all')" hidefocus="true"><?php echo $this->_tpl_vars['ST']['seomanage_text_pid'] ?></a><span id="limit_pid" class="limitdesc displaynone"></span></td>
		<td width="10%"><a id="btlimit_id" class="infolink06" href="javascript:onlimit('kid','asc','#btlimit_id','#limit_id','#limit_pid','selectform','selectall','check_all')"  hidefocus="true"><?php echo $this->_tpl_vars['ST']['seomanage_text_kid'] ?></a><span id="limit_id" class="limitdesc"></span></td>
		<td width="30%"><?php echo $this->_tpl_vars['ST']['seomanage_text_keywordname'] ?></td>
		<td width="15%"><?php echo $this->_tpl_vars['ST']['seomanage_text_hit'] ?></td>
		<td width="10%"><?php echo $this->_tpl_vars['ST']['seomanage_text_islink'] ?></td>
		<td width="10%"><?php echo $this->_tpl_vars['ST']['seomanage_text_class'] ?></td>
		<td width="10%"><?php echo $this->_tpl_vars['ST']['seomanage_text_set'] ?></td>
	</tr>
</table>