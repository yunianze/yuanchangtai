<table border="0" width="100%" bordercolor="#FFFFFF">
	<tr>
		<td width="5%"><input type="checkbox" name="check_all" id="check_all" value="1" onClick="select_ok('selectform', 'selectall', 'check_all');"/></td>
		<td width="6%"><a id="btlimit_attr_pid" class="infolink06" href="javascript:onlimit('pid','asc','#btlimit_attr_pid','#limit_attr_pid','#limit_attr_aid','selectform','selectall','check_all')" hidefocus="true"><?php echo $this->_tpl_vars['ST']['modelmanage_att_text_pid'] ?></a><span id="limit_attr_pid" class="limitdesc displaynone"></span></td>
		<td width="6%"><a id="btlimit_attr_aid" class="infolink06" href="javascript:onlimit('aid','asc','#btlimit_attr_aid','#limit_attr_aid','#limit_attr_pid','selectform','selectall','check_all')"  hidefocus="true"><?php echo $this->_tpl_vars['ST']['modelmanage_text_mid'] ?></a><span id="limit_attr_aid" class="limitdesc"></span></td>
		<td width="18%"><?php echo $this->_tpl_vars['ST']['modelmanage_att_text_modelname'] ?></td>
		<td width="17%"><?php echo $this->_tpl_vars['ST']['modelmanage_att_text_attrname'] ?></td>
		<td width="12%"><?php echo $this->_tpl_vars['ST']['modelmanage_att_text_type'] ?></td>
		<td width="7%"><?php echo $this->_tpl_vars['ST']['modelmanage_att_text_issearch'] ?></td>
		<td width="7%"><?php echo $this->_tpl_vars['ST']['modelmanage_att_text_isvalidate'] ?></td>
		<td width="7%"><?php echo $this->_tpl_vars['ST']['modelmanage_att_text_issys'] ?></td>
		<td width="7%"><?php echo $this->_tpl_vars['ST']['modelmanage_attr_isclass_validatetext'] ?></td>
		<td width="8%"><?php echo $this->_tpl_vars['ST']['modelmanage_text_set'] ?></td>
	</tr>
</table>