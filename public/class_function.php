<?php

/*
  PHP version 5
  Copyright (c) 2002-2014 ECISP.CN、EarcLink.COM
  警告：这不是一个免费的软件，请在许可范围内使用，请尊重知识产权，侵权必究，举报有奖
  作者：黄祥云 E-mail:6326420@qq.com  QQ:6326420 TEL:18665655030
  ESPCMS官网介绍：http://www.ecisp.cn	企业建站：http://www.earclink.cn
 */

class functioninc {

	function fgetcsv_reg(& $handle, $length = null, $d = ',', $e = '"') {
		$d = preg_quote($d);
		$e = preg_quote($e);
		$_line = "";
		$eof = false;
		while ($eof != true) {
			$_line .= ( empty($length) ? @fgets($handle) : @fgets($handle, $length));
			$itemcnt = preg_match_all('/' . $e . '/', $_line, $dummy);
			if ($itemcnt % 2 == 0) $eof = true;
		}
		$_csv_line = preg_replace('/(?: |[ ])?$/', $d, trim($_line));
		$_csv_pattern = '/(' . $e . '[^' . $e . ']*(?:' . $e . $e . '[^' . $e . ']*)*' . $e . '|[^' . $d . ']*)' . $d . '/';
		preg_match_all($_csv_pattern, $_csv_line, $_csv_matches);
		$_csv_data = $_csv_matches[1];
		for ($_csv_i = 0; $_csv_i < count($_csv_data); $_csv_i++) {
			$_csv_data[$_csv_i] = preg_replace('/^' . $e . '(.*)' . $e . '$/s', '$1', $_csv_data[$_csv_i]);
			$_csv_data[$_csv_i] = str_replace($e . $e, $e, $_csv_data[$_csv_i]);
		}
		return empty($_line) ? false : $_csv_data;
	}

	function objectToArray(&$object) {
		$object = (array) $object;
		foreach ($object as $key => $value) {
			if (is_object($value) || is_array($value)) {
				$this->objectToArray($value);
				$object[$key] = $value;
			}
		}
	}

	function filewrite($fileName, $content, $type = "wb+") {
		if (empty($fileName)) {
			return false;
		}
		$fd = fopen($fileName, $type);
		if ($fd) {
			fwrite($fd, $content);
			fclose($fd);
			return true;
		} else {
			return false;
		}
	}

	function fileArrayet($path) {
		if (!file_exists($path)) {
			return false;
		}
		$arr = array();
		$str = @file_get_contents($path);
		if (!empty($str)) {
			$tmp_arr = explode("\n", $str);
			foreach ($tmp_arr as $val) {
				$val = trim($val, "\r;");
				if (!empty($val)) {
					list($table, $count) = explode(':', $val);
					$arr[$table] = $count;
				}
			}
		}
		return $arr;
	}

	function delfile($file) {
		if (!is_dir($file)) {
			if (is_file($file)) {
				if (!@is_writable($file)) @chmod($file, 0777);
				return unlink($file);
			}else {
				return false;
			}
		} else {
			return $this->delDir($file);
		}
	}

	function delDir($dirName) {
		if ($handle = opendir($dirName)) {
			while (false !== ($item = readdir($handle))) {
				if ($item != '.' && $item != '..') {
					if (is_dir("$dirName/$item")) {
						$this->delDir("$dirName/$item");
					} else {
						@unlink("$dirName/$item");
					}
				}
			}
			closedir($handle);
			if (!@rmdir($dirName)) return false;
		}
	}

	function list_dir($dirpath, $extension = array()) {
		if ($dirpath[strlen($dirpath) - 1] != "/") {
			$dirpath.="/";
		}
		static $result_array = array();
		if (is_dir($dirpath)) {
			$handle = opendir($dirpath);
			while (false !== ( $file = readdir($handle))) {
				if ($file == "." || $file == "..") {
					continue;
				}
				$filename = $dirpath . $file;
				if (is_dir($filename)) {
					array_push($result_array, $filename);
					$this->list_dir($filename, $extension);
				} else {
					if (count($extension) > 0) {
						$options = @pathinfo($filename);
						if (!in_array($options['extension'], $extension)) {
							continue;
						}
					}
					array_push($result_array, $filename);
				}
			}
			closedir($handle);
		}
		return $result_array;
	}

