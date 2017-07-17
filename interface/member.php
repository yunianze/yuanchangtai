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
	}
	function in_login() {
		parent::start_pagetemplate();
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		if (!$this->CON['mem_isclose']) {
			$linkURL = $_SERVER['HTTP_REFERER'];
			$this->callmessage($this->lng['mem_close'], $linkURL, $this->lng['gobackbotton']);
		}
		$ec_member_username = $this->member_cookieview('username');
		$ec_member_username_id = $this->member_cookieview('userid');
		if (!empty($ec_member_username) && !empty($ec_member_username_id)) {
			header('location:' . $this->mlink['logindb']);
			exit();
		}
		$this->lng['sitename'] = $this->lng['membertitle'] . '-' . $this->lng['sitename'];
		$this->pagetemplate->assign('lngpack', $this->lng);
		$templatesDIR = $this->get_templatesdir('member');
		$templatefilename = $lng . '/' . $templatesDIR . '/member_login';
		$this->pagetemplate->assign('seccodelink', $this->get_link('seccode'));
		$this->pagetemplate->assign('mlink', $this->mlink);
		$this->pagetemplate->assign('mem_isseccode', $this->CON['mem_isseccode']);
		$this->pagetemplate->assign('path', 'member');
		unset($mlink, $LANPACK, $this->lng);
		$this->pagetemplate->display($templatefilename, 'index', false, null, admin_LNG);
	}
	function in_logindb() {
		$linkURL = $_SERVER['HTTP_REFERER'];
		if (!$this->CON['mem_isclose']) {
			$this->callmessage($this->lng['mem_close'], $linkURL, $this->lng['gobackbotton']);
		}
		if ($this->CON['mem_isucenter']) {
			include_once admin_ROOT . 'public/uc_client/client.php';
		}
		parent::start_pagetemplate();
		$ec_member_username = $this->member_cookieview('username');
		$ec_member_username_id = $this->member_cookieview('userid');
		if (!empty($ec_member_username) && !empty($ec_member_username_id)) {
			header('location:' . $this->mlink['center']);
			exit();
		}
		$username = $this->fun->accept('username', 'P');
		if (!preg_match("/^[^!@~`\'\"#\$\%\^&\*\(\)\+\-\{\}\[\]\|\\/\?\<\>\,\.\:\;]{2,16}$/i", $username)) {
			$this->callmessage($this->lng['username_err'], $linkURL, $this->lng['gobackbotton']);
		}
		$password = md5($this->fun->accept('password', 'P'));
		$password_uc = $this->fun->accept('password', 'P');
		if ($this->CON['mem_isseccode'] && !admin_WAP) {
			$seccode = $this->fun->accept('seccode', 'P');
			include_once admin_ROOT . 'public/class_seccode.php';
			list($new_seccode, $expiration) = explode("\t", $this->fun->eccode($_COOKIE['ecisp_home_seccode'], 'DECODE'));
			$code = new seccode();
			$code->seccodeconvert($new_seccode);
			if ($new_seccode != strtoupper($seccode)) {
				$this->callmessage($this->lng['seescodeerr'], $linkURL, $this->lng['gobackbotton']);
			}
		}
		$db_table = db_prefix . "member";
		if (empty($password) || empty($username)) {
			$this->callmessage($this->lng['loing_input_err'], $linkURL, $this->lng['gobackbotton']);
		}
		$lockusername = explode(',', $this->CON['mem_lock']);
		if (in_array($username, $lockusername)) {
			$this->callmessage($this->lng['member_memlock'], $linkURL, $this->lng['gobackbotton']);
		} else {
			$db_where = "username='$username' AND password='$password'";
			$db_sql = "SELECT * FROM $db_table WHERE $db_where";
			$rsMember = $this->db->fetch_first($db_sql);
			if (!$rsMember) {
				if ($this->CON['mem_isucenter']) {
					list($uid, $username, $passworduc, $email) = uc_user_login($username, $password_uc);
					if ($uid > 0) {
						$memberread = $this->get_member($username);
						if (!empty($memberread['email']) && $memberread['email'] == $email) {
							$ipadd = $this->fun->ip($_SERVER['REMOTE_ADDR']);
							$addtime = time();
							$db_where = "username='$username' AND email='$email'";
							$db_set = "password='$password',lasttime=$addtime,lastip=$ipadd,visitcount=visitcount+1";
							$this->db->query('UPDATE ' . $db_table . ' SET ' . $db_set . ' WHERE ' . $db_where);
							$this->fun->setcookie('ecisp_member_username', $this->fun->eccode($memberread['username'], 'ENCODE', db_pscode));
							$this->fun->setcookie('ecisp_member_info', $this->fun->eccode("$memberread[userid]|$memberread[alias]|$memberread[integral]|$memberread[mcid]|$memberread[email]|$memberread[lastip]|$ipadd|" . md5($_SERVER['HTTP_USER_AGENT']) . '|' . md5(admin_ClassURL), 'ENCODE', db_pscode));
							$ecisp_login_link = $this->fun->accept('ecisp_login_link', 'C');
							if ($ecisp_login_link) {
								$this->fun->setcookie('ecisp_login_link', null);
								$this->callmessage($this->lng['login_ok'], $ecisp_login_link, $this->lng['gobackurlbotton'], 1, $this->lng['member_center_botton'], 1, $this->mlink['center']);
							} else {
								header('location:' . $this->mlink['center']);
							}
						} else {
							$rsMember['username'] = $username;
							$rsMember['password'] = $password_uc;
							$linkURL = $this->get_link('member_ucenter', $rsMember, admin_LNG);
							$this->callmessage($this->lng['ucenter_check_mess'], $linkURL, $this->lng['ucenter_check_botton'], 1, $this->lng['gobackbotton']);
						}
					} else {
						$this->callmessage($this->lng['login_err'], $linkURL, $this->lng['gobackbotton']);
					}
				} else {
					$this->callmessage($this->lng['login_err'], $linkURL, $this->lng['gobackbotton']);
				}
			} else {
				if ($rsMember['isclass'] == 2) {
					$linkURL = $this->get_link('member_mailsend', $rsMember, admin_LNG);
					$this->callmessage($this->lng['username_check'], $linkURL, $this->lng['checkemail_send'], 1, $this->lng['gobackbotton']);
				}
				if ($rsMember['isclass'] == 0) {
					$this->callmessage($this->lng['login_err'], $linkURL, $this->lng['gobackbotton']);
				}
				if ($this->CON['mem_isucenter']) {
					list($uid, $username, $password, $email) = uc_user_login($username, $password_uc);
					if ($uid > 0) {
						echo uc_user_synlogin($uid);
					} else {
						$data = uc_get_user($username);
						if (!$data && $data[2] != $rsMember['email']) {
							$uid = uc_user_register($username, $password_uc, $rsMember['email']);
							if ($uid <= 0) {
								$this->callmessage($this->lng['ucenter_err'], $linkURL, $this->lng['gobackbotton']);
							}
						} else {
							$this->callmessage($this->lng['login_err'], $linkURL, $this->lng['gobackbotton']);
						}
					}
				}
				$ipadd = $this->fun->ip($_SERVER['REMOTE_ADDR']);
				$addtime = time();
				$db_set = "lasttime=$addtime,lastip=$ipadd,visitcount=visitcount+1";
				$this->db->query('UPDATE ' . $db_table . ' SET ' . $db_set . ' WHERE ' . $db_where);
				$this->fun->setcookie('ecisp_member_username', $this->fun->eccode($rsMember['username'], 'ENCODE', db_pscode));
				$this->fun->setcookie('ecisp_member_info', $this->fun->eccode("$rsMember[userid]|$rsMember[alias]|$rsMember[integral]|$rsMember[mcid]|$rsMember[email]|$rsMember[lastip]|$ipadd|" . md5($_SERVER['HTTP_USER_AGENT']) . '|' . md5(admin_ClassURL), 'ENCODE', db_pscode));
				$ecisp_login_link = $this->fun->accept('ecisp_login_link', 'C');
				if ($ecisp_login_link) {
					$this->fun->setcookie('ecisp_login_link', null);
					$this->callmessage($this->lng['login_ok'], $ecisp_login_link, $this->lng['gobackurlbotton'], 1, $this->lng['member_center_botton'], 1, $this->mlink['center']);
				} else {
					header('location:' . $this->mlink['center']);
				}
			}
		}
	}
	function in_reg() {
		parent::start_pagetemplate();
		if (!$this->CON['mem_isclose']) {
			$linkURL = $_SERVER['HTTP_REFERER'];
			$this->callmessage($this->lng['mem_close'], $linkURL, $this->lng['gobackbotton']);
		}
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		$ec_member_username = $this->member_cookieview('username');
		$ec_member_username_id = $this->member_cookieview('userid');
		if (!empty($ec_member_username) && !empty($ec_member_username_id)) {
			header('location:' . $this->mlink['logindb']);
			exit();
		}
		$this->lng['sitename'] = $this->lng['member_regbotton'] . '-' . $this->lng['sitename'];
		$this->pagetemplate->assign('lngpack', $this->lng);
		$templatesDIR = $this->get_templatesdir('member');
		$templatefilename = $lng . '/' . $templatesDIR . '/member_skin';
		$this->pagetemplate->assign('seccodelink', $this->get_link('seccode'));
		$this->pagetemplate->assign('mlink', $this->mlink);
		$this->pagetemplate->assign('mem_regisseccode', $this->CON['mem_regisseccode']);
		$this->pagetemplate->assign('skincotent', 'member_reg');
		$this->pagetemplate->assign('path', 'member');
		unset($mlink, $LANPACK, $this->lng);
		$this->pagetemplate->display($templatefilename, 'member_skin', false, null, admin_LNG);
	}
	function in_regsave() {
		$linkURL = $_SERVER['HTTP_REFERER'];
		if (!$this->fun->is_token()) {
			$this->callmessage($this->lng['repeatinput'], $linkURL, $this->lng['gobackbotton']);
		}
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		if (!$this->CON['mem_isclose']) {
			$this->callmessage($this->lng['mem_close'], $linkURL, $this->lng['gobackbotton']);
		}
		if ($this->CON['mem_isucenter']) {
			include_once admin_ROOT . 'public/uc_client/client.php';
		}
		$username = $this->fun->accept('username', 'R', true, true);
		$lockusername = explode(',', $this->CON['mem_lock']);
		$email = $this->fun->accept('email', 'R');
		$password2 = $this->fun->accept('password', 'R');
		$password = md5($this->fun->accept('password', 'R'));
		$targeturl = $this->fun->accept('targeturl', 'P');
		$targetid = empty($targeturl) ? 0 : 1;
		if (!preg_match("/^[^!@~`\'\"#\$\%\^&\*\(\)\+\-\{\}\[\]\|\\/\?\<\>\,\.\:\;]{2,16}$/i", $username)) {
			$this->callmessage($this->lng['username_err'], $linkURL, $this->lng['gobackbotton']);
		}
		if (!preg_match("/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/i", $email)) {
			$this->callmessage($this->lng['email_err'], $linkURL, $this->lng['gobackbotton']);
		}
		if ($this->CON['mem_regisseccode'] && !admin_WAP) {
			$seccode = $this->fun->accept('seccode', 'P');
			include_once admin_ROOT . 'public/class_seccode.php';
			list($new_seccode, $expiration) = explode("\t", $this->fun->eccode($_COOKIE['ecisp_home_seccode'], 'DECODE'));
			$code = new seccode();
			$code->seccodeconvert($new_seccode);
			if ($new_seccode != strtoupper($seccode)) {
				$this->callmessage($this->lng['seescodeerr'], $linkURL, $this->lng['gobackbotton']);
			}
		}
		$db_table = db_prefix . "member";
		$db_table2 = db_prefix . 'member_value';
		$db_where = " WHERE username='$username' or email='$email'";
		$countnum = $this->db_numrows($db_table, $db_where);
		if ($countnum > 0 || in_array($username, $lockusername)) {
			$this->callmessage($this->lng['reg_err'], $linkURL, $this->lng['gobackbotton']);
		}
		$ipadd = $this->fun->ip($_SERVER['REMOTE_ADDR']);
		$addtime = time();
		if ($this->CON['mem_isemail'] && $this->CON['mem_isclass']) {
			$isclass = 0;
		} elseif ($this->CON['mem_isemail'] && !$this->CON['mem_isclass']) {
			$isclass = 2;
		} elseif (!$this->CON['mem_isemail'] && $this->CON['mem_isclass']) {
			$isclass = 0;
		} else {
			$isclass = 1;
		}
		if ($this->CON['mem_isucenter']) {
			$uid = uc_user_register($username, $password2, $email);
			if ($uid <= 0) {
				$this->callmessage($this->lng['reg_err'], $linkURL, $this->lng['gobackbotton']);
			}
		}
		$db_field = 'username,password,email,question,answer,sex,birthday,country,province,city,district,alias,address,zipcode,tel,mobile,qq,msn,integral,visitcount,lastip,addtime,lasttime,mcid,isclass';
		$db_values = "'$username','$password','$email','$question','$answer',0,0,0,0,0,0,'$alias','$address',0,'$tel','$mobile',0,'$msn',0,0,$ipadd,$addtime,$addtime,1,$isclass";
		$this->db->query('INSERT INTO ' . $db_table . ' (' . $db_field . ') VALUES (' . $db_values . ')');
		$insert_id = $this->db->insert_id();
		$modelatt = $this->get_memberatt_array($lng);
		if (is_array($modelatt)) {
			$modelarray = array();
			foreach ($modelatt as $key => $value) {
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
				$modelarray[] = $value;
			}
			$userinstall = null;
			$userinstalldb = null;
			foreach ($modelarray as $key => $value) {
				$userinstall.=$value['attrname'] . ',';
				if ($value['accept'] == 'int') {
					$valuestr = intval($this->fun->accept($value['attrname'], 'P'));
					$valuestr = empty($valuestr) ? 0 : $valuestr;
					$userinstalldb.="$valuestr,";
					$userupdatedb.=$value['attrname'] . "=$valuestr,";
				} elseif ($value['accept'] == 'float') {
					$valuestr = floatval($this->fun->accept($value['attrname'], 'P'));
					$valuestr = empty($valuestr) ? 0 : $valuestr;
					$userinstalldb.="$valuestr,";
					$userupdatedb.=$value['attrname'] . "=$valuestr,";
				} elseif ($value['accept'] == 'html') {
					$valuestr = $this->fun->accept($value['attrname'], 'P');
					$valuestr = empty($valuestr) ? '' : $this->fun->Text2Html($valuestr);
					$userinstalldb.="'$valuestr',";
					$userupdatedb.=$value['attrname'] . "='$valuestr',";
				} elseif ($value['accept'] == 'editor') {
					$valuestr = $this->fun->accept($value['attrname'], 'P', true, true);
					$valuestr = $this->fun->substr($valuestr, 1000);
					$userinstalldb.="'$valuestr',";
					$userupdatedb.=$value['attrname'] . "='$valuestr',";
				} elseif ($value['accept'] == 'text') {
					$valuestr = $this->fun->accept($value['attrname'], 'P', true, true);
					$valuestr = $this->fun->substr($valuestr, 150);
					$userinstalldb.="'$valuestr',";
					$userupdatedb.=$value['attrname'] . "='$valuestr',";
				} elseif ($value['accept'] == 'data') {
					$valuestr = $this->fun->accept($value['attrname'], 'P', true, true);
					$valuestr = empty($valuestr) ? 0 : strtotime($valuestr);
					$valuestr = intval($valuestr);
					$userinstalldb.="$valuestr,";
					$userupdatedb.=$value['attrname'] . "=$valuestr,";
				} elseif ($value['accept'] == 'checkbox') {
					$valuestr = $this->fun->accept($value['attrname'], 'P', true, true);
					$valuestr = is_array($valuestr) ? implode(',', $valuestr) : '';
					$userinstalldb.="'$valuestr',";
					$userupdatedb.=$value['attrname'] . "='$valuestr',";
				}
			}
		}
		if ($userinstalldb) {
			$db_field = $userinstall . 'userid';
			$db_values = $userinstalldb . $insert_id;
			$this->db->query('INSERT INTO ' . $db_table2 . ' (' . $db_field . ') VALUES (' . $db_values . ')');
		}
		if ($this->CON['mem_isemail'] && $this->CON['is_email']) {
			$this->membermailsend('memberat', $insert_id);
		} elseif ($this->CON['is_email']) {
			$this->membermailsend('memberreg', $insert_id);
		}
		if ($targetid && !$this->CON['mem_isemail']) {
			$this->fun->setcookie('ecisp_member_username', $this->fun->eccode($username, 'ENCODE', db_pscode));
			$this->fun->setcookie('ecisp_member_info', $this->fun->eccode("$insert_id|$username|0|0|$email|$ipadd|$ipadd|" . md5($_SERVER['HTTP_USER_AGENT']) . '|' . md5(admin_ClassURL), 'ENCODE', db_pscode));
			header("location:$targeturl");
			exit();
		}
		if ($isclass == 1) {
			$rsMember = $this->get_member(null, $insert_id);
			$this->fun->setcookie('ecisp_member_username', $this->fun->eccode($rsMember['username'], 'ENCODE', db_pscode));
			$this->fun->setcookie('ecisp_member_info', $this->fun->eccode("$rsMember[userid]|$rsMember[alias]|$rsMember[integral]|$rsMember[mcid]|$rsMember[email]|$rsMember[lastip]|$ipadd|" . md5($_SERVER['HTTP_USER_AGENT']) . '|' . md5(admin_ClassURL), 'ENCODE', db_pscode));
			$ecisp_login_link = $this->fun->accept('ecisp_login_link', 'C');
			if ($ecisp_login_link) {
				$this->fun->setcookie('ecisp_login_link', null);
				$this->callmessage($this->lng['login_ok'], $ecisp_login_link, $this->lng['gobackurlbotton'], 1, $this->lng['member_center_botton'], 1, $this->mlink['center']);
			} else {
				$linkURL = $this->get_link('memberlogin', '', admin_LNG);
				$this->callmessage($this->lng['reg_ok'], $linkURL, $this->lng['login_botton']);
			}
		} else {
			$linkURL_botton = $this->get_link('memberlogin', '', admin_LNG);
			$rsMember['username'] = $username;
			$rsMember['password'] = $password;
			$linkURL = $this->get_link('member_mailsend', $rsMember, admin_LNG);
			$this->callmessage($this->lng['username_check'], $linkURL_botton, $this->lng['gobackurlbotton'], 1, $this->lng['checkemail_send'], 1, $linkURL);
		}
	}
	function in_mailsend() {
		if (!$this->CON['mem_isclose']) {
			$linkURL = $_SERVER['HTTP_REFERER'];
			$this->callmessage($this->lng['mem_close'], $linkURL, $this->lng['gobackbotton']);
		}
		$username = $this->fun->eccode($this->fun->accept('key', 'G'), 'DECODE', db_pscode, FALSE);
		$password = $this->fun->eccode($this->fun->accept('code', 'G'), 'DECODE', db_pscode, FALSE);
		$linkURL = $this->get_link('memberlogin', '', admin_LNG);
		if (empty($username) || empty($password)) {
			$this->callmessage($this->lng['username_sendmail_err'], $linkURL, $this->lng['gobackurlbotton']);
		}
		$username = $this->fun->substr($username, 16);
		$password = $this->fun->substr($password, 35);
		$username = addslashes($username);
		$password = addslashes($password);
		if (!preg_match("/^[^!@~`\'\"#\$\%\^&\*\(\)\+\-\{\}\[\]\|\\/\?\<\>\,\.\:\;]{2,16}$/i", $username)) {
			$this->callmessage($this->lng['username_err'], $linkURL, $this->lng['gobackbotton']);
		}
		$db_table = db_prefix . "member";
		$db_where = "username='$username' AND password='$password' AND isclass=2";
		$db_sql = "SELECT * FROM $db_table WHERE $db_where";
		$rsMember = $this->db->fetch_first($db_sql);
		if (!$rsMember) {
			$this->callmessage($this->lng['username_sendmail_err'], $linkURL, $this->lng['gobackurlbotton']);
		} else {
			if ($this->CON['is_email']) {
				$this->membermailsend('memberat', $rsMember['userid']);
				$this->callmessage($this->lng['username_sendmail_ok'], $linkURL, $this->lng['gobackurlbotton']);
			} else {
				$this->callmessage($this->lng['username_sendmail_err'], $linkURL, $this->lng['gobackurlbotton']);
			}
		}
	}
	function in_emailmarketing() {
		$username = $this->fun->eccode($this->fun->accept('key', 'G'), 'DECODE', db_pscode, FALSE);
		$password = $this->fun->eccode($this->fun->accept('code', 'G'), 'DECODE', db_pscode, FALSE);
		$linkURL = $this->get_link('memberlogin', '', admin_LNG);
		if (empty($username) || empty($password)) {
			$this->callmessage($this->lng['username_check_no'], $linkURL, $this->lng['gobackurlbotton']);
		}
		$username = $this->fun->substr($username, 16);
		$password = $this->fun->substr($password, 35);
		$username = addslashes($username);
		$password = addslashes($password);
		if (!preg_match("/^[^!@~`\'\"#\$\%\^&\*\(\)\+\-\{\}\[\]\|\\/\?\<\>\,\.\:\;]{2,16}$/i", $username)) {
			$this->callmessage($this->lng['username_err'], $linkURL, $this->lng['gobackbotton']);
		}
		$db_table = db_prefix . "member";
		$db_where = "username='$username' AND password='$password' AND isclass=2";
		$db_sql = "SELECT username FROM $db_table WHERE $db_where";
		$rsMember = $this->db->fetch_first($db_sql);
		if (!$rsMember) {
			$this->callmessage($this->lng['username_check_no'], $linkURL, $this->lng['gobackurlbotton']);
		}
		$db_set = "isclass=1";
		$this->db->query('UPDATE ' . $db_table . ' SET ' . $db_set . ' WHERE ' . $db_where);
		$this->callmessage($this->lng['username_check_ok'], $linkURL, $this->lng['gobackurlbotton']);
	}
	function in_uccheckuser() {
		if ($this->CON['mem_isucenter']) {
			include_once admin_ROOT . 'public/uc_client/client.php';
		}
		parent::start_pagetemplate();
		if (!$this->CON['mem_isclose']) {
			$linkURL = $_SERVER['HTTP_REFERER'];
			$this->callmessage($this->lng['mem_close'], $linkURL, $this->lng['gobackbotton']);
		}
		$username = $this->fun->eccode($this->fun->accept('key', 'G'), 'DECODE', db_pscode, FALSE);
		$password = $this->fun->eccode($this->fun->accept('code', 'G'), 'DECODE', db_pscode, FALSE);
		$linkURL = $this->get_link('memberlogin', '', admin_LNG);
		$username = $this->fun->substr($username, 16);
		$password = $this->fun->substr($password, 35);
		if (!preg_match("/^[^!@~`\'\"#\$\%\^&\*\(\)\+\-\{\}\[\]\|\\/\?\<\>\,\.\:\;]{2,16}$/i", $username)) {
			$this->callmessage($this->lng['username_err'], $linkURL, $this->lng['gobackbotton']);
		}
		if ($this->CON['mem_isucenter']) {
			if ($data = uc_get_user($username)) {
				list($uid, $username, $email) = $data;
			} else {
				$this->callmessage($this->lng['username_check_no'], $linkURL, $this->lng['gobackurlbotton']);
			}
		}
		$md_password = md5($password);
		$db_table = db_prefix . "member";
		$db_where = "username='$username' AND password='$md_password' AND isclass=2";
		$db_sql = "SELECT username FROM $db_table WHERE $db_where";
		$rsMember = $this->db->fetch_first($db_sql);
		if ($rsMember) {
			$this->callmessage($this->lng['username_check_no'], $linkURL, $this->lng['gobackurlbotton']);
		} else {
			$ipadd = $this->fun->ip($_SERVER['REMOTE_ADDR']);
			$addtime = time();
			$db_field = 'username,password,email,question,answer,sex,birthday,country,province,city,district,alias,address,zipcode,tel,mobile,qq,msn,integral,visitcount,lastip,addtime,lasttime,mcid,isclass';
			$db_values = "'$username','$md_password','$email','$question','$answer',0,0,0,0,0,0,'$alias','$address',0,'$tel','$mobile',0,'$msn',0,0,$ipadd,$addtime,$addtime,1,1";
			$this->db->query('INSERT INTO ' . $db_table . ' (' . $db_field . ') VALUES (' . $db_values . ')');
			$this->callmessage($this->lng['username_check_ok'], $linkURL, $this->lng['gobackurlbotton']);
		}
	}
	function in_lostpasswd() {
		parent::start_pagetemplate();
		if (!$this->CON['mem_isclose']) {
			$linkURL = $_SERVER['HTTP_REFERER'];
			$this->callmessage($this->lng['mem_close'], $linkURL, $this->lng['gobackbotton']);
		}
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		$this->lng['sitename'] = $this->lng['membertitle'] . '-' . $this->lng['sitename'];
		$this->pagetemplate->assign('lngpack', $this->lng);
		$templatesDIR = $this->get_templatesdir('member');
		$templatefilename = $lng . '/' . $templatesDIR . '/member_lostpasswd';
		$this->pagetemplate->assign('seccodelink', $this->get_link('seccode'));
		$this->pagetemplate->assign('tokenkey', $this->fun->token());
		$this->pagetemplate->assign('mlink', $this->mlink);
		$this->pagetemplate->assign('path', 'member');
		$this->pagetemplate->assign('mem_isseccode', $this->CON['mem_isseccode']);
		$this->pagetemplate->assign('is_moblie', $this->CON['is_moblie']);
		unset($this->mlink, $LANPACK, $this->lng);
		$this->pagetemplate->display($templatefilename, 'index', false, null, admin_LNG);
	}
	function in_lostpasswdsave() {
		$linkURL = $_SERVER['HTTP_REFERER'];
		if (!$this->fun->is_token()) {
			$this->callmessage($this->lng['repeatinput'], $linkURL, $this->lng['gobackbotton']);
		}
		if (!$this->CON['mem_isclose']) {
			$this->callmessage($this->lng['mem_close'], $linkURL, $this->lng['gobackbotton']);
		}
		$istype = intval($this->fun->accept('istype', 'P'));
		$istype = empty($istype) ? 1 : $istype;
		if ($istype == 1) {
			if (!$this->CON['is_email']) {
				$linkURL = $this->get_link('memberlogin', '', admin_LNG);
				$this->callmessage($this->lng['main_send_no'], $linkURL, $this->lng['gobackurlbotton']);
			}
		} else {
			if (!$this->CON['is_moblie']) {
				$linkURL = $this->get_link('memberlogin', '', admin_LNG);
				$this->callmessage($this->lng['sms_send_no'], $linkURL, $this->lng['gobackurlbotton']);
			}
		}
		if ($this->CON['mem_isucenter']) {
			include_once admin_ROOT . 'public/uc_client/client.php';
		}
		$username = $this->fun->accept('username', 'P');
		$email = $this->fun->accept('email', 'P');
		$mobile = $this->fun->accept('mobile', 'P');
		if (empty($username)) {
			$this->callmessage($this->lng['username_err'], $linkURL, $this->lng['gobackbotton']);
		}
		if (!preg_match("/^[^!@~`\'\"#\$\%\^&\*\(\)\+\-\{\}\[\]\|\\/\?\<\>\,\.\:\;]{2,16}$/i", $username)) {
			$this->callmessage($this->lng['username_err'], $linkURL, $this->lng['gobackbotton']);
		}
		if ($istype == 1) {
			if (!preg_match("/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/i", $email)) {
				$this->callmessage($this->lng['email_err'], $linkURL, $this->lng['gobackbotton']);
			}
		} else {
			if (!preg_match("/^1[0-9]{10}$/i", $mobile)) {
				$this->callmessage($this->lng['moblie_validate'], $linkURL, $this->lng['gobackbotton']);
			}
		}
		if ($this->CON['mem_isseccode'] && !admin_WAP) {
			$seccode = $this->fun->accept('seccode', 'P');
			include_once admin_ROOT . 'public/class_seccode.php';
			list($new_seccode, $expiration) = explode("\t", $this->fun->eccode($_COOKIE['ecisp_home_seccode'], 'DECODE'));
			$code = new seccode();
			$code->seccodeconvert($new_seccode);
			if ($new_seccode != strtoupper($seccode)) {
				$this->callmessage($this->lng['seescodeerr'], $linkURL, $this->lng['gobackbotton']);
			}
		}
		$lockusername = explode(',', $this->CON['mem_lock']);
		if (in_array($username, $lockusername)) {
			$this->callmessage($this->lng['member_memlock'], $linkURL, $this->lng['gobackbotton']);
		}
		$db_table = db_prefix . "member";
		if ($istype == 1) {
			$db_where = "username='$username' AND email='$email' AND isclass=1";
		} else {
			$db_where = "username='$username' AND mobile='$mobile' AND isclass=1 AND ismoblie=1";
		}
		$db_sql = "SELECT * FROM $db_table WHERE $db_where";
		$rsMember = $this->db->fetch_first($db_sql);
		if ($rsMember) {
			$password = $this->fun->getStr(8);
			$password2 = md5($password);
			$db_set = "password='$password2'";
			$this->db->query('UPDATE ' . $db_table . ' SET ' . $db_set . ' WHERE ' . $db_where);
			if ($this->CON['mem_isucenter']) {
				$data = uc_get_user($username);
				if ($data) {
					list($uid2, $username2, $email2) = $data;
					if ($email == $email2) {
						uc_user_edit($username, $password, $password, $email, 1);
					}
				}
			}
			if ($istype == 1) {
				$this->membermailsend('memberpw', $rsMember['userid'], $password);
			} else {
				if ($this->CON['is_moblie']) {
					$rsMember['newpassword'] = $password;
					$this->membersmssend($rsMember, $mobile, 'memberpass');
				}
			}
			$linkURL = $this->get_link('memberlogin', '', admin_LNG);
			$this->callmessage($this->lng['password_lostok'], $linkURL, $this->lng['memberlogin']);
		} else {
			$linkURL = $this->get_link('memberlogin', '', admin_LNG);
			$this->callmessage($this->lng['password_losterr'], $linkURL, $this->lng['gobackurlbotton']);
		}
	}
	function in_quit() {
		if ($this->CON['mem_isucenter']) {
			include_once admin_ROOT . 'public/uc_client/client.php';
		}
		parent::member_purview();
		$this->fun->setcookie('ecisp_member_username', false);
		$this->fun->setcookie('ecisp_member_info', false);
		if ($this->CON['mem_isucenter']) {
			uc_user_synlogout();
		}
		unset($this->ec_member_username, $this->ec_member_username_id, $this->condition, $this->ec_member_alias, $this->ec_member_integral, $this->ec_member_mcid, $this->ec_member_email, $this->ec_member_lastip);
		header('location:' . $this->mlink['login']);
	}
}
