<?php

/*
  PHP version 5
  Copyright (c) 2002-2014 ECISP.CN、EarcLink.COM
  警告：这不是一个免费的软件，请在许可范围内使用，请尊重知识产权，侵权必究，举报有奖
  作者：黄祥云 E-mail:6326420@qq.com  QQ:6326420 TEL:18665655030
  ESPCMS官网介绍：http://www.ecisp.cn	企业建站：http://www.earclink.cn
 */

class mainpage extends connector {

	function mainpage() {
		$this->softbase(false);
	}

	function in_click() {
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		$db_table = db_prefix . 'document';
		$did = intval($this->fun->accept('did', 'G'));
		if (empty($did)) {
			return false;
		}
		$rsType = $this->db->fetch_first("SELECT click FROM $db_table WHERE did = $did ");
		exit('document.write("' . $rsType['click'] . '")');
	}

	function in_list() {
		parent::start_pagetemplate();
		$this->pagetemplate->libfile = true;
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		$db_table = db_prefix . 'document';
		$tid = intval($this->fun->accept('tid', 'G'));
		if (empty($tid)) {
			exit();
		}
		$limit = intval($this->fun->accept('max', 'G'));
		$limit = empty($limit) ? 20 : $limit;
		$sid = intval($this->fun->accept('sid', 'G'));
		$sid = empty($sid) ? 0 : $sid;
		$recommend = intval($this->fun->accept('dlid', 'G'));
		$recommend = empty($recommend) ? 0 : $recommend;
		$filename = $this->fun->accept('filename', 'G');
		if (!empty($filename)) {
			if (!preg_match("/^[\w-]+$/i", $filename)) exit();
		}else {
			$filename = 'list';
		}
		$db_where = ' WHERE isclass=1';
		if (!empty($recommend)) {
			$db_where.=" AND FIND_IN_SET('$recommend',recommend)";
		}
		if (!empty($sid)) {
			$db_where.=" AND sid=$sid";
		}
		if (!empty($tid)) {
			$db_where.=" AND " . $this->get_typeid($tid, 'tid', 0, 0, 0, $lng);
		}
		$timekey = time();
		$sql = "SELECT * FROM $db_table $db_where ORDER BY pid,did DESC LIMIT 0,$limit";
		$rs = $this->db->query($sql);
		while ($rsList = $this->db->fetch_assoc($rs)) {
			$rsList['ctitle'] = empty($rsList['color']) ? $rsList['title'] : "<font color='" . $rsList['color'] . "'>" . $rsList['title'] . "</font>";
			$typeread = $this->get_type($rsList['tid']);
			$rsList['typename'] = $typeread['typename'];
			$rsList['typelink'] = $this->get_link('type', $typeread, $lngpack);
			$rsList['pageclass'] = $typeread['pageclass'];
			$rsList['buylink'] = $this->get_link('buylink', $rsList, $lngpack);
			$rsList['enqlink'] = $this->get_link('enqlink', $rsList, $lngpack);
			$rsList['link'] = $this->get_link('doc', $rsList, $lngpack);
			$nowtimekey = $timekey - $rsList['addtime'];
			$rsList['timekey'] = $nowtimekey < 86400 ? 1 : 0;
			$attr = $this->get_document_attr($rsList['did']);
			$array[] = is_array($attr) ? array_merge($attr, $rsList) : $rsList;
		}
		$this->pagetemplate->assign('did', $did);
		$this->pagetemplate->assign('array', $array);
		$this->pagetemplate->assign('pathurl', admin_URL);
		$this->pagetemplate->assign('lng', $lng_temp);
		$this->pagetemplate->assign('lngpack', $LANPACK);
		$output = $this->pagetemplate->fetch($lng . '/lib/' . $filename);
		$outHTML = addslashes($output);
		$textArray = preg_split('/[\r\n]/i', $outHTML);
		if (is_array($textArray)) {
			$outHTML = null;
			foreach ($textArray as $key => $value) {
				$outHTML.='document.write("' . $value . '");';
			}
			exit($outHTML);
		} else {
			exit('document.writeln("' . $outHTML . '")');
		}
	}

