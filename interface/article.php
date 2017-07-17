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
		include_once admin_ROOT . 'public/class_pagebotton.php';
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		$page = $this->fun->accept('page', 'G');
		$page = isset($page) ? intval($page) : 1;
		$tid = intval($this->fun->accept('tid', 'G'));
		if (empty($tid)) exit('false');
		$typeread = $this->get_type($tid);
		if (!$typeread['isclass']) {
			exit("Information parameter error!");
		} elseif ($typeread['purview'] > 0) {
			parent::member_purview($typeread['purview'], null, true);
		}
		$current = !$typeread['upid'] ? $typeread['tid'] : $typeread['topid'];
		$this->pagetemplate->assign('path', 'article');
		$this->pagetemplate->assign('current', $current);
		$mid = $typeread['mid'];
		$modelview = $this->get_modelview($mid);
		$modelname = $modelview['modelname'];
		$pagemax = $modelview['pagemax'];
		$pagemax = empty($typeread['pagemax']) ? empty($pagemax) ? 20 : $pagemax : $typeread['pagemax'];
		$pagesylte = $modelview['pagesylte'];
		$template_list = admin_WAP ? $typeread['waptempalte'] : $typeread['template'];
		$template_index = $typeread['indextemplates'];
		$readtemplate = admin_WAP ? $typeread['wapreadtemplate'] : $typeread['readtemplate'];
		$styleid = $typeread['styleid'] == 1 && admin_WAP ? 2 : $typeread['styleid'];
		$typeread['rsslink'] = $this->get_link('typerss', $typeread, admin_LNG);
		$typeread['typelink'] = $this->get_link('type', $typeread, admin_LNG);
		$this->pagetemplate->assign('type', $typeread);
		if ($styleid != 4) {
			if (!empty($typeread['headtitle'])) {
				$this->lng['sitename'] = $typeread['headtitle'];
			} else {
				if ($modelview['listtitlestyle']) {
					$listtitleArray = array('{typename}' => $typeread['typename'], '{sitename}' => $this->lng['sitename']);
					$this->lng['sitename'] = $this->fun->formatstring($modelview['listtitlestyle'], $listtitleArray);
				}
			}
			if (!empty($typeread['keywords'])) {
				$this->lng['keyword'] = $typeread['keywords'];
			}
			if (!empty($typeread['description'])) {
				$this->lng['description'] = $typeread['description'];
			}
			$this->pagetemplate->assign('lngpack', $this->lng);
		}
		$templatesDIR = $this->get_templatesdir('article');
		$indextemplatefilename = $lng . '/' . $templatesDIR . '/' . $template_index;
		$listtemplatefilename = $lng . '/' . $templatesDIR . '/' . $template_list;
		$readtemplatefilename = $lng . '/' . $templatesDIR . '/' . $readtemplate;
		if ($styleid == 1) {
			unset($typeread, $modelview, $LANPACK, $this->lng);
			$this->pagetemplate->display($indextemplatefilename, $dirname . '_index', false, $filename, admin_LNG);
		} elseif ($styleid == 2) {
			if ($typeread['gotoid'] > 0) {
				$tid = $typeread['gotoid'];
			}
			$db_table = db_prefix . 'document';
			if ($typeread['ispart']) {
				$db_where = ' WHERE isclass=1 AND mid=' . $mid . ' AND ' . $this->get_typeid($tid, 'tid', 0, $mid, 0, $lng) . " OR FIND_IN_SET('$tid',extid)";
			} else {
				$db_where = ' WHERE isclass=1 AND mid=' . $mid . ' AND tid=' . $tid . " OR FIND_IN_SET('$tid',extid)";
			}
			$countnum = $this->db_numrows($db_table, $db_where);
			if ($countnum > 0) {
				$numpage = ceil($countnum / $pagemax);
			} else {
				$numpage = 1;
			}
			$db_table = db_prefix . 'document';
			$sql = "SELECT * FROM $db_table $db_where LIMIT 0,$pagemax";
			$this->htmlpage = new PageBotton($sql, $pagemax, $page, $countnum, $numpage, $pagesylte, $this->CON['file_fileex'], 5, $this->lng['pagebotton'], $this->lng['gopageurl'], $this->CON['is_rewrite']);
			$ordertype = $typeread['ordertype'] == 1 ? 'pid,did' : 'pid,addtime';
			if ($typeread['isorderby']) {
				$sql = $this->htmlpage->PageSQL($ordertype, 'down');
			} else {
				$sql = $this->htmlpage->PageSQL($ordertype, 'ASC');
			}
			$rs = $this->db->query($sql);
			while ($rsList = $this->db->fetch_assoc($rs)) {
				$attarray = array();
				$attarray = $this->get_document_attr($rsList['did']);
				$typeread_last = $this->get_type($rsList['tid']);
				$rsList['typename'] = $typeread_last['typename'];
				$rsList['typelink'] = $this->get_link('type', $typeread_last, admin_LNG);
				$rsList['pageclass'] = $typeread_last['pageclass'];
				$rsList['link'] = $this->get_link('doc', $rsList, admin_LNG);
				$rsList['buylink'] = $this->get_link('buylink', $rsList, admin_LNG);
				$rsList['enqlink'] = $this->get_link('enqlink', $rsList, admin_LNG);
				$rsList['ctitle'] = empty($rsList['color']) ? $rsList['title'] : "<font color='" . $rsList['color'] . "'>" . $rsList['title'] . "</font>";
				$array[] = is_array($attarray) ? array_merge($attarray, $rsList) : $rsList;
			}
			$this->pagetemplate->assign('pagetext', $this->htmlpage->PageStat($this->lng['pagetext']));
			$this->pagetemplate->assign('pagebotton', $this->htmlpage->PageList());
			$this->pagetemplate->assign('pagenu', $this->htmlpage->Bottonstyle(false));
			$this->pagetemplate->assign('pagese', $this->htmlpage->pageSelect());
			$this->pagetemplate->assign('pagevt', $this->htmlpage->Prevbotton());
			$this->pagetemplate->assign('array', $array);
			$this->pagetemplate->assign('limit', $pagemax);
			$this->pagetemplate->assign('countnum', $countnum);
			$this->pagetemplate->assign('maxpage', $numpage);
			$this->pagetemplate->assign('nowpage', $page);
			unset($array, $typeread, $modelview, $LANPACK, $this->lng);
			$this->pagetemplate->display($listtemplatefilename, $dirname . '_list', false, $filename, admin_LNG);
		} elseif ($styleid == 3) {
			$typeurl = $typeread['typeurl'];
			header("location:$typeurl");
			exit();
		} elseif ($styleid == 4) {
			if ($typeread['gotoid'] > 0) {
				$gotodid = $this->get_type($typeread['gotoid'], 'linkid');
				if ($gotodid) {
					$typeread['linkid'] = $gotodid;
					$typeread['nowtid'] = $typeread['tid'];
				}
			}
			if ($typeread['linkid']) {
				$readinfo = $this->get_document($typeread['linkid']);
				if ($typeread['nowtid']) {
					$readinfo['tid'] = $typeread['nowtid'];
				}
				if ($readinfo['did']) {
					$db_table = db_prefix . 'document';
					$db_where = "isclass=1 AND did=" . $readinfo['did'];
					$db_set = "click=click+1";
					$this->db->query('UPDATE ' . $db_table . ' SET ' . $db_set . ' WHERE ' . $db_where);
				}
				if (!empty($readinfo['tags'])) {
					$tagArray = explode(',', $readinfo['tags']);
					$tagArray = array_unique($tagArray);
					$newTagArray = array();
					foreach ($tagArray as $key => $value) {
						$newTagArray[$key]['title'] = $value;
						$view = $this->get_tag_view(null, $value, null, true);
						$newTagArray[$key]['link'] = $view['islink'] == 1 ? $view['linkurl'] : $this->get_link('taglink', array('key' => $value), admin_LNG);
					}
				}
				$readinfo['content'] = html_entity_decode($readinfo['content']);
				$exCotnet = explode('<!-- pagebreak -->', $readinfo['content']);
				$filepage = count($exCotnet);
				$pageArray = array();
				if ($filepage > 1) {
					$nkey = $page + 1;
					$pkey = $page > 1 ? $page - 1 : 1;
					$readinfo['nlink'] = $nkey <= $filepage ? $this->get_link('doc', $readinfo, admin_LNG, $nkey) : null;
					$readinfo['plink'] = $page > 1 ? $this->get_link('doc', $readinfo, admin_LNG, $pkey) : null;
					for ($index = 0; $index < $filepage; $index++) {
						$num = $index + 1;
						$pageArray[$index]['num'] = $num;
						$pageArray[$index]['n'] = $num == $page ? 1 : 0;
						$pageArray[$index]['link'] = $this->get_link('doc', $readinfo, admin_LNG, $num);
					}
					$outkey = $page - 1;
					$readinfo['content'] = $exCotnet[$outkey];
				}
				$this->pagetemplate->assign('page', $pageArray);
				if (!empty($readinfo['headtitle'])) {
					$this->lng['sitename'] = $readinfo['headtitle'];
				} else {
					if ($modelview['readtitlestyle']) {
						$readtitleArray = array('{title}' => $readinfo['title'], '{typename}' => $typeread['typename'], '{sitename}' => $this->lng['sitename']);
						$this->lng['sitename'] = $this->fun->formatstring($modelview['readtitlestyle'], $readtitleArray);
					}
				}
				if (!empty($readinfo['keywords'])) {
					$this->lng['keyword'] = $readinfo['keywords'];
				}
				if (!empty($readinfo['description'])) {
					$this->lng['description'] = $readinfo['description'];
				}
				$this->pagetemplate->assign('lngpack', $this->lng);
				$this->pagetemplate->assign('tag', $newTagArray);
				$readinfo['buylink'] = $this->get_link('buylink', $readinfo, admin_LNG);
				$readinfo['enqlink'] = $this->get_link('enqlink', $readinfo, admin_LNG);
				if (!empty($readinfo['linkdid'])) {
					$readinfo['linkdid'] = str_replace(',', '/', $readinfo['linkdid']);
				}
				$albumarray = $this->get_album_array($readinfo['did']);
				$this->pagetemplate->assign('read', $readinfo);
				$this->pagetemplate->assign('photo', $albumarray['list']);
			}
			unset($readinfo, $typeread, $modelview, $LANPACK, $this->lng);
			$this->pagetemplate->display($readtemplatefilename, $dirname . '_list', false, $filename, admin_LNG);
		}
	}

	function in_ajaxlist() {
		parent::start_pagetemplate();
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		$page = $this->fun->accept('page', 'G');
		$page = isset($page) ? intval($page) : 1;
		$limitstard = $this->fun->accept('limitstard', 'R');
		$limitstard = isset($limitstard) ? intval($limitstard) : 0;
		$tid = intval($this->fun->accept('tid', 'G'));
		if (empty($tid)) exit('false');
		$typeread = $this->get_type($tid);
		if (!$typeread['isclass']) {
			exit("Information parameter error!");
		} elseif ($typeread['purview'] > 0) {
			parent::member_purview($typeread['purview'], null, true);
		}
		$mid = $typeread['mid'];
		$modelview = $this->get_modelview($mid);
		$modelname = $modelview['modelname'];
		$pagemax = $modelview['pagemax'];
		$pagemax = empty($typeread['pagemax']) ? empty($pagemax) ? 20 : $pagemax : $typeread['pagemax'];
		$template_list = admin_WAP ? $typeread['waptempalte'] : $typeread['template'];
		$template_index = $typeread['indextemplates'];
		$readtemplate = admin_WAP ? $typeread['wapreadtemplate'] : $typeread['readtemplate'];
		$styleid = $typeread['styleid'] == 1 && admin_WAP ? 2 : $typeread['styleid'];
		$typeread['rsslink'] = $this->get_link('typerss', $typeread, admin_LNG);
		$typeread['typelink'] = $this->get_link('type', $typeread, admin_LNG);
		$this->pagetemplate->assign('type', $typeread);
		$templatesDIR = $this->get_templatesdir('ajax_list');
		$listtemplatefilename = $lng . '/' . $templatesDIR . '/' . $template_list;
		if ($styleid != 2) {
			exit();
		} else {
			if ($typeread['gotoid'] > 0) {
				$tid = $typeread['gotoid'];
			}
			$db_table = db_prefix . 'document';
			if ($typeread['ispart']) {
				$db_where = ' WHERE isclass=1 AND mid=' . $mid . ' AND ' . $this->get_typeid($tid, 'tid', 0, $mid, 0, $lng) . " OR FIND_IN_SET('$tid',extid)";
			} else {
				$db_where = ' WHERE isclass=1 AND mid=' . $mid . ' AND tid=' . $tid . " OR FIND_IN_SET('$tid',extid)";
			}
			$countnum = $this->db_numrows($db_table, $db_where);
			if ($countnum > 0) {
				$numpage = ceil($countnum / $pagemax);
			} else {
				$numpage = 1;
			}
			$db_table = db_prefix . 'document';
			$ordertype = $typeread['ordertype'] == 1 ? 'ORDER BY pid,did' : 'order by pid,addtime';
			if ($typeread['isorderby']) {
				$ordertype = $ordertype . ' DESC';
			} else {
				$ordertype = $ordertype . ' ASC';
			}
			$sql = "SELECT * FROM $db_table $db_where $ordertype LIMIT $limitstard,$pagemax";
			$rs = $this->db->query($sql);
			while ($rsList = $this->db->fetch_assoc($rs)) {
				$attarray = array();
				$attarray = $this->get_document_attr($rsList['did']);
				$typeread_last = $this->get_type($rsList['tid']);
				$rsList['typename'] = $typeread_last['typename'];
				$rsList['typelink'] = $this->get_link('type', $typeread_last, admin_LNG);
				$rsList['pageclass'] = $typeread_last['pageclass'];
				$rsList['link'] = $this->get_link('doc', $rsList, admin_LNG);
				$rsList['buylink'] = $this->get_link('buylink', $rsList, admin_LNG);
				$rsList['enqlink'] = $this->get_link('enqlink', $rsList, admin_LNG);
				$rsList['ctitle'] = empty($rsList['color']) ? $rsList['title'] : "<font color='" . $rsList['color'] . "'>" . $rsList['title'] . "</font>";
				$array[] = is_array($attarray) ? array_merge($attarray, $rsList) : $rsList;
			}
			$this->pagetemplate->assign('array', $array);
			unset($array, $typeread, $modelview, $LANPACK, $this->lng);
			$this->pagetemplate->display($listtemplatefilename, $dirname . '_list_ajax', false, $filename, admin_LNG);
		}
	}

	function in_read() {
		$this->start_pagetemplate();
		$lng = (admin_LNG == 'big5') ? $this->CON['is_lancode'] : admin_LNG;
		$did = intval($this->fun->accept('did', 'G'));
		if (empty($did)) {
			$this->callmessage($this->lng['db_err'], admin_URL, $this->lng['gobackurlbotton']);
		}
		$page = intval($this->fun->accept('page', 'G'));
		$page = empty($page) ? 1 : $page;
		$db_table = db_prefix . 'document';
		$readinfo = $this->get_document($did);
		if (!$readinfo['isclass']) {
			exit("Information parameter error!");
		}
		$mid = $readinfo['mid'];
		$modelview = $this->get_modelview($mid);
		$db_where = "isclass=1 AND did=$did";
		$db_set = "click=click+1";
		$this->db->query('UPDATE ' . $db_table . ' SET ' . $db_set . ' WHERE ' . $db_where);
		if ($readinfo['islink']) {
			$urladd = $readinfo['link'];
			header("location:$urladd");
			exit();
		}
		if (!empty($readinfo['tags'])) {
			$tagArray = explode(',', $readinfo['tags']);
			$tagArray = array_unique($tagArray);
			$newTagArray = array();
			foreach ($tagArray as $key => $value) {
				$newTagArray[$key]['title'] = $value;
				$view = $this->get_tag_view(null, $value, null, true);
				$newTagArray[$key]['link'] = $view['islink'] == 1 ? $view['linkurl'] : $this->get_link('taglink', array('key' => $value), admin_LNG);
			}
		}
		$readinfo['content'] = html_entity_decode($readinfo['content']);
		$exCotnet = explode('<!-- pagebreak -->', $readinfo['content']);
		$filepage = count($exCotnet);
		$pageArray = array();
		if ($filepage > 1) {
			$nkey = $page + 1;
			$pkey = $page > 1 ? $page - 1 : 1;
			$readinfo['nlink'] = $nkey <= $filepage ? $this->get_link('doc', $readinfo, admin_LNG, $nkey) : null;
			$readinfo['plink'] = $page > 1 ? $this->get_link('doc', $readinfo, admin_LNG, $pkey) : null;
			for ($index = 0; $index < $filepage; $index++) {
				$num = $index + 1;
				$pageArray[$index]['num'] = $num;
				$pageArray[$index]['n'] = $num == $page ? 1 : 0;
				$pageArray[$index]['link'] = $this->get_link('doc', $readinfo, admin_LNG, $num);
			}
			$outkey = $page - 1;
			$readinfo['content'] = $exCotnet[$outkey];
		}
		$this->pagetemplate->assign('page', $pageArray);
		$readinfo['buylink'] = $this->get_link('buylink', $readinfo, admin_LNG);
		$readinfo['enqlink'] = $this->get_link('enqlink', $readinfo, admin_LNG);
		$typeview = $this->get_type($readinfo['tid']);
		if (!$typeview['isclass']) {
			exit("Information parameter error!");
		} elseif ($typeview['purview'] > 0) {
			parent::member_purview($typeview['purview'], null, true);
		} elseif ($readinfo['purview'] > 0) {
			parent::member_purview($readinfo['purview'], null, true);
		}
		$typeview['typelink'] = $this->get_link('type', $typeview, admin_LNG);
		if (!admin_WAP) {
			$read_templates = ($readinfo['istemplates'] && !empty($readinfo['template'])) ? $readinfo['template'] : $typeview['readtemplate'];
		} else {
			$read_templates = ($readinfo['istemplates'] && !empty($readinfo['template'])) ? $readinfo['template'] : $typeview['wapreadtemplate'];
		}
		$dirname = $typeview['dirname'];
		if (!empty($readinfo['linkdid'])) {
			$readinfo['linkdid'] = str_replace(',', '/', $readinfo['linkdid']);
		}
		if (!empty($readinfo['headtitle'])) {
			$this->lng['sitename'] = $readinfo['headtitle'];
		} else {
			if ($modelview['readtitlestyle']) {
				$readtitleArray = array('{title}' => $readinfo['title'], '{typename}' => $typeview['typename'], '{sitename}' => $this->lng['sitename']);
				$this->lng['sitename'] = $this->fun->formatstring($modelview['readtitlestyle'], $readtitleArray);
			}
		}
		if (!empty($readinfo['keywords'])) {
			$this->lng['keyword'] = $readinfo['keywords'];
		}
		if (!empty($readinfo['description'])) {
			$this->lng['description'] = $readinfo['description'];
		}
		$this->pagetemplate->assign('lngpack', $this->lng);
		$albumarray = $this->get_album_array($did);
		$templatesDIR = $this->get_templatesdir('article');
		$templatefilename = $lng . '/' . $templatesDIR . '/' . $read_templates;
		$current = !$typeview['upid'] ? $typeview['tid'] : $typeview['topid'];
		$this->pagetemplate->assign('path', 'article');
		$this->pagetemplate->assign('current', $current);
		$this->pagetemplate->assign('tag', $newTagArray);
		$this->pagetemplate->assign('type', $typeview);
		$this->pagetemplate->assign('read', $readinfo);
		$this->pagetemplate->assign('photo', $albumarray['list']);
		unset($typeview, $readinfo, $albumarray, $LANPACK, $this->lng);
		$this->pagetemplate->display($templatefilename, $dirname . '_read', false, $filename, admin_LNG);
	}

}