	function random($length = 6, $numeric = 0) {
		PHP_VERSION < '4.2.0' && mt_srand((double) microtime() * 1000000);
		if ($numeric) {
			$hash = sprintf('%0' . $length . 'd', mt_rand(0, pow(10, $length) - 1));
		} else {
			$hash = '';
			$chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz';
			$max = strlen($chars) - 1;
			for ($i = 0; $i < $length; $i++) {
				$hash.=$chars[mt_rand(0, $max)];
			}
		}
		return $hash;
	}

	function get_random() {
		$str = time();
		for ($i = 0; $i < 6; $i++) {
			$str .= chr(mt_rand(97, 122));
		}
		return $str;
	}

	function setcookie($key, $value, $life = 0) {
		$this->time = time();
		setcookie($key, $value, ($life ? time() + $life : 0), '/', '', ($_SERVER['SERVER_PORT'] == 443 ? 1 : 0));
	}

	function setsession($key, $value) {
		if (empty($key) || empty($value)) return false;
		session_start();
		$_SESSION[$key] = $value;
		return true;
	}

	function eccode($string, $operation = 'DECODE', $key = '@LFK24s224%@safS3s%1f%', $mcrype = true) {
		$result = null;
		if ($operation == 'ENCODE') {
			if (extension_loaded('mcrypt') && $mcrype) {
				$result = $this->encryptCookie($string, $key);
			} else {
				for ($i = 0; $i < strlen($string); $i++) {
					$char = substr($string, $i, 1);
					$keychar = substr($key, ($i % strlen($key)) - 1, 1);
					$char = chr(ord($char) + ord($keychar));
					$result.=$char;
				}
				$result = base64_encode($result);
				$result = str_replace(array('+', '/', '='), array('-', '_', ''), $result);
			}
		} elseif ($operation == 'DECODE') {
			if (extension_loaded('mcrypt') && $mcrype) {
				$result = $this->decryptCookie($string, $key);
			} else {
				$data = str_replace(array('-', '_'), array('+', '/'), $string);
				$mod4 = strlen($data) % 4;
				if ($mod4) {
					$data .= substr('====', $mod4);
				}
				$string = base64_decode($data);
				for ($i = 0; $i < strlen($string); $i++) {
					$char = substr($string, $i, 1);
					$keychar = substr($key, ($i % strlen($key)) - 1, 1);
					$char = chr(ord($char) - ord($keychar));
					$result.=$char;
				}
			}
		}
		return $result;
	}

	function noncefile() {
		$noncefile = $this->accept('point', 'R') . $this->accept('archive', 'R') . $this->accept('action', 'R');
		return $noncefile;
	}

