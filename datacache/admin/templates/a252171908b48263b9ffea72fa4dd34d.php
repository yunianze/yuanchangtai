<table border="0" width="100%" bordercolor="#FFFFFF">
	<tr>
		<td width="8%"><input type="checkbox" name="check_all" id="check_all" value="1" onClick="select_ok('selectform','selectall','check_all');"/></td>
		<td width="10%"><a id="btlimit_dlid" class="infolink06" href="javascript:onlimit('dlid','asc','#btlimit_dlid','#limit_dlid','','selectform','selectall','check_all')"  hidefocus="true"><?php echo $this->_tpl_vars['ST']['recommanage_text_tid'] ?></a><span id="limit_dlid" class="limitdesc"></span></td>
		<td width="12%"><?php echo $this->_tpl_vars['ST']['lng_title'] ?></td>
		<td width="40%"><?php echo $this->_tpl_vars['ST']['recommanage_text_labelname'] ?></td>
		<td width="20%"><?php echo $this->_tpl_vars['ST']['recommanage_text_mid'] ?></td>
		<td width="10%"><?php echo $this->_tpl_vars['ST']['recommanage_text_set'] ?></td>
	</tr>
</table>