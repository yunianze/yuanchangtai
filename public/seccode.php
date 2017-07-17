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
define('adminfile', 'public');
define('admin_ClassURL', 'http://' . $_SERVER['HTTP_HOST'] . substr($_SERVER['PHP_SELF'], 0, strrpos($_SERVER['PHP_SELF'], '/')));
define('admin_URL', str_replace(adminfile, '', admin_ClassURL) . '/');
define('admin_ROOT', substr(__FILE__, 0, strrpos(__FILE__, adminfile)));
define('admin_FROM', true);
define('admin_AGENT', $_SERVER['HTTP_USER_AGENT']);
require_once admin_ROOT . 'datacache/command.php';
require_once admin_ROOT . 'public/class_function.php';
$fun = new functioninc();
$seccode = rand(100000, 999999);
$secode = $fun->accept('secode', 'R');
if ($secode == 'ecisp_seccode') {
	$secode_name = 'ecisp_seccode';
} else {
	$secode_name = 'ecisp_home_seccode';
}
$fun->setcookie($secode_name, $fun->eccode($seccode . "\t" . time(), 'ENCODE'));
@header("Expires: -1");
@header("Cache-Control: no-store, private, post-check=0, pre-check=0, max-age=0", FALSE);
@header("Pragma: no-cache");
include_once admin_ROOT . 'public/class_seccode.php';
$code = new seccode();
$code->code = $seccode;
$code->type = 0;
$code->width = 70;
$code->height = 23;
$code->background = 30;
$code->adulterate = $CONFIG['scode_adulterate'];
$code->ttf = 0;
$code->angle = 0;
$code->color = 0;
$code->size = 1;
$code->shadow = $CONFIG['scode_shadow'];
$code->animator = 0;
$code->bgcolor = $CONFIG['scode_bgcolor'];
$code->fontcolor = $CONFIG['scode_fontcolor'];
$code->datapath = admin_ROOT . 'datacache/';
$code->includepath = '';
$code->display();
