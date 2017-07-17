<?php
/*
  PHP version 5
  Copyright (c) 2002-2014 ECISP.CN、EarcLink.COM
  警告：这不是一个免费的软件，请在许可范围内使用，请尊重知识产权，侵权必究，举报有奖
  作者：黄祥云 E-mail:6326420@qq.com  QQ:6326420 TEL:18665655030
  ESPCMS官网介绍：http://www.ecisp.cn	企业建站：http://www.earclink.cn
 */
error_reporting(0);
ini_set("magic_quotes_runtime", 0);
ini_set('memory_limit', '640M');
ini_set('default_charset', 'utf-8');
define('adminfile', 'adminsoft');
define('admin_ClassURL', 'http://' . $_SERVER['HTTP_HOST'] . substr($_SERVER['PHP_SELF'], 0, strrpos($_SERVER['PHP_SELF'], '/')));
define('admin_URL', str_replace(adminfile, '', admin_ClassURL));
$urlinfo = parse_url(admin_URL);
define('admin_PATH', $urlinfo['path']);
define('admin_http', $urlinfo['host']);
$rootDIR = $CONFIG['http_pathtype'] ? admin_URL : str_replace('http://' . admin_http, '', admin_URL);
define('admin_rootDIR', $rootDIR);
define('admin_ROOT', substr(__FILE__, 0, strrpos(__FILE__, adminfile)));
define('admin_DIR', pathinfo(__FILE__, PATHINFO_DIRNAME));
define('admin_FROM', false);
define('admin_WAP', false);
define('admin_AGENT', $_SERVER['HTTP_USER_AGENT']);
require admin_ROOT . 'datacache/public.php';
require admin_ROOT . 'public/class_connector.php';
$archive = indexget('archive', 'R');
$archive = empty($archive) ? 'adminuser' : $archive;
$action = indexget('action', 'R');
$action = empty($action) ? 'login' : $action;
if (in_array($archive, array('acmessagemain', 'adminuser', 'advertmain', 'adverttypemain', 'albummain', 'article', 'bbsmain', 'bbstypemain', 'callmain',
	    'citylist', 'connected', 'createmain', 'createseomain', 'upgrademain', 'enquirymain', 'filemain', 'filemanage', 'formmain', 'formmessmain', 'language', 'languagepack',
	    'lib_menu', 'mailinvite', 'mailsendmain', 'mailtemplatemain', 'management', 'memattmanage', 'membermain', 'memclassmanage', 'modelmanage', 'ordermain',
	    'payplug', 'payreceipt', 'powergroup', 'printtemplatemain', 'recommanage', 'seomanage', 'shipplug', 'shipreceipt', 'sitemain', 'skinmain', 'sqlmanage', 'smstemplatemain',
	    'subjectmanage', 'templatemain', 'typemanage', 'mobliemain', 'smsmain', 'weixinmain', 'modenmain'))) {
	if (!file_exists(admin_ROOT . adminfile . "/control/$archive.php")) {
		exit('Access error!');
	}
	include admin_ROOT . adminfile . "/control/$archive.php";
	$control = new important();
	$action = 'on' . $action;
	if (method_exists($control, $action)) {
		$control->$action();
	} else {
		exit('错误：系统方法错误！');
	}
} else {
	exit('Access error!');
}
function indexget($k, $var = 'R', $htmlcode = true) {
	switch ($var) {
		case 'G':
			$var = &$_GET;
			break;
		case 'P':
			$var = &$_POST;
			break;
		case 'C':
			$var = &$_COOKIE;
			break;
		case 'R':
			$var = &$_GET;
			if (empty($var[$k])) {
				$var = &$_POST;
			}
			break;
	}
	$putvalue = isset($var[$k]) ? indexdaddslashes($var[$k], 0) : NULL;
	return $htmlcode ? indexhtmldecode($putvalue) : $putvalue;
}
function indexdaddslashes($string, $force = 0, $strip = FALSE) {
	if (!get_magic_quotes_gpc() || $force == 1) {
		if (is_array($string)) {
			foreach ($string as $key => $val) {
				$string[$key] = addslashes($strip ? stripslashes($val) : $val);
			}
		} else {
			$string = addslashes($strip ? stripslashes($string) : $string);
		}
	}
	return $string;
}
function indexhtmldecode($str) {
	if (empty($str)) {
		return $str;
	}
	if (!is_array($str)) {
		$str = htmlspecialchars(trim($str));
		$str = str_ireplace("Xss", "", $str);
	} else {
		foreach ($str as $key => $val) {
			$str[$key] = htmlspecialchars($val);
			$str[$key] = indexhtmldecode($val);
		}
	}
	return $str;
}
