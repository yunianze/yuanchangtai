<table border="0" width="100%" bordercolor="#FFFFFF">
	<tr>
		<td width="5%"><input type="checkbox" name="check_all" id="check_all" value="1" onClick="select_ok('selectform','selectall','check_all');"/></td>
		<td width="10%"><a id="btlimit_amid" class="infolink06" href="javascript:onlimit('amid','asc','#btlimit_amid','#limit_amid','','selectform','selectall','check_all')"  hidefocus="true"><?php echo $this->_tpl_vars['ST']['forumtype_text_tid'] ?></a><span id="limit_amid" class="limitdesc"></span></td>
		<td width="30%"><?php echo $this->_tpl_vars['ST']['albummain_text_name'] ?></td>
		<td width="15%"><?php echo $this->_tpl_vars['ST']['templatemain_text_time'] ?></td>
		<td width="10%"><?php echo $this->_tpl_vars['ST']['forumtype_text_class'] ?></td>
		<td width="30%"><?php echo $this->_tpl_vars['ST']['templatemain_text_set'] ?></td>
	</tr>
</table>