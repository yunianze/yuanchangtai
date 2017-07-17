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
	function in_list() {
		parent::start_pagetemplate();
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		$fgid = intval($this->fun->accept('fgid', 'G'));
		if (empty($fgid)) {
			$this->callmessage($this->lng['db_err'], $_SERVER['HTTP_REFERER'], $this->lng['gobackurlbotton']);
		}
		$form = $this->get_form_purview($fgid);
		$form['action'] = $this->get_link('acform', $form, admin_LNG);
		$attrread = $this->get_formatt($fgid);
		if ($form['titlestyle']) {
			$titlestyleArray = array('{typename}' => $form['formgroupname'], '{sitename}' => $this->lng['sitename']);
			$this->lng['sitename'] = $this->fun->formatstring($form['titlestyle'], $titlestyleArray);
		} else {
			$this->lng['sitename'] = $form['formgroupname'] . '-' . $this->lng['sitename'];
		}
		$this->pagetemplate->assign('lngpack', $this->lng);
		$this->pagetemplate->assign('form', $form);
		$this->pagetemplate->assign('array', $attrread);
		$template = $form['template'] ? $form['template'] : 'form';
		$this->pagetemplate->assign('path', 'form');
		$this->pagetemplate->assign('current', $fgid);
		$this->pagetemplate->assign('tokenkey', $this->fun->token());
		$this->pagetemplate->assign('seccodelink', $this->get_link('seccode'));
		$templatesDIR = $this->get_templatesdir('form');
		$templatefilename = $lng . '/' . $templatesDIR . '/' . $template;
		$this->pagetemplate->display($templatefilename, $form['formcode'] . '_list', false, $filename, admin_LNG);
	}
	function in_save() {
		$linkURL = $_SERVER['HTTP_REFERER'];
		if (!$this->fun->is_token()) {
			$this->callmessage($this->lng['repeatinput'], $linkURL, $this->lng['gobackbotton']);
		}
		$fgid = intval($this->fun->accept('fgid', 'P'));
		if (!$fgid) {
			$this->callmessage($this->lng['db_err'], $linkURL, $this->lng['gobackurlbotton']);
		}
		$formcode = $this->fun->accept('formcode', 'P');
		$form = $this->get_form_purview($fgid);
		if (!$form) {
			$this->callmessage($this->lng['db_err'], $_SERVER['HTTP_REFERER'], $this->lng['gobackurlbotton']);
		}
		$ipadd = $this->fun->ip($_SERVER['REMOTE_ADDR']);
		$usersessionid = md5($ipadd + $formcode . 'input');
		$inputseesion = $this->fun->accept($usersessionid, 'C');
		$did = intval($this->fun->accept('did', 'P'));
		$did = empty($did) ? 0 : $did;
		$userid = intval($this->member_cookieview('userid'));
		$userid = empty($userid) ? 0 : $userid;
		$addtime = time();
		if ($form['isseccode']) {
			$seccode = $this->fun->accept('seccode', 'P');
			include_once admin_ROOT . '/public/class_seccode.php';
			list($new_seccode, $expiration) = explode("\t", $this->fun->eccode($_COOKIE['ecisp_home_seccode'], 'DECODE'));
			$code = new seccode();
			$code->seccodeconvert($new_seccode);
			if ($new_seccode != strtoupper($seccode)) {
				$this->callmessage($this->lng['seescodeerr'], $linkURL, $this->lng['gobackbotton']);
			}
		}
		if (empty($inputseesion) && $form['inputtime']) {
			$this->fun->setcookie($usersessionid, $addtime, $form['inputtime']);
		} elseif ($form['isinputtime']) {
			$this->callmessage($this->lng['repeatinput'], $linkURL, $this->lng['gobackurlbotton']);
		}
		if ($form['purview'] > 0) $this->member_purview($form['purview']);
		$formatt = $this->get_formatt($fgid, true);
		$formattarray = array();
		foreach ($formatt as $key => $value) {
			if ($value['inputtype'] == 'htmltext') {
				$value['accept'] = 'html';
			} elseif ($value['inputtype'] == 'checkbox') {
				$value['accept'] = 'checkbox';
			} elseif ($value['inputtype'] == 'string' || $value['inputtype'] == 'img' || $value['inputtype'] == 'addon' || $value['inputtype'] == 'video' || $value['inputtype'] == 'select' || $value['inputtype'] == 'radio' || $value['inputtype'] == 'selectinput') {
				$value['accept'] = 'text';
			} elseif ($value['inputtype'] == 'editor' || $value['inputtype'] == 'text') {
				$value['accept'] = 'editor';
			} elseif ($value['inputtype'] == 'int') {
				$value['accept'] = 'int';
			} elseif ($value['inputtype'] == 'float' || $value['inputtype'] == 'decimal') {
				$value['accept'] = 'float';
			} elseif ($value['inputtype'] == 'datetime') {
				$value['accept'] = 'data';
			}
			$formattarray[] = $value;
		}
		$sysinstalldb = null;
		foreach ($formattarray as $key => $value) {
			$sysinstall.=$value['attrname'] . ',';
			if ($value['accept'] == 'int') {
				$valuestr = intval($this->fun->accept($value['attrname'], 'P'));
				$valuestr = empty($valuestr) ? 0 : $valuestr;
				$sysinstalldb.="$valuestr,";
			} elseif ($value['accept'] == 'float') {
				$valuestr = floatval($this->fun->accept($value['attrname'], 'P'));
				$valuestr = empty($valuestr) ? 0 : $valuestr;
				$sysinstalldb.="$valuestr,";
			} elseif ($value['accept'] == 'html') {
				$valuestr = $this->fun->accept($value['attrname'], 'P');
				$valuestr = empty($valuestr) ? '' : $this->fun->Text2Html($valuestr);
				$sysinstalldb.="'$valuestr',";
			} elseif ($value['accept'] == 'editor') {
				$valuestr = $this->fun->accept($value['attrname'], 'P', true, true);
				$valuestr = $this->fun->substr($valuestr, 1000);
				$sysinstalldb.="'$valuestr',";
			} elseif ($value['accept'] == 'text') {
				$valuestr = $this->fun->accept($value['attrname'], 'P', true, true);
				$valuestr = $this->fun->substr($valuestr, 150);
				$sysinstalldb.="'$valuestr',";
			} elseif ($value['accept'] == 'data') {
				$valuestr = $this->fun->accept($value['attrname'], 'P', true, true);
				$valuestr = empty($valuestr) ? 0 : intval(strtotime($valuestr));
				$sysinstalldb.="$valuestr,";
			} elseif ($value['accept'] == 'checkbox') {
				$valuestr = $this->fun->accept($value['attrname'], 'P', true, true);
				$valuestr = is_array($valuestr) ? implode(',', $valuestr) : '';
				$sysinstalldb.="'$valuestr',";
			}
			if ($value['attrname'] == $form['emailatt']) {
				$email = $valuestr;
			}
		}
		$db_table = db_prefix . 'form_value';
		$db_field = $sysinstall . 'fgid,did,userid,addtime,retime,ipadd,isreply,username,recontent';
		$db_values = $sysinstalldb . "$fgid,$did,$userid,$addtime,0,$ipadd,0,'',''";
		$this->db->query('INSERT INTO ' . $db_table . ' (' . $db_field . ') VALUES (' . $db_values . ')');
		$insert_id = $this->db->insert_id();
		if ($form['ismail'] && $this->CON['is_email']) {
			$mailcode = $form['mailcode'] ? $form['mailcode'] : 'formnewremind';
			if (preg_match("/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/i", $email)) {
				$this->formmailsend($mailcode, $insert_id, $email);
			}
			$putmail = $form['putmail'] ? $form['putmail'] : $this->CON['admine_mail'];
			if (preg_match("/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/i", $putmail)) {
				$this->formmailsend('formremind', $insert_id, $putmail);
			}
		}
		if ($form['issms'] && $this->CON['is_moblie']) {
			$messageArray = array('formgroupname' => $form['formgroupname']);
			$mobile = $this->CON['moblie_number'];
			if ($form['smscode']) {
				$this->membersmssend($messageArray, $mobile, $form['smscode']);
			}
		}
		$this->callmessage(htmlspecialchars_decode($form['successtext']), $linkURL, $this->lng['gobackurlbotton']);
	}
}
