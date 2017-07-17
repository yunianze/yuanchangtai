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
		$this->mlink = $this->memberlink(array(), admin_LNG);
		if (!$this->CON['isorder']) {
			$linkURL = $_SERVER['HTTP_REFERER'];
			$this->callmessage($this->lng['close_err'], $linkURL, $this->lng['gobackurlbotton']);
		}
	}

	function in_list() {
		parent::start_pagetemplate();
		parent::member_purview(0, $this->mlink['orderlist']);
		include_once admin_ROOT . 'public/class_pagebotton.php';
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		$page = $this->fun->accept('page', 'G');
		$page = isset($page) ? intval($page) : 1;
		$pagesylte = 1;
		$pagemax = intval($this->CON['order_max_list']);
		$userid = $this->ec_member_username_id;
		if (empty($userid)) {
			$this->callmessage($this->lng['db_err'], $_SERVER['HTTP_REFERER'], $this->lng['gobackurlbotton']);
		}
		$db_table = db_prefix . 'order';
		$db_where = " WHERE userid=$userid";
		$countnum = $this->db_numrows($db_table, $db_where);
		if ($countnum > 0) {
			$numpage = ceil($countnum / $pagemax);
		} else {
			$numpage = 1;
		}
		$sql = "SELECT oid,ordersn,userid,ordertype,osid,opid,shippingsn,paysn,consignee,sendtime,paytime,shippingtime,productmoney,shippingmoney,paymoney,orderamount,discount,integral,addtime FROM $db_table $db_where LIMIT 0,$pagemax";
		$this->htmlpage = new PageBotton($sql, $pagemax, $page, $countnum, $numpage, $pagesylte, $this->CON['file_fileex'], 5, $this->lng['pagebotton'], $this->lng['gopageurl'], $this->CON['is_rewrite']);
		$sql = $this->htmlpage->PageSQL('oid', 'down');
		$rs = $this->db->query($sql);
		while ($rsList = $this->db->fetch_assoc($rs)) {
			$validtime = $this->fun->formatdate(4, $rsList['addtime']) + 3600;
			$rsList['editclass'] = time() - $validtime > 1800 ? 'false' : 'true';
			$rsList['link'] = $this->get_link('orderread', $rsList, admin_LNG);
			$rsList['dlink'] = $this->get_link('orderdel', $rsList, admin_LNG);
			$rsList['ordertypename'] = $this->get_ordertype($rsList['ordertype']);
			$array[] = $rsList;
		}
		$this->lng['sitename'] = $this->lng['member_title'] . '-' . $this->lng['sitename'];
		$this->pagetemplate->assign('lngpack', $this->lng);
		$templatesDIR = $this->get_templatesdir('member');
		$templatefilename = $lng . '/' . $templatesDIR . '/member_center';
		$this->pagetemplate->assign('out', 'orderlist');
		$this->pagetemplate->assign('moneytype', $this->CON['order_moneytype']);
		$this->pagetemplate->assign('mlink', $this->mlink);
		$this->pagetemplate->assign('pagetext', $this->htmlpage->PageStat($this->lng['pagetext']));
		$this->pagetemplate->assign('pagebotton', $this->htmlpage->PageList());
		$this->pagetemplate->assign('pagenu', $this->htmlpage->Bottonstyle(false));
		$this->pagetemplate->assign('pagese', $this->htmlpage->pageSelect());
		$this->pagetemplate->assign('pagevt', $this->htmlpage->Prevbotton());
		$this->pagetemplate->assign('limit', $pagemax);
		$this->pagetemplate->assign('countnum', $countnum);
		$this->pagetemplate->assign('maxpage', $numpage);
		$this->pagetemplate->assign('nowpage', $page);
		$this->pagetemplate->assign('array', $array);
		$this->pagetemplate->assign('path', 'member');
		unset($array, $LANPACK, $this->lng);
		$this->pagetemplate->display($templatefilename, 'member_order_list', false, '', admin_LNG);
	}

	function in_ajaxlist() {
		parent::start_pagetemplate();
		parent::member_purview(0, $this->mlink['orderlist']);
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		$limitstard = $this->fun->accept('limitstard', 'R');
		$limitstard = isset($limitstard) ? intval($limitstard) : 0;
		$pagemax = intval($this->CON['order_max_list']);
		$userid = $this->ec_member_username_id;
		if (empty($userid)) {
			$this->callmessage($this->lng['db_err'], $_SERVER['HTTP_REFERER'], $this->lng['gobackurlbotton']);
		}
		$db_table = db_prefix . 'order';
		$db_where = " WHERE userid=$userid";
		$sql = "SELECT * FROM $db_table $db_where ORDER BY oid  DESC LIMIT $limitstard,$pagemax";
		$rs = $this->db->query($sql);
		while ($rsList = $this->db->fetch_assoc($rs)) {
			$validtime = $this->fun->formatdate(4, $rsList['addtime']) + 3600;
			$rsList['editclass'] = time() - $validtime > 1800 ? 'false' : 'true';
			$rsList['link'] = $this->get_link('orderread', $rsList, admin_LNG);
			$rsList['dlink'] = $this->get_link('orderdel', $rsList, admin_LNG);
			$rsList['ordertypename'] = $this->get_ordertype($rsList['ordertype']);
			$array[] = $rsList;
		}
		$templatesDIR = $this->get_templatesdir('ajax_list');
		$templatefilename = $lng . '/' . $templatesDIR . '/member_ajax_order_list';
		$this->pagetemplate->assign('array', $array);
		unset($array, $LANPACK, $this->lng);
		$this->pagetemplate->display($templatefilename, 'member_ajax_order_list', false, '', admin_LNG);
	}

	function in_read() {
		parent::start_pagetemplate();
		parent::member_purview(0, $this->mlink['orderlist']);
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		$userid = $this->ec_member_username_id;
		if (empty($userid)) {
			$this->callmessage($this->lng['db_err'], $_SERVER['HTTP_REFERER'], $this->lng['gobackurlbotton']);
		}
		$oid = intval($this->fun->accept('oid', 'G'));
		if (empty($oid)) {
			$this->callmessage($this->lng['db_err'], $_SERVER['HTTP_REFERER'], $this->lng['gobackurlbotton']);
		}
		$oid = isset($oid) ? intval($oid) : 0;
		$db_table = db_prefix . 'order';
		$db_where = 'oid=' . $oid . ' AND userid=' . $userid;
		$read = $this->db->fetch_first('SELECT * FROM ' . $db_table . ' WHERE ' . $db_where);
		if (!$read['oid']) {
			$this->callmessage($this->lng['db_err'], $_SERVER['HTTP_REFERER'], $this->lng['gobackurlbotton']);
		}
		$read['ordertypename'] = $this->get_ordertype($read['ordertype']);
		$db_table = db_prefix . "order_info a," . db_prefix . "document b";
		$db_where = " WHERE a.oid=$read[oid] AND a.did=b.did";
		$sql = 'SELECT a.*,b.pic,b.filename,b.filepath,b.ishtml FROM ' . $db_table . $db_where;
		$rs = $this->db->query($sql);
		$arrayList = array();
		while ($rsList = $this->db->fetch_assoc($rs)) {
			$rsList['link'] = $this->get_link('doc', $rsList, admin_LNG);
			$array[] = $rsList;
		}
		$this->pagetemplate->assign('read', $read);
		$this->pagetemplate->assign('array', $array);
		$this->pagetemplate->assign('mem_isaddress', $this->CON['mem_isaddress']);
		$this->pagetemplate->assign('mlink', $this->mlink);
		$opid = $read['opid'];
		$osid = $read['osid'];
		$payread = !empty($opid) ? $this->get_payplug_view($opid) : 0;
		$shipread = !empty($osid) ? $this->get_shipplug_view($osid) : 0;
		if (!empty($opid) && $read['ordertype'] == 1) {
			$rsOrder = array('ordersn' => $read['ordersn'], 'orderamount' => $read['orderamount'], 'oid' => $oid);
			$paylist = $this->fun->formatarray($payread['pluglist']);
			$plugcode = $payread['paycode'];
			if (!empty($plugcode)) {
				include_once admin_ROOT . 'public/plug/payment/' . $plugcode . '.php';
				$payobj = new $plugcode();
				$codesn = $this->fun->eccode($plugcode . $read['ordersn'] . $oid, 'ENCODE', db_pscode, FALSE);
				$respondArray = array('code' => $plugcode, 'ordersn' => $read['ordersn'], 'oid' => $oid, 'codesn' => $codesn);
				$return_url = $this->get_link('paybackurl', $respondArray, admin_LNG, 0, 1);
				$orderonline = $payobj->get_code($rsOrder, $paylist, $return_url, $return_url);
			}
		}
		$this->lng['sitename'] = $this->lng['member_title'] . '-' . $this->lng['sitename'];
		$this->pagetemplate->assign('lngpack', $this->lng);
		$this->pagetemplate->assign('moneytype', $this->CON['order_moneytype']);
		$this->pagetemplate->assign('orderonline', $orderonline);
		$this->pagetemplate->assign('pay', $payread);
		$this->pagetemplate->assign('shiping', $shipread);
		$this->pagetemplate->assign('path', 'member');
		$this->pagetemplate->assign('tokenkey', $this->fun->token());
		$templatesDIR = $this->get_templatesdir('member');
		$templatefilename = $lng . '/' . $templatesDIR . '/member_center';
		$this->pagetemplate->assign('out', 'orderread');
		unset($array, $LANPACK, $this->lng);
		$this->pagetemplate->display($templatefilename, 'member_order_read', false, '', admin_LNG);
	}

	function in_ordereditsave() {
		parent::start_pagetemplate();
		parent::member_purview(0, $this->mlink['orderlist']);
		$linkURL = $_SERVER['HTTP_REFERER'];
		if (!$this->fun->is_token()) {
			$this->callmessage($this->lng['repeatinput'], $linkURL, $this->lng['gobackbotton']);
		}
		$userid = $this->ec_member_username_id;
		if (empty($userid)) {
			$this->callmessage($this->lng['db_err'], $_SERVER['HTTP_REFERER'], $this->lng['gobackurlbotton']);
		}
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		$oid = intval($this->fun->accept('oid', 'P'));
		if (empty($oid)) {
			$this->callmessage($this->lng['db_err'], $_SERVER['HTTP_REFERER'], $this->lng['gobackurlbotton']);
		}
		$consignee = trim($this->fun->accept('alias', 'P', true, true));
		$consignee = $this->fun->substr($consignee, 12);
		$country = intval($this->fun->accept('cityone', 'P'));
		$country = empty($country) ? 0 : $country;
		$province = intval($this->fun->accept('citytwo', 'P'));
		$province = empty($province) ? 0 : $province;
		$city = intval($this->fun->accept('citythree', 'P'));
		$city = empty($city) ? 0 : $city;
		$district = intval($this->fun->accept('district', 'P'));
		$district = empty($district) ? 0 : $district;
		$address = trim($this->fun->accept('address', 'P', true, true));
		$address = $this->fun->substr($address, 120);
		$zipcode = trim($this->fun->accept('zipcode', 'P', true, true));
		$zipcode = $this->fun->substr($zipcode, 10);
		$tel = trim($this->fun->accept('tel', 'P', true, true));
		$tel = $this->fun->substr($tel, 20);
		$mobile = trim($this->fun->accept('mobile', 'P', true, true));
		$mobile = $this->fun->substr($mobile, 15);
		$sendtime = intval($this->fun->accept('sendtime', 'R'));
		$content = trim($this->fun->accept('content', 'P', true, true));
		$content = $this->fun->substr($content, 500);
		$db_where = 'oid=' . $oid . ' AND userid=' . $userid;
		$db_table = db_prefix . 'order';
		$db_set = "consignee='$consignee',country=$country,province=$province,city=$city,district=$district,address='$address',zipcode='$zipcode',tel='$tel',mobile='$mobile',sendtime='$sendtime',content='$content'";
		$this->db->query('UPDATE ' . $db_table . ' SET ' . $db_set . ' WHERE ' . $db_where);
		$this->callmessage($this->lng['order_memberinfoedit_ok'], $_SERVER['HTTP_REFERER'], $this->lng['gobackurlbotton']);
	}

	function in_del() {
		parent::member_purview(0, $this->mlink['orderlist']);
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		$userid = $this->ec_member_username_id;
		if (empty($userid)) {
			$this->callmessage($this->lng['db_err'], $_SERVER['HTTP_REFERER'], $this->lng['gobackurlbotton']);
		}
		$oid = intval($this->fun->accept('oid', 'R'));
		if (empty($oid)) {
			$this->callmessage($this->lng['db_err'], $_SERVER['HTTP_REFERER'], $this->lng['gobackurlbotton']);
		}
		$db_table = db_prefix . 'order';
		$db_where = 'ordertype=1 and oid=' . $oid . ' AND userid=' . $userid;
		$db_set = "ordertype=6";
		$this->db->query('UPDATE ' . $db_table . ' SET ' . $db_set . ' WHERE ' . $db_where);
		if ($this->CON['is_email']) {
			$db_where = 'oid=' . $oid . ' AND userid=' . $userid;
			$read = $this->db->fetch_first('SELECT * FROM ' . $db_table . ' WHERE ' . $db_where);
			$this->ordermailsend('orderce', $oid, $read['email']);
		}
		if ($this->CON['is_moblie']) {
			$rsMember = $this->get_member('', $userid);
			if ($rsMember['ismoblie'] && !empty($rsMember['mobile'])) {
				if (!is_array($read)) {
					$db_where = 'oid=' . $oid . ' AND userid=' . $userid;
					$read = $this->db->fetch_first('SELECT * FROM ' . $db_table . ' WHERE ' . $db_where);
				}
				$read['username'] = $rsMember['username'];
				$read['mobile'] = $rsMember['mobile'];
				$this->membersmssend($read, $read['mobile'], 'orderdel');
			}
		}
		$this->callmessage($this->lng['order_edit_del'], $this->mlink['orderlist'], $this->lng['gobackurlbotton']);
	}

}
