<table border="0" width="100%" bordercolor="#FFFFFF">
	<tr>
		<td width="4%"><input type="checkbox" name="check_all" id="check_all" value="1" onClick="select_ok('selectform','selectall','check_all');"/></td>
		<td width="8%"><a id="btlimit_pid" class="infolink06" href="javascript:onlimit('pid','desc','#btlimit_pid','#limit_pid','#limit_sid','selectform','selectall','check_all')"  hidefocus="true"><?php echo $this->_tpl_vars['ST']['subjectmanage_text_pid'] ?></a><span id="limit_pid" class="limitdesc displaynone"></span></td>
		<td width="8%"><a id="btlimit_sid" class="infolink06" href="javascript:onlimit('sid','asc','#btlimit_sid','#limit_sid','#limit_pid','selectform','selectall','check_all')"  hidefocus="true"><?php echo $this->_tpl_vars['ST']['subjectmanage_text_tid'] ?></a><span id="limit_sid" class="limitdesc"></span></td>
		<td width="6%"><?php echo $this->_tpl_vars['ST']['lng_title'] ?></td>
		<td width="34%"><?php echo $this->_tpl_vars['ST']['subjectmanage_text_subjectname'] ?></td>
		<td width="10%"><?php echo $this->_tpl_vars['ST']['subjectmanage_text_purview'] ?></td>
		<td width="10%"><?php echo $this->_tpl_vars['ST']['subjectmanage_text_class'] ?></td>
		<td width="20%"><?php echo $this->_tpl_vars['ST']['subjectmanage_text_set'] ?></td>
	</tr>
</table>