	function in_member() {
		parent::start_pagetemplate();
		$this->pagetemplate->libfile = true;
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		$mlink = $this->memberlink(array(), admin_LNG);
		include admin_ROOT . 'datacache/' . $lng . '_pack.php';
		$this->pagetemplate->assign('lngpack', $LANPACK);
		$this->pagetemplate->assign('mlink', $mlink);
		$this->pagetemplate->assign('seccodelink', $this->get_link('seccode'));
		$this->pagetemplate->assign('mem_isseccode', $this->CON['mem_isseccode']);
		$filename_info = $this->fun->accept('filename_info', 'G');
		if (!empty($filename_info)) {
			if (!preg_match("/^[\w-]+$/i", $filename_info)) exit();
		}else {
			$filename_info = 'member_info';
		}
		$filename_login = $this->fun->accept('filename_login', 'G');
		if (!empty($filename_login)) {
			if (!preg_match("/^[\w-]+$/i", $filename_login)) exit();
		}else {
			$filename_login = 'member_login';
		}
		$ec_member_username = $this->member_cookieview('username');
		$ec_member_username_id = $this->member_cookieview('userid');
		if (!empty($ec_member_username) && !empty($ec_member_username_id)) {
			$this->pagetemplate->assign('username', $ec_member_username);
			$output = $this->pagetemplate->fetch($lng . '/lib/' . $filename_info);
		} else {
			$output = $this->pagetemplate->fetch($lng . '/lib/' . $filename_login);
		}
		$outHTML = addslashes($output);
		$textArray = preg_split('/[\r\n]/i', $outHTML);
		if (is_array($textArray)) {
			$outHTML = null;
			foreach ($textArray as $key => $value) {
				$outHTML.='document.write("' . $value . '");';
			}
			exit($outHTML);
		} else {
			exit('document.writeln("' . $outHTML . '")');
		}
	}

	function in_order() {
		parent::start_pagetemplate();
		$this->pagetemplate->libfile = true;
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		$mlink = $this->memberlink(array(), admin_LNG);
		include admin_ROOT . 'datacache/' . $lng . '_pack.php';
		$this->pagetemplate->assign('lngpack', $LANPACK);
		$this->pagetemplate->assign('mlink', $mlink);
		$filename = $this->fun->accept('filename', 'G');
		if (!empty($filename)) {
			if (!preg_match("/^[\w-]+$/i", $filename)) exit();
		}else {
			$filename = 'order';
		}
		$cartid = $this->fun->eccode($this->fun->accept('ecisp_order_list', 'C'), 'DECODE', db_pscode);
		$cartid = stripslashes(htmlspecialchars_decode($cartid));
		$uncartid = !empty($cartid) ? unserialize($cartid) : null;
		$total = $this->fun->eccode($this->fun->accept('ecisp_order_productmoney', 'C'), 'DECODE', db_pscode);
		$total = empty($total) ? 0 : $total;
		$buylink = $this->get_link('order', array(), admin_LNG);
		$this->pagetemplate->assign('buylink', $buylink);
		$this->pagetemplate->assign('ordertotal', number_format($total, 2));
		$this->pagetemplate->assign('total', $total);
		$this->pagetemplate->assign('uncartid', count($uncartid));
		$this->pagetemplate->assign('cartid', $cartid);
		$output = $this->pagetemplate->fetch($lng . '/lib/' . $filename);
		$outHTML = addslashes($output);
		$textArray = preg_split('/[\r\n]/i', $outHTML);
		if (is_array($textArray)) {
			$outHTML = null;
			foreach ($textArray as $key => $value) {
				$outHTML.='document.write("' . $value . '");';
			}
			exit($outHTML);
		} else {
			exit('document.writeln("' . $outHTML . '")');
		}
	}

	function in_bbs() {
		parent::start_pagetemplate();
		$this->pagetemplate->libfile = true;
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		include admin_ROOT . 'datacache/' . $lng . '_pack.php';
		$this->pagetemplate->assign('lngpack', $LANPACK);
		if (!$this->get_app_view('bbs', 'isetup')) {
			return null;
		}
		$btid = intval($this->fun->accept('btid', 'G'));
		$limit = intval($this->fun->accept('limit', 'G'));
		$limit = empty($limit) ? 10 : $limit;
		$filename = $this->fun->accept('filename', 'G');
		if (!empty($filename)) {
			if (!preg_match("/^[\w-]+$/i", $filename)) exit();
		}else {
			$filename = 'bbslist';
		}
		$db_table = db_prefix . 'bbs';
		$db_where = " WHERE upbid=0 AND isclass=1 AND lng='$lng'";
		if (!empty($btid)) {
			$db_where.=" AND btid=$btid";
		}
		$sql = "SELECT * FROM $db_table $db_where ORDER BY bid DESC LIMIT 0,$limit";
		$rs = $this->db->query($sql);
		while ($rsList = $this->db->fetch_assoc($rs)) {
			$rsList['link'] = $this->get_link('forumread', $rsList, admin_LNG);
			$array[] = $rsList;
		}
		$this->pagetemplate->assign('array', $array);
		$this->pagetemplate->assign('pathurl', admin_URL);
		$this->pagetemplate->assign('lngpack', $LANPACK);
		$output = $this->pagetemplate->fetch($lng . '/lib/' . $filename);
		$outHTML = addslashes($output);
		$textArray = preg_split('/[\r\n]/i', $outHTML);
		if (is_array($textArray)) {
			$outHTML = null;
			foreach ($textArray as $key => $value) {
				$outHTML.='document.write("' . $value . '");';
			}
			exit($outHTML);
		} else {
			exit('document.writeln("' . $outHTML . '")');
		}
	}

