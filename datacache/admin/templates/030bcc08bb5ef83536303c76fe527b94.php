<table border="0" width="100%" bordercolor="#FFFFFF">
	<tr>
		<td width="4%"><input type="checkbox" name="check_all" id="check_all" value="1" onClick="select_ok('selectform', 'selectall', 'check_all');"/></td>
		<td width="5%"><a id="btlimit_id" class="infolink06" href="javascript:onlimit('lpid','desc','#btlimit_id','#limit_id','','selectform','selectall','check_all')"  hidefocus="true"><?php echo $this->_tpl_vars['ST']['languagepack_text_id'] ?></a><span id="limit_id" class="limitasc"></span></td>
		<td width="21%"><?php echo $this->_tpl_vars['ST']['languagepack_text_title'] ?></td>
		<td width="18%"><?php echo $this->_tpl_vars['ST']['languagepack_text_key'] ?></td>
		<td width="42%"><?php echo $this->_tpl_vars['ST']['languagepack_text_langstr'] ?></td>
		<td width="10%"><?php echo $this->_tpl_vars['ST']['languagepack_text_set'] ?></td>
	</tr>
</table>