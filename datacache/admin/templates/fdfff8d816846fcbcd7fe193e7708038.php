<table border="0" width="100%" bordercolor="#FFFFFF">
	<tr>
		<td width="5%"><input type="checkbox" name="check_all" id="check_all" value="1" onClick="select_ok('selectform','selectall','check_all');"/></td>
		<td width="8%"><a id="bbslimit_pid" class="infolink06" href="javascript:onlimit('pid','desc','#bbslimit_pid','#bbs_limit_pid','#bbs_limit_adid','selectform','selectall','check_all')"  hidefocus="true"><?php echo $this->_tpl_vars['ST']['language_text_pid'] ?></a><span id="bbs_limit_pid" class="limitdesc displaynone"></span></td>
		<td width="8%"><a id="bbslimit_adid" class="infolink06" href="javascript:onlimit('adid','asc','#bbslimit_adid','#bbs_limit_adid','#bbs_limit_pid','selectform','selectall','check_all')"  hidefocus="true"><?php echo $this->_tpl_vars['ST']['forummain_text_mid'] ?></a><span id="bbs_limit_adid" class="limitdesc"></span></td>
		<td width="38%"><?php echo $this->_tpl_vars['ST']['advertmain_text_title'] ?></td>
		<td width="20%"><?php echo $this->_tpl_vars['ST']['advertmain_text_type'] ?></td>
		<td width="8%"><?php echo $this->_tpl_vars['ST']['advertmain_text_class'] ?></td>
		<td width="13%"><?php echo $this->_tpl_vars['ST']['printtemplatemain_text_set'] ?></td>
	</tr>
</table>