	function in_im() {
		parent::start_pagetemplate();
		$this->pagetemplate->libfile = true;
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		include admin_ROOT . 'datacache/' . $lng . '_pack.php';
		$this->pagetemplate->assign('lngpack', $LANPACK);
		if (!$this->CON['is_imcall']) {
			exit();
		}
		if (!$this->get_app_view('im', 'isetup')) {
			return null;
		}
		$call['call_style'] = $this->CON['call_style'];
		$call['call_type'] = $this->CON['call_type'];
		$call['call_position'] = $this->CON['call_position'];
		$wxid = intval($this->fun->accept('wxid', 'G'));
		$call_array = $this->get_calling_array(0, 1, $lng);
		$array = $call_array['list'];
		if (is_array($array)) {
			foreach ($array as $key => $value) {
				if ($value['type'] == 1) {
					$array[$key]['code'] = stripslashes(htmlspecialchars_decode($value['code']));
				}
			}
		}
		if ($wxid && $this->get_app_view('weixin', 'isetup')) {
			$db_table = db_prefix . 'weixin_api';
			$db_where = " WHERE wxid=$wxid AND isclass=1";
			$db_sql = 'SELECT * FROM ' . $db_table . $db_where . ' ORDER BY wxid DESC';
			$wxread = $this->db->fetch_first($db_sql);
			$this->pagetemplate->assign('wxread', $wxread);
		}
		$this->pagetemplate->assign('bbslink', $this->get_link('forum', array(), $lngpack));
		$this->pagetemplate->assign('memberlink', $this->get_link('memberlogin', array(), $lngpack));
		$this->pagetemplate->assign('lng', $lng);
		$this->pagetemplate->assign('array', $array);
		$this->pagetemplate->assign('call', $call);
		$this->pagetemplate->assign('lngpack', $LANPACK);
		$filename = $this->fun->accept('filename', 'G');
		if (!empty($filename)) {
			if (!preg_match("/^[\w-]+$/i", $filename)) exit();
		}else {
			$filename = 'im';
		}
		$output = $this->pagetemplate->fetch($lng . '/lib/' . $filename);
		$outHTML = addslashes($output);
		$textArray = preg_split('/[\r\n]/i', $outHTML);
		if (is_array($textArray)) {
			$outHTML = null;
			foreach ($textArray as $key => $value) {
				$outHTML.='document.write("' . $value . '");';
			}
			exit($outHTML);
		} else {
			exit('document.writeln("' . $outHTML . '")');
		}
	}

	function in_dsitelink() {
		$type = $this->fun->accept('type', 'R');
		if ($type == 'pc') {
			$this->fun->setcookie('ecisp_dsite_open', 1, 7200);
			header('location:' . admin_URL);
			exit;
		} else {
			$this->fun->setcookie('ecisp_dsite_open', false);
			header('location:' . admin_URL . 'wap/');
			exit();
		}
	}

	function in_waplink() {
		$ecisp_dsite_open = $this->fun->accept('ecisp_dsite_open', 'C');
		if (!$this->get_app_view('touch', 'isetup') || $ecisp_dsite_open) {
			return false;
		}
		if ($this->is_mobile()) {
			$text = "javascript:location.href='" . admin_URL . "wap/';";
			exit($text);
		}
	}

	function is_mobile() {
		$devices = array(
		    "operaMobi" => "Opera Mobi",
		    "android" => "android",
		    "blackberry" => "blackberry",
		    "iphone" => "(iphone|ipod)",
		    "opera" => "opera mini",
		    "palm" => "(avantgo|blazer|elaine|hiptop|palm|plucker|xiino)",
		    "windows" => "windows ce; (iemobile|ppc|smartphone)",
		    "generic" => "(kindle|mobile|mmp|midp|o2|pda|pocket|psp|symbian|smartphone|treo|up.browser|up.link|vodafone|wap)"
		);
		if (isset($_SERVER['HTTP_X_WAP_PROFILE']) || isset($_SERVER['HTTP_PROFILE'])) {
			return true;
		} elseif (isset($_SERVER['HTTP_ACCEPT']) && (strpos($_SERVER['HTTP_ACCEPT'], 'text/vnd.wap.wml') > 0 || strpos($_SERVER['HTTP_ACCEPT'], 'application/vnd.wap.xhtml+xml') > 0)) {
			return true;
		} else {
			if (isset($_SERVER['HTTP_USER_AGENT'])) {
				foreach ($devices as $device => $regexp) {
					if (preg_match("/" . $regexp . "/i", $_SERVER['HTTP_USER_AGENT'])) {
						return true;
					}
				}
			}
		}
		return false;
	}

}
