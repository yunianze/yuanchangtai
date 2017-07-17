<table border="0" width="100%" bordercolor="#FFFFFF">
	<tr>
		<td width="5%"><input type="checkbox" name="check_all" id="check_all" value="1" onClick="select_ok('selectform','selectall','check_all');"/></td>
		<td width="10%"><a id="btlimit_fvid" class="infolink06" href="javascript:onlimit('fvid','asc','#btlimit_fvid','#limit_fvid','','selectform','selectall','check_all')"  hidefocus="true"><?php echo $this->_tpl_vars['ST']['formmessmain_text_tid'] ?></a><span id="limit_fgid" class="limitdesc"></span></td>
		<td width="60%"><?php echo $this->_tpl_vars['ST']['formmessmain_text_addtime'] ?></td>
		<td width="10%"><?php echo $this->_tpl_vars['ST']['formmessmain_text_reclass'] ?></td>
		<td width="15%"><?php echo $this->_tpl_vars['ST']['formmessmain_text_set'] ?></td>
	</tr>
</table>