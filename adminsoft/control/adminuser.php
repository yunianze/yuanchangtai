<?php
/*
  PHP version 5
  Copyright (c) 2002-2014 ECISP.CN、EarcLink.COM
  警告：这不是一个免费的软件，请在许可范围内使用，请尊重知识产权，侵权必究，举报有奖
  作者：黄祥云 E-mail:6326420@qq.com  QQ:6326420 TEL:18665655030
  ESPCMS官网介绍：http://www.ecisp.cn	企业建站：http://www.earclink.cn
 */
class important extends connector {
	function important() {
		$this->softbase(true);
	}
	function onlogin() {
		parent::start_template();
		if ($this->fun->accept('logoutid', 'C') == 1) {
			$this->ectemplates->assign('systemTitle', $this->lng['adminuser_login_lout_error']);
			$this->fun->setcookie('logoutid', 0);
		} else {
			$this->ectemplates->assign('systemTitle', $this->lng['adminuser_login_login_error']);
		}
		$this->ectemplates->assign('tokenkey', $this->fun->token());
		$this->ectemplates->display('login');
	}
	function onlogin_into() {
		include_once admin_ROOT . '/public/class_seccode.php';
		$linkURL = $_SERVER['HTTP_REFERER'];
		if (!$this->fun->is_token()) {
			$this->calladminmessage($this->lng['management_token_message'], $this->lng['goback_botton'], $linkURL, 1);
		}
		list($new_seccode, $expiration) = explode("\t", $this->fun->eccode($_COOKIE['ecisp_seccode'], 'DECODE'));
		$code = new seccode();
		$code->seccodeconvert($new_seccode);
		parent::start_template();
		$db_table = db_prefix . "admin_member";
		$seccode = strtoupper($this->fun->accept('seccode', 'P', 1));
		$username = $this->fun->accept('username', 'P', 1);
		if (!preg_match("/^[a-zA-Z]{1}[a-zA-Z0-9]{4,19}$/i", $username)) {
			$this->calladminmessage($this->lng['adminuser_login_incorrect_mess'], $this->lng['goback_botton'], $linkURL, 1);
		}
		$password_key = $this->fun->accept('password', 'P', 1);
		$password = md5($this->fun->accept('password', 'P', 1));
		if ($new_seccode != $seccode) {
			$this->calladminmessage($this->lng['adminuser_login_seccode_error_mess'], $this->lng['goback_botton'], $linkURL, 1);
		} else {
			$db_where = "username='$username' AND password='$password' AND isclass=1";
			$rsMember = $this->db->fetch_first('SELECT id,username,password,powergroup,inputclassid,isclass FROM ' . $db_table . ' WHERE ' . $db_where);
			if (!$rsMember) {
				$this->writelog($this->lng['adminuser_login_log_action'], $this->lng['log_extra_no'] . ' user=' . $username . ' password=' . $password_key, $username);
				$this->calladminmessage($this->lng['adminuser_login_incorrect_mess'], $this->lng['goback_botton'], $linkURL, 1);
			} else {
				$ipadd = $this->fun->ip($_SERVER['REMOTE_ADDR']);
				$ipadd = empty($ipadd) ? 0 : $ipadd;
				$date = time();
				$db_set = "intime=$date,ipadd=$ipadd,hit=hit+1";
				$this->db->query('UPDATE ' . $db_table . ' SET ' . $db_set . ' WHERE ' . $db_where);
				$db_table = db_prefix . 'admin_powergroup';
				$db_where = 'id=' . $rsMember['powergroup'];
				$rsPower = $this->db->fetch_first('SELECT powername,powerlist FROM ' . $db_table . ' WHERE ' . $db_where);
				if ($rsPower['powerlist'] != 'all') {
					$rsPower_array = explode('|', $rsPower['powerlist']);
					$rsPower_array = is_array($rsPower_array) ? $this->fun->exp_array($rsPower_array) : $rsPower_array;
					$sysArray = $this->get_powermenulist('all');
					$sys_newsArray = array();
					foreach ($sysArray as $key => $value) {
						$sys_newsArray[] = $value['loadfun'];
					}
					$sys_newsArray = $this->fun->exp_array($sys_newsArray);
					$diff_array = array_diff($sys_newsArray, $rsPower_array);
					$rsPower['powerlist'] = implode('|', $diff_array);
				}
				$this->fun->setcookie("esp_powerlist", $this->fun->eccode($rsPower['powerlist'], 'ENCODE', db_pscode));
				$this->fun->setcookie('ecisp_admininfo', $this->fun->eccode("$rsMember[id]|$rsMember[username]|$rsMember[password]|" . md5($_SERVER['HTTP_USER_AGENT']) . '|' . $rsMember[powergroup] . '|' . $rsMember[inputclassid] . '|' . md5(admin_ClassURL), 'ENCODE', db_pscode));
				$this->writelog($this->lng['adminuser_login_log_action'], $this->lng['log_extra_ok'] . ' user=' . $rsMember['username'], $rsMember['username']);
				header('location: index.php?archive=management&action=tab&loadfun=mangercenter&out=tabcenter');
				exit('true');
			}
		}
	}
	function onloingout() {
		parent::start_template();
		$username = $this->admin_cookieview('username');
		$id = intval($this->admin_cookieview('id'));
		if (!empty($id) && !empty($username)) {
			$date = time();
			$db_set = "outtime=$date";
			$db_where = "username='$username' and id=$id";
			$db_table = db_prefix . 'admin_member';
			$this->db->query('update ' . $db_table . ' set ' . $db_set . ' where ' . $db_where);
		}
		$this->writelog($this->lng['adminuser_login_log_onloing_out'], $this->lng['log_extra_ok']);
		$this->fun->setcookie('esp_powerlist', false);
		$this->fun->setcookie('ecisp_admininfo', false);
		$this->fun->setcookie('logoutid', false);
		header('location: index.php');
	}
	function onsitecode() {
		parent::start_template();
		$db_table = db_prefix . "admin_member";
		$linkURL = $_SERVER['HTTP_REFERER'];
		$siteid = $this->fun->accept('siteid', 'R');
		$code = $this->fun->accept('code', 'R');
		$adminid = $this->fun->accept('adminid', 'R');
		$siteip = $this->fun->real_server_ip();
		if (empty($siteid) || empty($code) || empty($siteip) || empty($this->CON['sitecoedb']) || empty($adminid)) {
			exit();
		}
		$codelist = md5($this->CON['sitecoedb'] . '_' . $siteip . '_' . adminfile);
		if ($code == $codelist) {
			$db_where = "username='$adminid' AND isclass=1 AND isremote=1";
			$rsMember = $this->db->fetch_first('SELECT id,username,password,powergroup,inputclassid,isclass,isremote FROM ' . $db_table . ' WHERE ' . $db_where);
			if (!$rsMember) {
				exit('ESPCMS:Parameter error!');
			} else {
				$ipadd = $this->fun->ip($_SERVER['REMOTE_ADDR']);
				$date = time();
				$db_set = "intime=$date,ipadd=$ipadd,hit=hit+1";
				$this->db->query('UPDATE ' . $db_table . ' SET ' . $db_set . ' WHERE ' . $db_where);
				$db_table = db_prefix . 'admin_powergroup';
				$db_where = 'id=' . $rsMember['powergroup'];
				$rsPower = $this->db->fetch_first('SELECT powername,powerlist FROM ' . $db_table . ' WHERE ' . $db_where);
				if ($rsPower['powerlist'] != 'all') {
					$rsPower_array = explode('|', $rsPower['powerlist']);
					$rsPower_array = is_array($rsPower_array) ? $this->fun->exp_array($rsPower_array) : $rsPower_array;
					$sysArray = $this->get_powermenulist('all');
					$sys_newsArray = array();
					foreach ($sysArray as $key => $value) {
						$sys_newsArray[] = $value['loadfun'];
					}
					$sys_newsArray = $this->fun->exp_array($sys_newsArray);
					$diff_array = array_diff($sys_newsArray, $rsPower_array);
					$rsPower['powerlist'] = implode('|', $diff_array);
				}
				$this->fun->setcookie("esp_powerlist", $this->fun->eccode($rsPower['powerlist'], 'ENCODE', db_pscode));
				$this->fun->setcookie('ecisp_admininfo', $this->fun->eccode("$rsMember[id]|$rsMember[username]|$rsMember[password]|" . md5($_SERVER['HTTP_USER_AGENT']) . '|' . $rsMember[powergroup] . '|' . $rsMember[inputclassid] . '|' . md5(admin_ClassURL), 'ENCODE', db_pscode));
				$this->writelog($this->lng['adminuser_login_log_action'], $this->lng['log_extra_ok'] . ' user=' . $rsMember['username'], $rsMember['username']);
				header('location: index.php?archive=management&action=tab&loadfun=mangercenter&out=tabcenter');
				exit('true');
			}
		} else {
			exit('false');
		}
	}
}