	function daddslashes($string, $force = 0, $strip = FALSE) {
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

	function sort_terms($a, $b) {
		if (strlen($a) == strlen($b)) {
			return 0;
		}
		return (strlen($a) < strlen($b)) ? 1 : -1;
	}

	function strarray($val, $array) {
		if (!is_array($array) || empty($val)) {
			return false;
		}
		foreach ($array as $key => $value) {
			if ($value != $val) {
				if (strstr($val, $value)) {
					return $value;
				}
			}
		}
		return false;
	}

	function stripslashes($string) {
		if (is_array($string)) {
			foreach ($string as $key => $val) {
				$string[$key] = $this->stripslashes($val);
			}
		} else {
			$string = stripslashes($string);
		}
		return $string;
	}

	function preg_htmldecode($string) {
		if (is_array($string)) {
			foreach ($string as $key => $val) {
				$string[$key] = $this->preg_htmldecode($val);
			}
		} else {
			$string = str_replace(array('&', '"', '<', '>'), array('&amp;', '&quot;', '&lt;', '&gt;'), $string);
			$string = preg_replace('/&amp;((#(\d{3,5}|x[a-fA-F0-9]{4}));)/', '&\\1', $string);
		}
		return $string;
	}

	function htmldecode($str) {
		if (empty($str)) return $str;
		$search = array(
		    "'<script[^>]*?>.*?</script>'si",
		    "'<[\/\!]*?[^<>]*?>'si",
		);
		$replace = array(
		    "",
		    "",
		);
		if (!is_array($str)) {
			$str = htmlspecialchars(trim($str));
			$str = @preg_replace($search, $replace, $str);
		} else {
			foreach ($str as $key => $val) {
				$str[$key] = htmlspecialchars($val);
				$str[$key] = $this->htmldecode($val);
			}
		}
		return $str;
	}

	function codecon($str, $ectype = 'ub') {
		if (empty($str)) return $str;
		if (!is_array($str)) {
			$str = (admin_LNG == 'big5') ? $this->codeing($str, $ectype) : $str;
		} else {
			foreach ($str as $key => $val) {
				$str[$key] = (admin_LNG == 'big5') ? $this->codeing($val, $ectype) : $val;
			}
		}
		return $str;
	}

	function inputcodetrim($str) {
		if (empty($str)) return $str;
		$str = str_replace("&amp;", "", $str);
		$str = str_replace("&gt;", "", $str);
		$str = str_replace("&lt;", "", $str);
		$str = str_replace("&lt;", "", $str);
		$str = str_ireplace("seselectlect", "", $str);
		$str = str_ireplace("select", "", $str);
		$str = str_ireplace("join", "", $str);
		$str = str_ireplace("uunionnion", "", $str);
		$str = str_ireplace("union", "", $str);
		$str = str_ireplace("ascii", "", $str);
		$str = str_ireplace("where", "", $str);
		$str = str_ireplace("insert", "", $str);
		$str = str_ireplace("delete", "", $str);
		$str = str_ireplace("update", "", $str);
		$str = str_ireplace("like", "", $str);
		$str = str_ireplace("drop", "", $str);
		$str = str_ireplace("limit", "", $str);
		$str = str_ireplace("create", "", $str);
		$str = str_ireplace("modify", "", $str);
		$str = str_ireplace("rename", "", $str);
		$str = str_ireplace("count", "", $str);
		$str = str_ireplace("frfromom", "", $str);
		$str = str_ireplace("from", "", $str);
		$str = str_ireplace("group by", "", $str);
		$str = str_ireplace("concat", "", $str);
		$str = str_ireplace("alter", "", $str);
		$str = str_ireplace("script", "", $str);
		$str = str_ireplace("'", "", $str);
		$str = str_replace('%20', '', $str);
		$str = str_replace('%27', '', $str);
		$str = str_replace('%2527', '', $str);
		$str = str_replace('\0', '', $str);
		$str = str_replace('*', '', $str);
		$str = str_replace('"', '"', $str);
		$str = str_replace("'", '', $str);
		$str = str_replace('"', '', $str);
		$str = str_replace(';', '', $str);
		$str = str_replace('<', '<', $str);
		$str = str_replace('>', '>', $str);
		$str = str_replace("{", '', $str);
		$str = str_replace('}', '', $str);
		$str = str_replace('\\', '', $str);
		$str = str_replace('\0', '', $str);
		$str = str_ireplace("ca&#115;", "cast", $str);
		$str = preg_replace("/<span[^>]+>/i", "<span>", $str);
		$str = preg_replace("/<p[^>]+>/i", "<p>", $str);
		$str = preg_replace("/<font[^>]+>/i", "<font>", $str);
		$str = preg_replace("/width=(\'|\")?[\d%]+(\'|\")?/i", "", $str);
		$str = preg_replace("/height=(\'|\")?[\d%]+(\'|\")?/i", "", $str);
		$str = preg_replace("'<style[^\f]*?(\/style>)'si", "", $str);
		return $str;
	}

	function Html2Text($text, $type = 0) {
		if ($type) {
			$text = stripslashes($text);
		}
		$text = htmlspecialchars_decode($text);
		$text = $this->br2nl($text);
		return $text;
	}

	function Text2Html($txt, $is_preg = true) {
		$txt = htmlspecialchars($txt);
		if ($is_preg) {
			$txt = preg_replace("/\r\n/isU", "<br/>", $txt);
			$txt = preg_replace("/\r/isU", "<br/>", $txt);
			$txt = preg_replace("/\n/isU", "<br/>", $txt);
		} else {
			preg_replace("/[\n]{1,}/isU", "<br/>", $txt);
		}
		return $txt;
	}

	function br2nl($coffee) {
		$coffee = str_replace("\r\n", "\n", $coffee);
		$coffee = str_replace("<br />\n", "\n", $coffee);
		return $coffee;
	}

	function accept($k, $var = 'R', $htmlcode = true, $rehtml = false) {
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
		$putvalue = isset($var[$k]) ? $this->daddslashes($var[$k], 0) : NULL;
		return $htmlcode ? ($rehtml ? $this->preg_htmldecode($putvalue) : $this->htmldecode($putvalue)) : $putvalue;
	}

	function acceptset($value) {
		return !empty($value) ? $this->daddslashes($value, 1, 1) : NULL;
	}

	function screening_key($string, $strcontent) {
		$string = strtolower($string);
		$matched = preg_match('/' . $strcontent . '/i', $string, $result);
		if ($matched && isset($result[0]) && strlen($result[0]) > 0) {
			if (strlen($result[0]) == 2) {
				$matched = preg_match('/' . $strcontent . '/iu', $string, $result);
			}
			if ($matched && isset($result[0]) && strlen($result[0]) > 0) {
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}

	function treelist($int, $fontline = '─') {
		if (empty($int)) {
			return false;
		}
		$result = null;
		for ($i = 0; $i <= $int; $i++) {
			$result.=$fontline;
		}
		return $result;
	}

	function ip($str, $type = 1) {
		if (empty($str)) {
			return 0;
		} else {
			if ($type) {
				$ip = ip2long($str);
			} else {
				$ip = long2ip($str);
			}
		}
		return $ip;
	}

	function codeing($out, $getcode = 'ub') {
		require_once admin_ROOT . 'public/class.Chinese.php';
		$codechange = new Chinese(admin_ROOT . 'public/config/');
		if ($getcode == 'ub') {
			$out = $codechange->u2g($out);
			$out = $codechange->g2b($out);
		} elseif ($getcode == 'bu') {
			$out = $codechange->b2u($out);
		} elseif ($getcode == 'ug') {
			$out = $codechange->u2g($out);
		} elseif ($getcode == 'gu') {
			$out = $codechange->g2u($out);
		} elseif ($getcode == 'gb') {
			$out = $codechange->g2b($out);
		} elseif ($getcode == 'bg') {
			$out = $codechange->b2g($out);
		}
		return $out;
	}

	function lngsel($lng1, $lng2) {
		if ($lng2 == $lng1) {
			$sel_str = 'selected';
		} else {
			$sel_str = '';
		}
		$lngsel = $sel_str;
		return $lngsel;
	}

	function formatdate($time, $type = 3) {
		$time = empty($time) ? time() : ((strstr($time, ':') || strstr($time, '-')) ? strtotime($time) : $time);
		switch ($type) {
			case 1:
				$format = date('H:i:s', $time);
				break;
			case 2:
				$format = date('Y-m-d', $time);
				break;
			case 3:
				$format = date('Y-m-d H:i:s', $time);
				break;
			case 4:
				$format = $time;
				break;
		}
		return $format;
	}

	function format_size($size) {
		if ($size < 1000) {
			$size_BKM = (string) $size . ' B';
		} elseif ($size < (1000 * 1000)) {
			$size_BKM = number_format((double) ($size / 1000), 1) . ' KB';
		} else {
			$size_BKM = number_format((double) ($size / (1000 * 1000)), 1) . ' MB';
		}
		return $size_BKM;
	}

	function cache_id() {
		$SELF = 'http://' . $_SERVER[HTTP_HOST] . $this->request_url();
		$cache_id = md5($SELF);
		return $cache_id;
	}

	function formatarray($cfg) {
		if (is_string($cfg) && ($arr = unserialize($cfg)) !== false) {
			$config = array();
			foreach ($arr as $key => $val) {
				$config[$val['name']] = $val['value'];
			}
			return $config;
		} else {
			return false;
		}
	}

	function readplug($directory) {
		$dir = @opendir($directory);
		$modulesid = true;
		$modules = array();
		while (false !== ($file = @readdir($dir))) {
			if (preg_match("/^.*?\.php$/", $file)) {
				require $directory . '/' . $file;
			}
		}
		@closedir($dir);
		unset($modulesid);
		foreach ($modules as $key => $value) {
			ksort($modules[$key]);
		}
		ksort($modules);
		return $modules;
	}

	function filemode($file, $checktype = 'w') {
		if (!file_exists($file)) {
			return false;
		}
		$file = realpath($file);
		if (is_dir($file)) {
			$testfile = $file . '/isfwrite.text';
			$dir = @opendir($file);
			if (!$dir) {
				return false;
			}
			if ($checktype == 'r') {
				$mode = (@readdir($dir) != false) ? true : false;
				@closedir($dir);
				return $mode;
			}
			if ($checktype == 'w') {
				$fp = @fopen($testfile, 'wb');
				if ($fp != false) {
					$wp = @fwrite($fp, " ");
					$mode = ($wp != false) ? true : false;
					@fclose($fp);
					@unlink($testfile);
					return $mode;
				} else {
					return false;
				}
			}
		} else {
			if ($checktype == 'r') {
				$fp = @is_readable($file);
				$mode = ($fp) ? true : false;
				return $mode;
			}
			if ($checktype == 'w') {
				$fp = @is_writable($file);
				$mode = ($fp) ? true : false;
				return $mode;
			}
		}
	}

	function dircopy($srcdir, $dstdir, $verbose = false) {
		$num = 0;
		if (!is_dir($dstdir)) mkdir($dstdir, 0777, true);
		if ($curdir = opendir($srcdir)) {
			while ($file = readdir($curdir)) {
				if ($file != '.' && $file != '..') {
					$srcfile = $srcdir . '\\' . $file;
					$dstfile = $dstdir . '\\' . $file;
					if (is_file($srcfile)) {
						if (is_file($dstfile)) $ow = filemtime($srcfile) - filemtime($dstfile);
						else $ow = 1;
						if ($ow > 0) {
							if (copy($srcfile, $dstfile)) {
								touch($dstfile, filemtime($srcfile));
								$num++;
							} else {
								continue;
							}
						}
					} else if (is_dir($srcfile)) {
						$num += dircopy($srcfile, $dstfile);
					}
				}
			}
			closedir($curdir);
		}
		return $num;
	}

	function dirsize($dir) {
		$handle = opendir($dir);
		$size = 0;
		while ($file = readdir($handle)) {
			if (($file == ".") || ($file == "..")) continue;
			if (is_dir("$dir/$file")) $size+=$this->dirsize("$dir/$file");
			else $size+=filesize("$dir/$file");
		}
		closedir($handle);
		return $size;
	}

	function num_bitunit($num) {
		$bitunit = array(' B', ' KB', ' MB', ' GB');
		for ($key = 0, $count = count($bitunit); $key < $count; $key++) {
			if ($num >= pow(2, 10 * $key) - 1) {
				$num_bitunit_str = (ceil($num / pow(2, 10 * $key) * 100) / 100) . " $bitunit[$key]";
			}
		}
		return $num_bitunit_str;
	}

	function linkclear($body, $http = null) {
		$body = $this->stripslashes($body);
		$body = html_entity_decode($body);
		$basehost = empty($http) ? $_SERVER['HTTP_HOST'] : $http;
		preg_match_all('/<a[\s\S]*?href=["|\']?([^>"\' ]+)["|\']?\s*[^>]*>(.+?)<\/a>/si', $body, $att);
		if (count($att[1]) > 0) {
			foreach ($att[1] as $key => $value) {
				$leftstr = substr($value, 0, 1);
				$leftlent = stripos('#' . $value, $basehost);
				if ($leftlent < 1 && $leftstr != '/' && $leftstr != '.') {
					$body = str_replace($att[0][$key], $att[2][$key], $body);
				}
			}
		}
		$body = $this->daddslashes($body, 1);
		$body = htmlspecialchars($body);
		return $body;
	}

	function absLength($str) {
		if (empty($str)) {
			return 0;
		}
		if (function_exists('mb_strlen')) {
			return mb_strlen($str, 'utf-8');
		} else {
			preg_match_all("/./u", $str, $ar);
			return count($ar[0]);
		}
	}

	function strLength($str, $charset = 'utf-8') {
		if ($charset == 'utf-8') $str = iconv('utf-8', 'gb2312', $str);
		$num = strlen($str);
		$cnNum = 0;
		for ($i = 0; $i < $num; $i++) {
			if (ord(substr($str, $i + 1, 1)) > 127) {
				$cnNum++;
				$i++;
			}
		}
		$enNum = $num - ($cnNum * 2);
		$number = ($enNum / 2) + $cnNum;
		return ceil($number);
	}

	function get_substr($body, $len = 0, $isfont = false) {
		if (empty($body)) return false;
		if ($len < 1) return false;
		$body = $this->stripslashes($body);
		$body = html_entity_decode($body);
		$body = trim(strip_tags($body));
		$str = substr($body, 0, $len);
		if ($isfont) {
			$str = preg_replace("/[\r\n]{1,}/isU", "", $str);
			$str = ltrim($str);
			$str = rtrim($str);
			$str = strip_tags($str);
		}
		return $str;
	}

	function substr($str, $slen, $startdd = 0) {
		if (empty($str) || empty($slen)) return false;
		$str = $this->substr_utf8(stripslashes($str), $slen, $startdd);
		return addslashes($str);
	}

	function substr_utf8($str, $length, $start = 0) {
		if (strlen($str) < $start + 1) {
			return '';
		}
		preg_match_all("/./su", $str, $ar);
		$str = '';
		$tstr = '';
		for ($i = 0; isset($ar[0][$i]); $i++) {
			if (strlen($tstr) < $start) {
				$tstr .= $ar[0][$i];
			} else {
				if (strlen($str) < $length + strlen($ar[0][$i])) {
					$str .= $ar[0][$i];
				} else {
					break;
				}
			}
		}
		return $str;
	}

	function getTree($typearray, $tid = 'tid', $upid = 'upid', $child = 'childArray', $root = 0) {
		$treeArray = array();
		if (is_array($typearray)) {
			$array = array();
			foreach ($typearray as $key => $item) {
				$array[$item[$tid]] = & $typearray[$key];
			}
			foreach ($typearray as $key => $item) {
				$parentId = $item[$upid];
				if ($root == $parentId) {
					$treeArray[] = &$typearray[$key];
				} else {
					if (isset($array[$parentId])) {
						$parent = &$array[$parentId];
						$parent[$child][] = &$typearray[$key];
					}
				}
			}
		}
		return $treeArray;
	}

	function array_merge($array1 = array(), $array2 = array()) {
		if (empty($array1) || count($array1) < 1) return array();
		foreach ($array1 as $key => $value) {
			if (!is_array($value['attrvalue'])) {
				$array1[$key]['attrvalue'] = stripslashes($array2[$value['attrname']]);
			} else {
				$valuename = $array2[$value['attrname']];
				if (!is_array($valuename)) {
					foreach ($value['attrvalue'] as $var => $gvalue) {
						if (trim($gvalue['name']) == trim($valuename)) {
							$array1[$key]['attrvalue'][$var]['selected'] = 'selected';
						}
					}
				} else {
					foreach ($valuename as $vk => $attvalue) {
						foreach ($value['attrvalue'] as $var => $gvalue) {
							if (trim($attvalue) == trim($gvalue['name'])) {
								$array1[$key]['attrvalue'][$var]['selected'] = 'selected';
							}
						}
					}
				}
			}
		}
		return $array1;
	}

	function reset_array($array, $nowarray = null, $compare = null) {
		if (!is_array($array)) return $array;
		if (count($array) <= 0) return $array;
		if ($nowarray == null) return $array;
		if ($compare == null) return $array;
		foreach ($array as $key => $value) {
			if ($nowarray == $value[$compare]) {
				$array[$key]['selected'] = 'selected';
			} else {
				$array[$key]['selected'] = '';
			}
		}
		return $array;
	}

	function get_tsn($str = 'SN') {
		$str_t = date("YmdHis");
		$rand = rand(100, 999);
		$str_t = "$str$str_t$rand";
		return $str_t;
	}

	function getStr($len = 6) {
		$str = 'ACBDEFGHIJKLMNOPQRSTUVWXYZacbdefghijklmnopqrstuvwxyZ0123456789';
		$str = str_shuffle($str);
		$str = str_repeat($str, 5);
		return substr(str_shuffle($str), 0, $len);
	}

	function format_array_text($array = array(), $str = ',') {
		$str_newarray = null;
		if (is_array($array)) {
			$str_newarray = implode($str, $array);
		} else {
			$str_array = explode($str, $array);
			$str_newarray = array();
			if (is_array($str_array)) {
				foreach ($str_array as $key => $value) {
					if (!empty($value)) {
						$str_newarray[] = $value;
					}
				}
			}
		}
		return $str_newarray;
	}

	function exp_array($array = array()) {
		if (!is_array($array) && count($array) < 1) {
			return false;
		}
		$newarray = array();
		foreach ($array as $key => $value) {
			if (!empty($value)) {
				$newarray[] = $value;
			}
		}
		return $newarray;
	}

	function key_array_name($array = array(), $key = null, $name = null, $keymatch = false, $namematch = false) {
		if (!is_array($array) || count($array) < 1) return false;
		$str_array = array();
		foreach ($array as $i => $value) {
			$newkey = $value[$key];
			if ($keymatch) {
				$newkey = (!preg_match("/^$keymatch+$/i", $newkey)) ? 0 : $newkey;
			}
			$newname = $value[$name];
			if ($namematch) {
				$newname = (!preg_match("/^$namematch+$/i", $newname)) ? 0 : $newname;
			}
			$str_array[$newkey] = $newname;
		}
		return $str_array;
	}

	function array_key($array = array(), $string = null, $field = null, $refield = null) {
		if (!is_array($array) || count($array) < 1) return false;
		foreach ($array as $key => $value) {
			if ($value[$field] == $string) {
				$rkey = $refield ? $value[$refield] : $key;
			}
		}
		return $rkey;
	}

	function formatstring($formatval, $array = array()) {
		if (!is_array($array) || count($array) <= 0) return false;
		foreach ($array as $key => $value) {
			$formatval = str_replace($key, $value, $formatval);
		}
		return $formatval;
	}

	function get_timemessage($timenow) {
		$morentime1 = strtotime('1:00');
		$morentime2 = strtotime('6:00');
		$morentime3 = strtotime('12:00');
		$morentime4 = strtotime('19:00');
		$morentime5 = strtotime('19:00');
		if ($timenow < $morentime1) {
			$str = "深夜了，请注意休息！";
		} elseif ($timenow < $morentime2) {
			$str = "早上好！";
		} elseif ($timenow < $morentime3) {
			$str = "中午好！";
		} elseif ($timenow < $morentime4) {
			$str = "下午好！";
		} elseif ($timenow < $morentime5) {
			$str = "晚上好！";
		}
		return $str;
	}

	function gb_check($str) {
		$len = strlen($str);
		for ($i = 0; $i < $len; $i++) {
			if (ord(substr($str, $i, 1)) >= 0x81) return true;
		}
		return false;
	}

	function array_getvalue($var = array()) {
		if (!is_array($var)) return false;
		$valarray = array();
		foreach ($var as $key => $value) {
			$val = explode(':', $value);
			$valarray[$val[0]] = $val[1];
		}
		return $valarray;
	}

	function request_url() {
		if (isset($_SERVER['REQUEST_URI'])) {
			$uri = $_SERVER['REQUEST_URI'];
		} else {
			if (isset($_SERVER['argv'])) {
				$uri = $_SERVER['PHP_SELF'] . '?' . $_SERVER['argv'][0];
			} else {
				$uri = $_SERVER['PHP_SELF'] . '?' . $_SERVER['QUERY_STRING'];
			}
		}
		return $uri;
	}

	function real_remote_ip() {
		$remoteip = getenv('REMOTE_ADDR');
		if (!$remoteip) {
			return $remoteip;
		} elseif (!empty($_SERVER['REMOTE_ADDR'])) {
			$remoteip = $_SERVER['REMOTE_ADDR'];
		} else {
			$remoteip = '0.0.0.0';
		}
		return $remoteip;
	}

	function real_server_ip() {
		$serverip = getenv('SERVER_ADDR');
		if ($serverip) {
			return $serverip;
		} elseif (!empty($_SERVER['SERVER_ADDR'])) {
			$serverip = $_SERVER['SERVER_ADDR'];
		} else {
			$serverip = gethostbyname($_SERVER['SERVER_NAME']);
		}
		return $serverip;
	}

	function extendname($filename, $retype = 1) {
		if (empty($filename)) {
			return false;
		}
		$retval = '';
		$pt = strrpos($filename, '.');
		if ($retype == 1) {
			if ($pt) {
				$retval = strtolower(substr($filename, $pt + 1, strlen($filename) - $pt));
			}
		} elseif ($retype == 2) {
			$retval = strtolower(substr($filename, 0, $pt));
		}
		return $retval;
	}

	function token() {
		$token_name = $this->cache_id();
		$token_key = md5($this->random(8) . $this->random(8, 1));
		$this->setsession($token_name, $token_key);
		return array('token_name' => $token_name, 'token_key' => $token_key);
	}

	function is_token() {
		session_start();
		$token_currut_key = $this->accept('tokenkey', 'R');
		$tokenname = md5($_SERVER['HTTP_REFERER']);
		$tokenkey_session = $_SESSION[$tokenname];
		$return = $token_currut_key != $tokenkey_session ? false : true;
		unset($_SESSION[$tokenname]);
		return $return;
	}

	function encryptCookie($value, $key = '@LFK24s224%@safS3s%1f%') {
		if (!$value) {
			return false;
		}
		$iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB);
		$iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
		$crypttext = mcrypt_encrypt(MCRYPT_RIJNDAEL_256, md5($key), $value, MCRYPT_MODE_ECB, $iv);
		return trim(base64_encode($crypttext));
	}

	function decryptCookie($value, $key = '@LFK24s224%@safS3s%1f%') {
		if (!$value) {
			return false;
		}
		$crypttext = base64_decode($value);
		$iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB);
		$iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
		$decrypttext = mcrypt_decrypt(MCRYPT_RIJNDAEL_256, md5($key), $crypttext, MCRYPT_MODE_ECB, $iv);
		return trim($decrypttext);
	}

	function postdb($url, $data = '') {
		$row = parse_url($url);
		$host = $row['host'];
		$port = $row['port'] ? $row['port'] : 80;
		$file = $row['path'];
		while (list($k, $v) = each($data)) {
			$post .= rawurlencode($k) . "=" . rawurlencode($v) . "&"; //转URL标准码
		}
		$post = substr($post, 0, -1);
		$len = strlen($post);
		$fp = @fsockopen($host, $port, $errno, $errstr, 10);
		if (!$fp) {
			return "$errstr ($errno)\n";
		} else {
			$receive = '';
			$out = "POST $file HTTP/1.1\r\n";
			$out .= "Host: $host\r\n";
			$out .= "Content-type: application/x-www-form-urlencoded\r\n";
			$out .= "Connection: Close\r\n";
			$out .= "Content-Length: $len\r\n\r\n";
			$out .= $post;
			fwrite($fp, $out);
			while (!feof($fp)) {
				$receive .= fgets($fp, 128);
			}
			fclose($fp);
			$receive = explode("\r\n\r\n", $receive);
			unset($receive[0]);
			return implode("", $receive);
		}
	}

	function postdb_curl($url, $data) {
		$curl = curl_init();
		curl_setopt($curl, CURLOPT_URL, $url);
		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
		curl_setopt($curl, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
		curl_setopt($curl, CURLOPT_POST, 1);
		curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
		curl_setopt($curl, CURLOPT_TIMEOUT, 30);
		curl_setopt($curl, CURLOPT_HEADER, 0);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
		$tmpInfo = curl_exec($curl);
		if (curl_errno($curl)) {
			echo 'Errno' . curl_error($curl);
		}
		curl_close($curl);
		return $tmpInfo;
	}

	function getCurl($url) {
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		$result = curl_exec($ch);
		curl_close($ch);
		return $result;
	}

	function getAccessToken($appArray) {
		if (empty($appArray['wxappid']) || empty($appArray['wxappsecret'])) {
			return false;
		}
		$url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" . $appArray['wxappid'] . "&secret=" . $appArray['wxappsecret'];
		$data = $this->getCurl($url);
		$resultArr = json_decode($data, true);
		return $resultArr["access_token"];
	}

	function creatMenu($menuPost = null, $weixinAPI = array()) {
		if (empty($menuPost) || !is_array($weixinAPI)) {
			return false;
		}
		$accessToken = $this->getAccessToken($weixinAPI);
		$menuPostUrl = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=" . $accessToken;
		$menu = $this->postdb_curl($menuPostUrl, $menuPost);
		$returnArray = json_decode($menu, true);
		return $returnArray;
	}

}
