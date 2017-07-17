-- ESPCMS SQL Dump
-- version 5.0.0.0
-- 
-- HOST:http://cy.com/adminsoft
-- DATE:2017-07-14 11:39:59
-- SQLVER:5.5.32
-- PHPVER:5.4.16
-- Vol:1
DROP TABLE IF EXISTS `yct_admin_member`;
CREATE TABLE `yct_admin_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `intotime` int(11) NOT NULL,
  `intime` int(11) NOT NULL,
  `outtime` int(11) NOT NULL,
  `ipadd` int(15) NOT NULL,
  `hit` int(10) unsigned DEFAULT '0',
  `powergroup` tinyint(4) NOT NULL DEFAULT '1',
  `inputclassid` tinyint(1) NOT NULL DEFAULT '1',
  `isclass` tinyint(1) NOT NULL DEFAULT '1',
  `isremote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_admin_member` ( `id`, `username`, `password`, `name`, `sex`, `intotime`, `intime`, `outtime`, `ipadd`, `hit`, `powergroup`, `inputclassid`, `isclass`, `isremote` ) VALUES  ('1', 'admin', '146511df0d8637858011fab18fd054cb', 'admin', '1', '1499828727', '1499991603', '1499828727', '2130706433', '4', '1', '1', '1', '0');
DROP TABLE IF EXISTS `yct_admin_powergroup`;
CREATE TABLE `yct_admin_powergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `powername` varchar(150) NOT NULL,
  `powerlist` text NOT NULL,
  `delclass` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_admin_powergroup` ( `id`, `powername`, `powerlist`, `delclass` ) VALUES  ('1', '系统管理组', 'all', '1');
DROP TABLE IF EXISTS `yct_advert`;
CREATE TABLE `yct_advert` (
  `adid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `atid` int(11) unsigned NOT NULL DEFAULT '0',
  `lng` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `adtype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `click` int(11) unsigned NOT NULL DEFAULT '0',
  `istime` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gotoid` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `adid` (`adid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('1', '50', '1', 'cn', '商帅优秀建站平台', 'upfile/2017/07/20170712115410_269.jpg', '', '', '1', '0', '0', '1404576000', '1404576000', '1404631468', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('3', '1', '2', 'cn', '主动关怀，价值服务', 'upfile/b2.jpg', 'http://www.5iss.cc/', '', '1', '0', '0', '1404576000', '1404576000', '1404643543', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('4', '2', '2', 'cn', '联系我们', 'upfile/b1.jpg', 'http://', '', '1', '0', '0', '1404576000', '1404576000', '1404643559', '1', '2', '6');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('5', '50', '4', 'cn', '企业建站服务', 'upfile/weiwz.jpg', 'http://www.5iss.cc/', '', '1', '0', '0', '1404576000', '1404576000', '1404643629', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('6', '50', '3', 'cn', '企业建站服务', '', 'http://www.5iss.cc/', '', '3', '0', '0', '1404576000', '1404576000', '1404643682', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('7', '50', '3', 'cn', '微信应用开发', '', 'http://www.5iss.cc/', '', '3', '0', '0', '1404576000', '1404576000', '1404643692', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('8', '50', '3', 'cn', '企业网页设计', '', 'http://www.5iss.cc/', '', '3', '0', '0', '1404576000', '1404576000', '1404643703', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('9', '50', '3', 'cn', '商帅科技', '', 'http://www.5iss.cc/', '', '3', '0', '0', '1404576000', '1404576000', '1404643716', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('10', '50', '3', 'cn', '营销网站建设', '', 'http://www.5iss.cc/', '', '3', '0', '0', '1404576000', '1404576000', '1404643736', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('11', '50', '3', 'cn', '手机APP开发', '', 'http://www.5iss.cc/', '', '3', '0', '0', '1404576000', '1404576000', '1404643755', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('12', '50', '3', 'cn', '商城开发', '', 'http://www.5iss.cc/', '', '3', '0', '0', '1404576000', '1404576000', '1404643775', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('13', '50', '3', 'cn', '微网站设计', '', 'http://www.5iss.cc/', '', '3', '0', '0', '1404576000', '1404576000', '1404643796', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('14', '50', '3', 'cn', '手机网站建设', '', 'http://www.5iss.cc/', '', '3', '0', '0', '1404576000', '1404576000', '1404643808', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('15', '50', '3', 'cn', '商帅软件购买', '', 'http://www.5iss.cc/', '', '3', '0', '0', '1404576000', '1404576000', '1404643836', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('16', '50', '3', 'cn', '商帅交流论坛', '', 'http://www.5iss.cc/', '', '3', '0', '0', '1404576000', '1404576000', '1404643855', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('17', '50', '4', 'cn', '商帅科技', 'upfile/l1.jpg', 'http://www.5iss.cc/', '', '1', '0', '0', '1404576000', '1404576000', '1404643923', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('18', '50', '4', 'cn', '商帅科技', 'upfile/logo.jpg', 'http://www.5iss.cc/', '', '1', '0', '0', '1404576000', '1404576000', '1404643937', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('19', '50', '4', 'cn', '商帅交流论坛', 'upfile/logo.jpg', 'http://www.5iss.cc/', '', '1', '0', '0', '1404576000', '1404576000', '1404643959', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('20', '50', '4', 'cn', '手机APP开发', 'upfile/applogo.jpg', 'http://www.5iss.cc/', '', '1', '0', '0', '1404576000', '1404576000', '1404643980', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('21', '50', '5', 'cn', '商帅优秀建站平台', 'upfile/moblie/bannn002.jpg', 'http://www.5iss.cc/', '', '1', '0', '0', '1404576000', '1404576000', '1404661597', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('22', '50', '5', 'cn', '商帅智能建站平台', 'upfile/moblie/bannn001.jpg', 'http://www.5iss.cc/', '', '1', '0', '0', '1404576000', '1404576000', '1404661615', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('23', '50', '6', 'en', '商帅', 'upfile/03_en.jpg', 'http://www.5iss.cc/', '', '1', '0', '0', '1404662400', '1404662400', '1404664693', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('24', '50', '7', 'en', '商帅', 'upfile/b1_en.jpg', 'http://www.5iss.cc/', '', '1', '0', '0', '1404662400', '1404662400', '1404667630', '1', '1', '0');
INSERT INTO `yct_advert` ( `adid`, `pid`, `atid`, `lng`, `title`, `filename`, `url`, `content`, `adtype`, `click`, `istime`, `starttime`, `endtime`, `addtime`, `isclass`, `islink`, `gotoid` ) VALUES  ('25', '50', '7', 'en', '商帅', 'upfile/b2_en.jpg', 'http://www.5iss.cc/', '', '1', '0', '0', '1404662400', '1404662400', '1404667643', '1', '1', '0');
DROP TABLE IF EXISTS `yct_advert_type`;
CREATE TABLE `yct_advert_type` (
  `atid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT '',
  `adtypename` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `width` int(4) unsigned NOT NULL DEFAULT '0',
  `height` int(4) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `iscode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isxml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `xmltemplatefile` varchar(200) NOT NULL,
  `xmlfile` varchar(200) NOT NULL,
  `xmlpath` varchar(200) NOT NULL,
  UNIQUE KEY `adid` (`atid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_advert_type` ( `atid`, `lng`, `adtypename`, `content`, `width`, `height`, `isclass`, `iscode`, `isxml`, `xmltemplatefile`, `xmlfile`, `xmlpath` ) VALUES  ('1', 'cn', '首页幻灯片', '', '0', '0', '1', '0', '0', '', '', '');
INSERT INTO `yct_advert_type` ( `atid`, `lng`, `adtypename`, `content`, `width`, `height`, `isclass`, `iscode`, `isxml`, `xmltemplatefile`, `xmlfile`, `xmlpath` ) VALUES  ('2', 'cn', '手机网站BANN', '', '0', '0', '1', '0', '0', '', '', '');
INSERT INTO `yct_advert_type` ( `atid`, `lng`, `adtypename`, `content`, `width`, `height`, `isclass`, `iscode`, `isxml`, `xmltemplatefile`, `xmlfile`, `xmlpath` ) VALUES  ('3', 'cn', '首页文字友情链接', '', '0', '0', '1', '0', '0', '', '', '');
INSERT INTO `yct_advert_type` ( `atid`, `lng`, `adtypename`, `content`, `width`, `height`, `isclass`, `iscode`, `isxml`, `xmltemplatefile`, `xmlfile`, `xmlpath` ) VALUES  ('4', 'cn', '首页图片友情链接', '', '0', '0', '1', '0', '0', '', '', '');
INSERT INTO `yct_advert_type` ( `atid`, `lng`, `adtypename`, `content`, `width`, `height`, `isclass`, `iscode`, `isxml`, `xmltemplatefile`, `xmlfile`, `xmlpath` ) VALUES  ('5', 'cn', '首页右下角广告', '', '0', '0', '1', '0', '0', '', '', '');
INSERT INTO `yct_advert_type` ( `atid`, `lng`, `adtypename`, `content`, `width`, `height`, `isclass`, `iscode`, `isxml`, `xmltemplatefile`, `xmlfile`, `xmlpath` ) VALUES  ('6', 'en', '首页广告位', '', '0', '0', '1', '0', '0', '', '', '');
INSERT INTO `yct_advert_type` ( `atid`, `lng`, `adtypename`, `content`, `width`, `height`, `isclass`, `iscode`, `isxml`, `xmltemplatefile`, `xmlfile`, `xmlpath` ) VALUES  ('7', 'en', '首页右下解广告位', '', '0', '0', '1', '0', '0', '', '', '');
DROP TABLE IF EXISTS `yct_album_file`;
CREATE TABLE `yct_album_file` (
  `afid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(5) unsigned NOT NULL DEFAULT '50',
  `amid` int(11) unsigned NOT NULL DEFAULT '0',
  `fiid` int(11) unsigned NOT NULL DEFAULT '0',
  `filetitle` varchar(200) NOT NULL DEFAULT '',
  `filedes` text NOT NULL,
  `filename` varchar(200) NOT NULL,
  `filepath` varchar(200) NOT NULL,
  `iswidth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `isrecomm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `picid` (`afid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_album_images`;
CREATE TABLE `yct_album_images` (
  `amid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `pic` varchar(200) NOT NULL,
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `amid` (`amid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_album_images` ( `amid`, `pid`, `lng`, `title`, `content`, `pic`, `addtime`, `isclass`, `istop` ) VALUES  ('1', '50', 'cn', '企业图片', '', '', '1404632110', '1', '0');
INSERT INTO `yct_album_images` ( `amid`, `pid`, `lng`, `title`, `content`, `pic`, `addtime`, `isclass`, `istop` ) VALUES  ('2', '50', 'cn', '新闻图片', '', '', '1404632116', '1', '0');
INSERT INTO `yct_album_images` ( `amid`, `pid`, `lng`, `title`, `content`, `pic`, `addtime`, `isclass`, `istop` ) VALUES  ('3', '50', 'cn', '广告图片', '', '', '1404632122', '1', '0');
INSERT INTO `yct_album_images` ( `amid`, `pid`, `lng`, `title`, `content`, `pic`, `addtime`, `isclass`, `istop` ) VALUES  ('4', '50', 'cn', '产品图片', '', '', '1404632127', '1', '0');
DROP TABLE IF EXISTS `yct_apply`;
CREATE TABLE `yct_apply` (
  `appid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `applyname` varchar(200) NOT NULL,
  `applymenu` varchar(200) NOT NULL,
  `applycontent` text NOT NULL,
  `applycode` varchar(100) NOT NULL,
  `applyvol` varchar(100) NOT NULL,
  `applypic` varchar(100) NOT NULL,
  `volsn` int(11) unsigned NOT NULL DEFAULT '0',
  `uservol` bigint(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `setuptime` int(11) unsigned NOT NULL DEFAULT '0',
  `isdel` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isetup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issqlbak` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isfree` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `appid` (`appid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_apply` ( `appid`, `applyname`, `applymenu`, `applycontent`, `applycode`, `applyvol`, `applypic`, `volsn`, `uservol`, `addtime`, `setuptime`, `isdel`, `isetup`, `issystem`, `issqlbak`, `isfree` ) VALUES  ('1', '微信公众号管理', '微信公众号管理', '用于微信公众号的菜单定义、回复、订阅、微网站等微信应用', 'weixin', 'V6.0', 'upfile/app/20140710013209_313.jpg', '600', '6000140707', '1404927530', '0', '0', '0', '0', '1', '1');
INSERT INTO `yct_apply` ( `appid`, `applyname`, `applymenu`, `applycontent`, `applycode`, `applyvol`, `applypic`, `volsn`, `uservol`, `addtime`, `setuptime`, `isdel`, `isetup`, `issystem`, `issqlbak`, `isfree` ) VALUES  ('2', '留言论坛管理', '留言论坛管理', '用于在线留言，可以设置留言访问权限、手机短信提醒、邮箱提醒、留言模板定义等功能', 'bbs', 'V6.0', 'upfile/app/20140710013155_591.jpg', '601', '6000140707', '1404927530', '0', '0', '0', '0', '1', '0');
INSERT INTO `yct_apply` ( `appid`, `applyname`, `applymenu`, `applycontent`, `applycode`, `applyvol`, `applypic`, `volsn`, `uservol`, `addtime`, `setuptime`, `isdel`, `isetup`, `issystem`, `issqlbak`, `isfree` ) VALUES  ('3', '自助表单管理', '自助表单管理', '用于个性化表单的定义，可以设定表单的字段、表单留言短信及邮件通知管理', 'form', 'V6.0.0', 'upfile/app/20140710013155_722.jpg', '600', '5800140321', '4294967295', '0', '1', '1', '1', '1', '0');
INSERT INTO `yct_apply` ( `appid`, `applyname`, `applymenu`, `applycontent`, `applycode`, `applyvol`, `applypic`, `volsn`, `uservol`, `addtime`, `setuptime`, `isdel`, `isetup`, `issystem`, `issqlbak`, `isfree` ) VALUES  ('4', '上传文件管理', '上传文件管理', '用于网站文件上传，上传格式可以在设置、系统设置中进行自定义', 'upfile', 'V6.0.0', 'upfile/app/20140710013208_384.jpg', '600', '5800140321', '4294967295', '0', '1', '1', '1', '1', '0');
INSERT INTO `yct_apply` ( `appid`, `applyname`, `applymenu`, `applycontent`, `applycode`, `applyvol`, `applypic`, `volsn`, `uservol`, `addtime`, `setuptime`, `isdel`, `isetup`, `issystem`, `issqlbak`, `isfree` ) VALUES  ('5', '图片相册管理', '图片相册管理', '用于上传图片的分组及管理', 'photo', 'V6.0.0', 'upfile/app/20140710013156_728.jpg', '600', '5800140321', '4294967295', '0', '1', '1', '1', '1', '0');
INSERT INTO `yct_apply` ( `appid`, `applyname`, `applymenu`, `applycontent`, `applycode`, `applyvol`, `applypic`, `volsn`, `uservol`, `addtime`, `setuptime`, `isdel`, `isetup`, `issystem`, `issqlbak`, `isfree` ) VALUES  ('6', '支付即时支付', '支付即时支付', '支付宝（中国）网络技术有限公司是国内领先的独立第三方支付平台，由阿里巴巴集团创办。支付宝致力于为中国电子商务提供“简单、安全、快速”的在线支付解决方案。', 'alipay', 'V6.0', 'upfile/app/20140710013155_381.jpg', '600', '6000140707', '1404927530', '0', '0', '0', '0', '0', '1');
INSERT INTO `yct_apply` ( `appid`, `applyname`, `applymenu`, `applycontent`, `applycode`, `applyvol`, `applypic`, `volsn`, `uservol`, `addtime`, `setuptime`, `isdel`, `isetup`, `issystem`, `issqlbak`, `isfree` ) VALUES  ('7', '支付宝担保支付', '支付宝担保支付', '支付宝（中国）网络技术有限公司是国内领先的独立第三方支付平台，由阿里巴巴集团创办。支付宝致力于为中国电子商务提供“简单、安全、快速”的在线支付解决方案。', 'alipaydb', 'V6.0', 'upfile/app/20140710013155_381.jpg', '600', '6000140707', '1404927530', '0', '0', '0', '0', '0', '1');
INSERT INTO `yct_apply` ( `appid`, `applyname`, `applymenu`, `applycontent`, `applycode`, `applyvol`, `applypic`, `volsn`, `uservol`, `addtime`, `setuptime`, `isdel`, `isetup`, `issystem`, `issqlbak`, `isfree` ) VALUES  ('8', '财付通即时支付', '财付通即时支付', '财付通是腾讯公司创办的中国领先的在线支付平台，致力于为互联网用户和企业提供安全、便捷、专业的在线支付服务', 'tenpay', 'V6.0', 'upfile/app/20140710013208_221.jpg', '600', '6000140707', '1404927530', '0', '0', '0', '0', '0', '1');
INSERT INTO `yct_apply` ( `appid`, `applyname`, `applymenu`, `applycontent`, `applycode`, `applyvol`, `applypic`, `volsn`, `uservol`, `addtime`, `setuptime`, `isdel`, `isetup`, `issystem`, `issqlbak`, `isfree` ) VALUES  ('9', '财付通担保支付', '财付通担保支付', '财付通是腾讯公司创办的中国领先的在线支付平台，致力于为互联网用户和企业提供安全、便捷、专业的在线支付服务', 'tenpayc2c', 'V6.0', 'upfile/app/20140710013208_221.jpg', '600', '6000140707', '1404927530', '0', '0', '0', '0', '0', '1');
INSERT INTO `yct_apply` ( `appid`, `applyname`, `applymenu`, `applycontent`, `applycode`, `applyvol`, `applypic`, `volsn`, `uservol`, `addtime`, `setuptime`, `isdel`, `isetup`, `issystem`, `issqlbak`, `isfree` ) VALUES  ('10', '快钱在线支付', '快钱在线支付', '快钱是国内领先的独立第三方支付企业，旨在为各类企业及个人提供安全、便捷和保密的支付清算与账务服务，其推出的支付产品包括但不限于人民币支付，外卡支付，神州行卡支付，联通充值卡支付，VPOS支付等众多支付产品, 支持互联网、手机、电话和POS等多种终端, 以满足各类企业和个人的不同支付需求。', 'kuaiqian', 'V6.0', 'upfile/app/20140710013156_166.jpg', '600', '6000140707', '1404927530', '0', '0', '0', '0', '0', '1');
INSERT INTO `yct_apply` ( `appid`, `applyname`, `applymenu`, `applycontent`, `applycode`, `applyvol`, `applypic`, `volsn`, `uservol`, `addtime`, `setuptime`, `isdel`, `isetup`, `issystem`, `issqlbak`, `isfree` ) VALUES  ('11', '中国银联在线支付', '中国银联在线支付', '中国银联是经国务院同意，中国人民银行批准设立的中国银行卡联合组织，成立于2002年3月，总部设于上海。作为中国的银行卡联合组织，中国银联处于我国银行卡产业的核心和枢纽地位，对我国银行卡产业发展发挥着基础性作用，各银行通过银联跨行交易清算系统，实现了系统间的互联互通，进而使银行卡得以跨银行、跨地区和跨境使用。', 'unionpay', 'V6.0', 'upfile/app/20140710013156_712.jpg', '600', '6000140707', '1404927530', '0', '0', '0', '0', '0', '1');
INSERT INTO `yct_apply` ( `appid`, `applyname`, `applymenu`, `applycontent`, `applycode`, `applyvol`, `applypic`, `volsn`, `uservol`, `addtime`, `setuptime`, `isdel`, `isetup`, `issystem`, `issqlbak`, `isfree` ) VALUES  ('12', '智能手机网站应用', '智能手机网站应用', '用于手机网站的搭建及智能手机APP的应用', 'touch', 'V6.0', 'upfile/app/20140710013209_613.jpg', '600', '6000140707', '1404927530', '0', '1', '1', '1', '1', '0');
INSERT INTO `yct_apply` ( `appid`, `applyname`, `applymenu`, `applycontent`, `applycode`, `applyvol`, `applypic`, `volsn`, `uservol`, `addtime`, `setuptime`, `isdel`, `isetup`, `issystem`, `issqlbak`, `isfree` ) VALUES  ('13', 'PayPal国际支付', 'PayPal国际支付', 'PayPal（在中国大陆的品牌为贝宝），1998年12月由 Peter Thiel 及 Max Levchin 建立。 是一个总部在美国加利福尼亚州圣荷西市的因特网服务商，允许在使用电子邮件来标识身份的用户之间转移资金，避免了传统的邮寄支票或者汇款的方法。PayPal也和一些电子商务网站合作，成为它们的货款支付方式之一；但是用这种支付方式转账时，PayPal收取一定数额的手续费。', 'paypal', 'V6.0', 'upfile/app/20140710013156_797.jpg', '600', '6000140707', '1404927530', '0', '1', '1', '1', '1', '1');
INSERT INTO `yct_apply` ( `appid`, `applyname`, `applymenu`, `applycontent`, `applycode`, `applyvol`, `applypic`, `volsn`, `uservol`, `addtime`, `setuptime`, `isdel`, `isetup`, `issystem`, `issqlbak`, `isfree` ) VALUES  ('14', '在线客服管理', '在线客服管理', '用于在线QQ、淘宝、旺旺及第三方自定义客服代码的添加及管理工作', 'im', 'V6.0.1', 'upfile/app/20140710013155_591.jpg', '601', '6000140707', '1404927530', '0', '0', '0', '0', '1', '0');
INSERT INTO `yct_apply` ( `appid`, `applyname`, `applymenu`, `applycontent`, `applycode`, `applyvol`, `applypic`, `volsn`, `uservol`, `addtime`, `setuptime`, `isdel`, `isetup`, `issystem`, `issqlbak`, `isfree` ) VALUES  ('15', '广告友情链接组件', '广告友情链接组件', '用于图片广告、动画广告、文字及图片友情链接的管理', 'bann', 'V6.0.0', 'upfile/app/20140710013155_471.jpg', '600', '6000140707', '1404927530', '0', '0', '1', '0', '1', '0');
DROP TABLE IF EXISTS `yct_city`;
CREATE TABLE `yct_city` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cityname` varchar(120) NOT NULL,
  `regiontype` tinyint(1) NOT NULL DEFAULT '2',
  `agencyid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `regiontype` (`regiontype`),
  KEY `agencyid` (`agencyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1', '0', '中国', '0', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2', '1', '北京', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3', '1', '安徽', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('4', '1', '福建', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('5', '1', '甘肃', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('6', '1', '广东', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('7', '1', '广西', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('8', '1', '贵州', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('9', '1', '海南', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('10', '1', '河北', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('11', '1', '河南', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('12', '1', '黑龙江', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('13', '1', '湖北', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('14', '1', '湖南', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('15', '1', '吉林', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('16', '1', '江苏', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('17', '1', '江西', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('18', '1', '辽宁', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('19', '1', '内蒙古', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('20', '1', '宁夏', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('21', '1', '青海', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('22', '1', '山东', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('23', '1', '山西', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('24', '1', '陕西', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('25', '1', '上海', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('26', '1', '四川', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('27', '1', '天津', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('28', '1', '西藏', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('29', '1', '新疆', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('30', '1', '云南', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('31', '1', '浙江', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('32', '1', '重庆', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('33', '1', '香港', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('34', '1', '澳门', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('35', '1', '台湾', '1', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('36', '3', '安庆', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('37', '3', '蚌埠', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('38', '3', '巢湖', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('39', '3', '池州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('40', '3', '滁州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('41', '3', '阜阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('42', '3', '淮北', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('43', '3', '淮南', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('44', '3', '黄山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('45', '3', '六安', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('46', '3', '马鞍山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('47', '3', '宿州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('48', '3', '铜陵', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('49', '3', '芜湖', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('50', '3', '宣城', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('51', '3', '亳州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('52', '2', '北京', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('53', '4', '福州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('54', '4', '龙岩', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('55', '4', '南平', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('56', '4', '宁德', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('57', '4', '莆田', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('58', '4', '泉州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('59', '4', '三明', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('60', '4', '厦门', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('61', '4', '漳州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('62', '5', '兰州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('63', '5', '白银', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('64', '5', '定西', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('65', '5', '甘南', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('66', '5', '嘉峪关', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('67', '5', '金昌', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('68', '5', '酒泉', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('69', '5', '临夏', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('70', '5', '陇南', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('71', '5', '平凉', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('72', '5', '庆阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('73', '5', '天水', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('74', '5', '武威', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('75', '5', '张掖', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('76', '6', '广州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('77', '6', '深圳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('78', '6', '潮州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('79', '6', '东莞', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('80', '6', '佛山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('81', '6', '河源', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('82', '6', '惠州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('83', '6', '江门', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('84', '6', '揭阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('85', '6', '茂名', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('86', '6', '梅州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('87', '6', '清远', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('88', '6', '汕头', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('89', '6', '汕尾', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('90', '6', '韶关', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('91', '6', '阳江', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('92', '6', '云浮', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('93', '6', '湛江', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('94', '6', '肇庆', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('95', '6', '中山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('96', '6', '珠海', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('97', '7', '南宁', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('98', '7', '桂林', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('99', '7', '百色', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('100', '7', '北海', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('101', '7', '崇左', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('102', '7', '防城港', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('103', '7', '贵港', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('104', '7', '河池', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('105', '7', '贺州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('106', '7', '来宾', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('107', '7', '柳州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('108', '7', '钦州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('109', '7', '梧州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('110', '7', '玉林', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('111', '8', '贵阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('112', '8', '安顺', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('113', '8', '毕节', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('114', '8', '六盘水', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('115', '8', '黔东南', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('116', '8', '黔南', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('117', '8', '黔西南', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('118', '8', '铜仁', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('119', '8', '遵义', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('120', '9', '海口', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('121', '9', '三亚', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('122', '9', '白沙', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('123', '9', '保亭', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('124', '9', '昌江', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('125', '9', '澄迈县', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('126', '9', '定安县', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('127', '9', '东方', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('128', '9', '乐东', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('129', '9', '临高县', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('130', '9', '陵水', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('131', '9', '琼海', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('132', '9', '琼中', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('133', '9', '屯昌县', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('134', '9', '万宁', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('135', '9', '文昌', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('136', '9', '五指山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('137', '9', '儋州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('138', '10', '石家庄', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('139', '10', '保定', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('140', '10', '沧州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('141', '10', '承德', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('142', '10', '邯郸', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('143', '10', '衡水', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('144', '10', '廊坊', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('145', '10', '秦皇岛', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('146', '10', '唐山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('147', '10', '邢台', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('148', '10', '张家口', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('149', '11', '郑州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('150', '11', '洛阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('151', '11', '开封', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('152', '11', '安阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('153', '11', '鹤壁', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('154', '11', '济源', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('155', '11', '焦作', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('156', '11', '南阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('157', '11', '平顶山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('158', '11', '三门峡', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('159', '11', '商丘', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('160', '11', '新乡', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('161', '11', '信阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('162', '11', '许昌', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('163', '11', '周口', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('164', '11', '驻马店', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('165', '11', '漯河', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('166', '11', '濮阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('167', '12', '哈尔滨', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('168', '12', '大庆', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('169', '12', '大兴安岭', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('170', '12', '鹤岗', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('171', '12', '黑河', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('172', '12', '鸡西', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('173', '12', '佳木斯', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('174', '12', '牡丹江', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('175', '12', '七台河', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('176', '12', '齐齐哈尔', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('177', '12', '双鸭山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('178', '12', '绥化', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('179', '12', '伊春', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('180', '13', '武汉', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('181', '13', '仙桃', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('182', '13', '鄂州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('183', '13', '黄冈', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('184', '13', '黄石', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('185', '13', '荆门', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('186', '13', '荆州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('187', '13', '潜江', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('188', '13', '神农架林区', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('189', '13', '十堰', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('190', '13', '随州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('191', '13', '天门', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('192', '13', '咸宁', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('193', '13', '襄樊', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('194', '13', '孝感', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('195', '13', '宜昌', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('196', '13', '恩施', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('197', '14', '长沙', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('198', '14', '张家界', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('199', '14', '常德', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('200', '14', '郴州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('201', '14', '衡阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('202', '14', '怀化', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('203', '14', '娄底', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('204', '14', '邵阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('205', '14', '湘潭', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('206', '14', '湘西', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('207', '14', '益阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('208', '14', '永州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('209', '14', '岳阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('210', '14', '株洲', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('211', '15', '长春', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('212', '15', '吉林', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('213', '15', '白城', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('214', '15', '白山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('215', '15', '辽源', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('216', '15', '四平', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('217', '15', '松原', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('218', '15', '通化', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('219', '15', '延边', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('220', '16', '南京', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('221', '16', '苏州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('222', '16', '无锡', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('223', '16', '常州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('224', '16', '淮安', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('225', '16', '连云港', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('226', '16', '南通', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('227', '16', '宿迁', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('228', '16', '泰州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('229', '16', '徐州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('230', '16', '盐城', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('231', '16', '扬州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('232', '16', '镇江', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('233', '17', '南昌', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('234', '17', '抚州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('235', '17', '赣州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('236', '17', '吉安', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('237', '17', '景德镇', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('238', '17', '九江', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('239', '17', '萍乡', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('240', '17', '上饶', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('241', '17', '新余', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('242', '17', '宜春', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('243', '17', '鹰潭', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('244', '18', '沈阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('245', '18', '大连', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('246', '18', '鞍山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('247', '18', '本溪', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('248', '18', '朝阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('249', '18', '丹东', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('250', '18', '抚顺', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('251', '18', '阜新', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('252', '18', '葫芦岛', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('253', '18', '锦州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('254', '18', '辽阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('255', '18', '盘锦', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('256', '18', '铁岭', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('257', '18', '营口', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('258', '19', '呼和浩特', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('259', '19', '阿拉善盟', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('260', '19', '巴彦淖尔盟', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('261', '19', '包头', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('262', '19', '赤峰', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('263', '19', '鄂尔多斯', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('264', '19', '呼伦贝尔', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('265', '19', '通辽', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('266', '19', '乌海', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('267', '19', '乌兰察布市', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('268', '19', '锡林郭勒盟', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('269', '19', '兴安盟', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('270', '20', '银川', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('271', '20', '固原', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('272', '20', '石嘴山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('273', '20', '吴忠', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('274', '20', '中卫', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('275', '21', '西宁', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('276', '21', '果洛', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('277', '21', '海北', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('278', '21', '海东', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('279', '21', '海南', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('280', '21', '海西', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('281', '21', '黄南', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('282', '21', '玉树', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('283', '22', '济南', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('284', '22', '青岛', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('285', '22', '滨州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('286', '22', '德州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('287', '22', '东营', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('288', '22', '菏泽', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('289', '22', '济宁', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('290', '22', '莱芜', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('291', '22', '聊城', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('292', '22', '临沂', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('293', '22', '日照', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('294', '22', '泰安', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('295', '22', '威海', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('296', '22', '潍坊', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('297', '22', '烟台', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('298', '22', '枣庄', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('299', '22', '淄博', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('300', '23', '太原', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('301', '23', '长治', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('302', '23', '大同', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('303', '23', '晋城', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('304', '23', '晋中', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('305', '23', '临汾', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('306', '23', '吕梁', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('307', '23', '朔州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('308', '23', '忻州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('309', '23', '阳泉', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('310', '23', '运城', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('311', '24', '西安', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('312', '24', '安康', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('313', '24', '宝鸡', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('314', '24', '汉中', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('315', '24', '商洛', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('316', '24', '铜川', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('317', '24', '渭南', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('318', '24', '咸阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('319', '24', '延安', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('320', '24', '榆林', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('321', '25', '上海', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('322', '26', '成都', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('323', '26', '绵阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('324', '26', '阿坝', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('325', '26', '巴中', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('326', '26', '达州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('327', '26', '德阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('328', '26', '甘孜', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('329', '26', '广安', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('330', '26', '广元', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('331', '26', '乐山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('332', '26', '凉山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('333', '26', '眉山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('334', '26', '南充', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('335', '26', '内江', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('336', '26', '攀枝花', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('337', '26', '遂宁', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('338', '26', '雅安', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('339', '26', '宜宾', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('340', '26', '资阳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('341', '26', '自贡', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('342', '26', '泸州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('343', '27', '天津', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('344', '28', '拉萨', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('345', '28', '阿里', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('346', '28', '昌都', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('347', '28', '林芝', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('348', '28', '那曲', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('349', '28', '日喀则', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('350', '28', '山南', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('351', '29', '乌鲁木齐', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('352', '29', '阿克苏', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('353', '29', '阿拉尔', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('354', '29', '巴音郭楞', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('355', '29', '博尔塔拉', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('356', '29', '昌吉', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('357', '29', '哈密', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('358', '29', '和田', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('359', '29', '喀什', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('360', '29', '克拉玛依', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('361', '29', '克孜勒苏', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('362', '29', '石河子', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('363', '29', '图木舒克', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('364', '29', '吐鲁番', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('365', '29', '五家渠', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('366', '29', '伊犁', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('367', '30', '昆明', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('368', '30', '怒江', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('369', '30', '普洱', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('370', '30', '丽江', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('371', '30', '保山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('372', '30', '楚雄', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('373', '30', '大理', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('374', '30', '德宏', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('375', '30', '迪庆', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('376', '30', '红河', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('377', '30', '临沧', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('378', '30', '曲靖', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('379', '30', '文山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('380', '30', '西双版纳', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('381', '30', '玉溪', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('382', '30', '昭通', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('383', '31', '杭州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('384', '31', '湖州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('385', '31', '嘉兴', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('386', '31', '金华', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('387', '31', '丽水', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('388', '31', '宁波', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('389', '31', '绍兴', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('390', '31', '台州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('391', '31', '温州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('392', '31', '舟山', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('393', '31', '衢州', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('394', '32', '重庆', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('395', '33', '香港', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('396', '34', '澳门', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('397', '35', '台湾', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('398', '36', '迎江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('399', '36', '大观区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('400', '36', '宜秀区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('401', '36', '桐城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('402', '36', '怀宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('403', '36', '枞阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('404', '36', '潜山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('405', '36', '太湖县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('406', '36', '宿松县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('407', '36', '望江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('408', '36', '岳西县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('409', '37', '中市区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('410', '37', '东市区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('411', '37', '西市区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('412', '37', '郊区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('413', '37', '怀远县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('414', '37', '五河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('415', '37', '固镇县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('416', '38', '居巢区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('417', '38', '庐江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('418', '38', '无为县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('419', '38', '含山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('420', '38', '和县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('421', '39', '贵池区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('422', '39', '东至县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('423', '39', '石台县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('424', '39', '青阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('425', '40', '琅琊区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('426', '40', '南谯区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('427', '40', '天长市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('428', '40', '明光市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('429', '40', '来安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('430', '40', '全椒县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('431', '40', '定远县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('432', '40', '凤阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('433', '41', '蚌山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('434', '41', '龙子湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('435', '41', '禹会区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('436', '41', '淮上区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('437', '41', '颍州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('438', '41', '颍东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('439', '41', '颍泉区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('440', '41', '界首市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('441', '41', '临泉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('442', '41', '太和县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('443', '41', '阜南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('444', '41', '颖上县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('445', '42', '相山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('446', '42', '杜集区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('447', '42', '烈山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('448', '42', '濉溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('449', '43', '田家庵区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('450', '43', '大通区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('451', '43', '谢家集区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('452', '43', '八公山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('453', '43', '潘集区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('454', '43', '凤台县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('455', '44', '屯溪区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('456', '44', '黄山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('457', '44', '徽州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('458', '44', '歙县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('459', '44', '休宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('460', '44', '黟县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('461', '44', '祁门县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('462', '45', '金安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('463', '45', '裕安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('464', '45', '寿县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('465', '45', '霍邱县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('466', '45', '舒城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('467', '45', '金寨县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('468', '45', '霍山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('469', '46', '雨山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('470', '46', '花山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('471', '46', '金家庄区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('472', '46', '当涂县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('473', '47', '埇桥区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('474', '47', '砀山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('475', '47', '萧县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('476', '47', '灵璧县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('477', '47', '泗县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('478', '48', '铜官山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('479', '48', '狮子山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('480', '48', '郊区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('481', '48', '铜陵县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('482', '49', '镜湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('483', '49', '弋江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('484', '49', '鸠江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('485', '49', '三山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('486', '49', '芜湖县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('487', '49', '繁昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('488', '49', '南陵县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('489', '50', '宣州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('490', '50', '宁国市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('491', '50', '郎溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('492', '50', '广德县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('493', '50', '泾县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('494', '50', '绩溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('495', '50', '旌德县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('496', '51', '涡阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('497', '51', '蒙城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('498', '51', '利辛县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('499', '51', '谯城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('500', '52', '东城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('501', '52', '西城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('502', '52', '海淀区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('503', '52', '朝阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('504', '52', '崇文区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('505', '52', '宣武区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('506', '52', '丰台区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('507', '52', '石景山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('508', '52', '房山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('509', '52', '门头沟区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('510', '52', '通州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('511', '52', '顺义区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('512', '52', '昌平区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('513', '52', '怀柔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('514', '52', '平谷区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('515', '52', '大兴区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('516', '52', '密云县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('517', '52', '延庆县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('518', '53', '鼓楼区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('519', '53', '台江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('520', '53', '仓山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('521', '53', '马尾区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('522', '53', '晋安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('523', '53', '福清市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('524', '53', '长乐市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('525', '53', '闽侯县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('526', '53', '连江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('527', '53', '罗源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('528', '53', '闽清县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('529', '53', '永泰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('530', '53', '平潭县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('531', '54', '新罗区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('532', '54', '漳平市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('533', '54', '长汀县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('534', '54', '永定县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('535', '54', '上杭县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('536', '54', '武平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('537', '54', '连城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('538', '55', '延平区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('539', '55', '邵武市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('540', '55', '武夷山市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('541', '55', '建瓯市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('542', '55', '建阳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('543', '55', '顺昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('544', '55', '浦城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('545', '55', '光泽县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('546', '55', '松溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('547', '55', '政和县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('548', '56', '蕉城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('549', '56', '福安市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('550', '56', '福鼎市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('551', '56', '霞浦县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('552', '56', '古田县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('553', '56', '屏南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('554', '56', '寿宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('555', '56', '周宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('556', '56', '柘荣县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('557', '57', '城厢区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('558', '57', '涵江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('559', '57', '荔城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('560', '57', '秀屿区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('561', '57', '仙游县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('562', '58', '鲤城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('563', '58', '丰泽区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('564', '58', '洛江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('565', '58', '清濛开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('566', '58', '泉港区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('567', '58', '石狮市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('568', '58', '晋江市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('569', '58', '南安市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('570', '58', '惠安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('571', '58', '安溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('572', '58', '永春县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('573', '58', '德化县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('574', '58', '金门县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('575', '59', '梅列区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('576', '59', '三元区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('577', '59', '永安市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('578', '59', '明溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('579', '59', '清流县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('580', '59', '宁化县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('581', '59', '大田县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('582', '59', '尤溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('583', '59', '沙县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('584', '59', '将乐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('585', '59', '泰宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('586', '59', '建宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('587', '60', '思明区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('588', '60', '海沧区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('589', '60', '湖里区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('590', '60', '集美区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('591', '60', '同安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('592', '60', '翔安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('593', '61', '芗城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('594', '61', '龙文区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('595', '61', '龙海市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('596', '61', '云霄县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('597', '61', '漳浦县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('598', '61', '诏安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('599', '61', '长泰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('600', '61', '东山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('601', '61', '南靖县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('602', '61', '平和县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('603', '61', '华安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('604', '62', '皋兰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('605', '62', '城关区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('606', '62', '七里河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('607', '62', '西固区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('608', '62', '安宁区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('609', '62', '红古区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('610', '62', '永登县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('611', '62', '榆中县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('612', '63', '白银区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('613', '63', '平川区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('614', '63', '会宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('615', '63', '景泰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('616', '63', '靖远县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('617', '64', '临洮县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('618', '64', '陇西县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('619', '64', '通渭县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('620', '64', '渭源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('621', '64', '漳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('622', '64', '岷县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('623', '64', '安定区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('624', '64', '安定区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('625', '65', '合作市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('626', '65', '临潭县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('627', '65', '卓尼县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('628', '65', '舟曲县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('629', '65', '迭部县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('630', '65', '玛曲县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('631', '65', '碌曲县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('632', '65', '夏河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('633', '66', '嘉峪关市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('634', '67', '金川区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('635', '67', '永昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('636', '68', '肃州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('637', '68', '玉门市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('638', '68', '敦煌市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('639', '68', '金塔县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('640', '68', '瓜州县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('641', '68', '肃北', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('642', '68', '阿克塞', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('643', '69', '临夏市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('644', '69', '临夏县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('645', '69', '康乐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('646', '69', '永靖县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('647', '69', '广河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('648', '69', '和政县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('649', '69', '东乡族自治县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('650', '69', '积石山', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('651', '70', '成县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('652', '70', '徽县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('653', '70', '康县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('654', '70', '礼县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('655', '70', '两当县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('656', '70', '文县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('657', '70', '西和县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('658', '70', '宕昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('659', '70', '武都区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('660', '71', '崇信县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('661', '71', '华亭县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('662', '71', '静宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('663', '71', '灵台县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('664', '71', '崆峒区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('665', '71', '庄浪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('666', '71', '泾川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('667', '72', '合水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('668', '72', '华池县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('669', '72', '环县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('670', '72', '宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('671', '72', '庆城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('672', '72', '西峰区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('673', '72', '镇原县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('674', '72', '正宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('675', '73', '甘谷县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('676', '73', '秦安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('677', '73', '清水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('678', '73', '秦州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('679', '73', '麦积区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('680', '73', '武山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('681', '73', '张家川', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('682', '74', '古浪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('683', '74', '民勤县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('684', '74', '天祝', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('685', '74', '凉州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('686', '75', '高台县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('687', '75', '临泽县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('688', '75', '民乐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('689', '75', '山丹县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('690', '75', '肃南', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('691', '75', '甘州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('692', '76', '从化市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('693', '76', '天河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('694', '76', '东山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('695', '76', '白云区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('696', '76', '海珠区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('697', '76', '荔湾区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('698', '76', '越秀区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('699', '76', '黄埔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('700', '76', '番禺区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('701', '76', '花都区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('702', '76', '增城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('703', '76', '从化区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('704', '76', '市郊', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('705', '77', '福田区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('706', '77', '罗湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('707', '77', '南山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('708', '77', '宝安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('709', '77', '龙岗区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('710', '77', '盐田区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('711', '78', '湘桥区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('712', '78', '潮安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('713', '78', '饶平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('714', '79', '南城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('715', '79', '东城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('716', '79', '万江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('717', '79', '莞城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('718', '79', '石龙镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('719', '79', '虎门镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('720', '79', '麻涌镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('721', '79', '道滘镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('722', '79', '石碣镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('723', '79', '沙田镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('724', '79', '望牛墩镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('725', '79', '洪梅镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('726', '79', '茶山镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('727', '79', '寮步镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('728', '79', '大岭山镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('729', '79', '大朗镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('730', '79', '黄江镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('731', '79', '樟木头', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('732', '79', '凤岗镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('733', '79', '塘厦镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('734', '79', '谢岗镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('735', '79', '厚街镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('736', '79', '清溪镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('737', '79', '常平镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('738', '79', '桥头镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('739', '79', '横沥镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('740', '79', '东坑镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('741', '79', '企石镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('742', '79', '石排镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('743', '79', '长安镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('744', '79', '中堂镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('745', '79', '高埗镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('746', '80', '禅城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('747', '80', '南海区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('748', '80', '顺德区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('749', '80', '三水区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('750', '80', '高明区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('751', '81', '东源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('752', '81', '和平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('753', '81', '源城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('754', '81', '连平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('755', '81', '龙川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('756', '81', '紫金县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('757', '82', '惠阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('758', '82', '惠城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('759', '82', '大亚湾', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('760', '82', '博罗县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('761', '82', '惠东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('762', '82', '龙门县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('763', '83', '江海区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('764', '83', '蓬江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('765', '83', '新会区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('766', '83', '台山市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('767', '83', '开平市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('768', '83', '鹤山市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('769', '83', '恩平市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('770', '84', '榕城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('771', '84', '普宁市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('772', '84', '揭东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('773', '84', '揭西县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('774', '84', '惠来县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('775', '85', '茂南区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('776', '85', '茂港区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('777', '85', '高州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('778', '85', '化州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('779', '85', '信宜市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('780', '85', '电白县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('781', '86', '梅县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('782', '86', '梅江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('783', '86', '兴宁市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('784', '86', '大埔县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('785', '86', '丰顺县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('786', '86', '五华县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('787', '86', '平远县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('788', '86', '蕉岭县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('789', '87', '清城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('790', '87', '英德市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('791', '87', '连州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('792', '87', '佛冈县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('793', '87', '阳山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('794', '87', '清新县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('795', '87', '连山', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('796', '87', '连南', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('797', '88', '南澳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('798', '88', '潮阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('799', '88', '澄海区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('800', '88', '龙湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('801', '88', '金平区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('802', '88', '濠江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('803', '88', '潮南区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('804', '89', '城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('805', '89', '陆丰市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('806', '89', '海丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('807', '89', '陆河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('808', '90', '曲江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('809', '90', '浈江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('810', '90', '武江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('811', '90', '曲江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('812', '90', '乐昌市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('813', '90', '南雄市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('814', '90', '始兴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('815', '90', '仁化县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('816', '90', '翁源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('817', '90', '新丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('818', '90', '乳源', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('819', '91', '江城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('820', '91', '阳春市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('821', '91', '阳西县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('822', '91', '阳东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('823', '92', '云城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('824', '92', '罗定市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('825', '92', '新兴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('826', '92', '郁南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('827', '92', '云安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('828', '93', '赤坎区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('829', '93', '霞山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('830', '93', '坡头区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('831', '93', '麻章区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('832', '93', '廉江市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('833', '93', '雷州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('834', '93', '吴川市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('835', '93', '遂溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('836', '93', '徐闻县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('837', '94', '肇庆市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('838', '94', '高要市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('839', '94', '四会市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('840', '94', '广宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('841', '94', '怀集县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('842', '94', '封开县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('843', '94', '德庆县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('844', '95', '石岐街道', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('845', '95', '东区街道', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('846', '95', '西区街道', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('847', '95', '环城街道', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('848', '95', '中山港街道', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('849', '95', '五桂山街道', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('850', '96', '香洲区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('851', '96', '斗门区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('852', '96', '金湾区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('853', '97', '邕宁区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('854', '97', '青秀区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('855', '97', '兴宁区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('856', '97', '良庆区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('857', '97', '西乡塘区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('858', '97', '江南区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('859', '97', '武鸣县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('860', '97', '隆安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('861', '97', '马山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('862', '97', '上林县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('863', '97', '宾阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('864', '97', '横县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('865', '98', '秀峰区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('866', '98', '叠彩区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('867', '98', '象山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('868', '98', '七星区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('869', '98', '雁山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('870', '98', '阳朔县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('871', '98', '临桂县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('872', '98', '灵川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('873', '98', '全州县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('874', '98', '平乐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('875', '98', '兴安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('876', '98', '灌阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('877', '98', '荔浦县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('878', '98', '资源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('879', '98', '永福县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('880', '98', '龙胜', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('881', '98', '恭城', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('882', '99', '右江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('883', '99', '凌云县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('884', '99', '平果县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('885', '99', '西林县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('886', '99', '乐业县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('887', '99', '德保县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('888', '99', '田林县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('889', '99', '田阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('890', '99', '靖西县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('891', '99', '田东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('892', '99', '那坡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('893', '99', '隆林', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('894', '100', '海城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('895', '100', '银海区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('896', '100', '铁山港区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('897', '100', '合浦县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('898', '101', '江州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('899', '101', '凭祥市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('900', '101', '宁明县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('901', '101', '扶绥县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('902', '101', '龙州县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('903', '101', '大新县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('904', '101', '天等县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('905', '102', '港口区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('906', '102', '防城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('907', '102', '东兴市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('908', '102', '上思县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('909', '103', '港北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('910', '103', '港南区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('911', '103', '覃塘区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('912', '103', '桂平市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('913', '103', '平南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('914', '104', '金城江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('915', '104', '宜州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('916', '104', '天峨县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('917', '104', '凤山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('918', '104', '南丹县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('919', '104', '东兰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('920', '104', '都安', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('921', '104', '罗城', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('922', '104', '巴马', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('923', '104', '环江', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('924', '104', '大化', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('925', '105', '八步区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('926', '105', '钟山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('927', '105', '昭平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('928', '105', '富川', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('929', '106', '兴宾区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('930', '106', '合山市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('931', '106', '象州县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('932', '106', '武宣县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('933', '106', '忻城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('934', '106', '金秀', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('935', '107', '城中区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('936', '107', '鱼峰区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('937', '107', '柳北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('938', '107', '柳南区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('939', '107', '柳江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('940', '107', '柳城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('941', '107', '鹿寨县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('942', '107', '融安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('943', '107', '融水', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('944', '107', '三江', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('945', '108', '钦南区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('946', '108', '钦北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('947', '108', '灵山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('948', '108', '浦北县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('949', '109', '万秀区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('950', '109', '蝶山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('951', '109', '长洲区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('952', '109', '岑溪市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('953', '109', '苍梧县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('954', '109', '藤县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('955', '109', '蒙山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('956', '110', '玉州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('957', '110', '北流市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('958', '110', '容县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('959', '110', '陆川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('960', '110', '博白县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('961', '110', '兴业县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('962', '111', '南明区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('963', '111', '云岩区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('964', '111', '花溪区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('965', '111', '乌当区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('966', '111', '白云区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('967', '111', '小河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('968', '111', '金阳新区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('969', '111', '新天园区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('970', '111', '清镇市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('971', '111', '开阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('972', '111', '修文县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('973', '111', '息烽县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('974', '112', '西秀区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('975', '112', '关岭', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('976', '112', '镇宁', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('977', '112', '紫云', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('978', '112', '平坝县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('979', '112', '普定县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('980', '113', '毕节市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('981', '113', '大方县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('982', '113', '黔西县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('983', '113', '金沙县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('984', '113', '织金县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('985', '113', '纳雍县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('986', '113', '赫章县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('987', '113', '威宁', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('988', '114', '钟山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('989', '114', '六枝特区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('990', '114', '水城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('991', '114', '盘县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('992', '115', '凯里市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('993', '115', '黄平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('994', '115', '施秉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('995', '115', '三穗县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('996', '115', '镇远县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('997', '115', '岑巩县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('998', '115', '天柱县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('999', '115', '锦屏县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1000', '115', '剑河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1001', '115', '台江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1002', '115', '黎平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1003', '115', '榕江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1004', '115', '从江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1005', '115', '雷山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1006', '115', '麻江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1007', '115', '丹寨县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1008', '116', '都匀市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1009', '116', '福泉市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1010', '116', '荔波县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1011', '116', '贵定县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1012', '116', '瓮安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1013', '116', '独山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1014', '116', '平塘县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1015', '116', '罗甸县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1016', '116', '长顺县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1017', '116', '龙里县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1018', '116', '惠水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1019', '116', '三都', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1020', '117', '兴义市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1021', '117', '兴仁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1022', '117', '普安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1023', '117', '晴隆县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1024', '117', '贞丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1025', '117', '望谟县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1026', '117', '册亨县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1027', '117', '安龙县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1028', '118', '铜仁市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1029', '118', '江口县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1030', '118', '石阡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1031', '118', '思南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1032', '118', '德江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1033', '118', '玉屏', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1034', '118', '印江', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1035', '118', '沿河', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1036', '118', '松桃', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1037', '118', '万山特区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1038', '119', '红花岗区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1039', '119', '务川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1040', '119', '道真县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1041', '119', '汇川区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1042', '119', '赤水市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1043', '119', '仁怀市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1044', '119', '遵义县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1045', '119', '桐梓县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1046', '119', '绥阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1047', '119', '正安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1048', '119', '凤冈县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1049', '119', '湄潭县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1050', '119', '余庆县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1051', '119', '习水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1052', '119', '道真', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1053', '119', '务川', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1054', '120', '秀英区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1055', '120', '龙华区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1056', '120', '琼山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1057', '120', '美兰区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1058', '137', '市区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1059', '137', '洋浦开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1060', '137', '那大镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1061', '137', '王五镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1062', '137', '雅星镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1063', '137', '大成镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1064', '137', '中和镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1065', '137', '峨蔓镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1066', '137', '南丰镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1067', '137', '白马井镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1068', '137', '兰洋镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1069', '137', '和庆镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1070', '137', '海头镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1071', '137', '排浦镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1072', '137', '东成镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1073', '137', '光村镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1074', '137', '木棠镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1075', '137', '新州镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1076', '137', '三都镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1077', '137', '其他', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1078', '138', '长安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1079', '138', '桥东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1080', '138', '桥西区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1081', '138', '新华区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1082', '138', '裕华区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1083', '138', '井陉矿区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1084', '138', '高新区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1085', '138', '辛集市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1086', '138', '藁城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1087', '138', '晋州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1088', '138', '新乐市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1089', '138', '鹿泉市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1090', '138', '井陉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1091', '138', '正定县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1092', '138', '栾城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1093', '138', '行唐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1094', '138', '灵寿县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1095', '138', '高邑县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1096', '138', '深泽县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1097', '138', '赞皇县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1098', '138', '无极县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1099', '138', '平山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1100', '138', '元氏县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1101', '138', '赵县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1102', '139', '新市区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1103', '139', '南市区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1104', '139', '北市区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1105', '139', '涿州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1106', '139', '定州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1107', '139', '安国市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1108', '139', '高碑店市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1109', '139', '满城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1110', '139', '清苑县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1111', '139', '涞水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1112', '139', '阜平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1113', '139', '徐水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1114', '139', '定兴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1115', '139', '唐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1116', '139', '高阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1117', '139', '容城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1118', '139', '涞源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1119', '139', '望都县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1120', '139', '安新县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1121', '139', '易县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1122', '139', '曲阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1123', '139', '蠡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1124', '139', '顺平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1125', '139', '博野县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1126', '139', '雄县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1127', '140', '运河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1128', '140', '新华区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1129', '140', '泊头市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1130', '140', '任丘市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1131', '140', '黄骅市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1132', '140', '河间市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1133', '140', '沧县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1134', '140', '青县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1135', '140', '东光县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1136', '140', '海兴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1137', '140', '盐山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1138', '140', '肃宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1139', '140', '南皮县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1140', '140', '吴桥县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1141', '140', '献县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1142', '140', '孟村', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1143', '141', '双桥区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1144', '141', '双滦区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1145', '141', '鹰手营子矿区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1146', '141', '承德县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1147', '141', '兴隆县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1148', '141', '平泉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1149', '141', '滦平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1150', '141', '隆化县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1151', '141', '丰宁', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1152', '141', '宽城', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1153', '141', '围场', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1154', '142', '从台区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1155', '142', '复兴区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1156', '142', '邯山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1157', '142', '峰峰矿区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1158', '142', '武安市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1159', '142', '邯郸县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1160', '142', '临漳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1161', '142', '成安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1162', '142', '大名县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1163', '142', '涉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1164', '142', '磁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1165', '142', '肥乡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1166', '142', '永年县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1167', '142', '邱县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1168', '142', '鸡泽县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1169', '142', '广平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1170', '142', '馆陶县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1171', '142', '魏县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1172', '142', '曲周县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1173', '143', '桃城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1174', '143', '冀州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1175', '143', '深州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1176', '143', '枣强县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1177', '143', '武邑县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1178', '143', '武强县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1179', '143', '饶阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1180', '143', '安平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1181', '143', '故城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1182', '143', '景县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1183', '143', '阜城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1184', '144', '安次区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1185', '144', '广阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1186', '144', '霸州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1187', '144', '三河市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1188', '144', '固安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1189', '144', '永清县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1190', '144', '香河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1191', '144', '大城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1192', '144', '文安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1193', '144', '大厂', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1194', '145', '海港区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1195', '145', '山海关区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1196', '145', '北戴河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1197', '145', '昌黎县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1198', '145', '抚宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1199', '145', '卢龙县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1200', '145', '青龙', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1201', '146', '路北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1202', '146', '路南区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1203', '146', '古冶区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1204', '146', '开平区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1205', '146', '丰南区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1206', '146', '丰润区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1207', '146', '遵化市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1208', '146', '迁安市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1209', '146', '滦县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1210', '146', '滦南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1211', '146', '乐亭县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1212', '146', '迁西县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1213', '146', '玉田县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1214', '146', '唐海县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1215', '147', '桥东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1216', '147', '桥西区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1217', '147', '南宫市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1218', '147', '沙河市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1219', '147', '邢台县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1220', '147', '临城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1221', '147', '内丘县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1222', '147', '柏乡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1223', '147', '隆尧县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1224', '147', '任县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1225', '147', '南和县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1226', '147', '宁晋县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1227', '147', '巨鹿县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1228', '147', '新河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1229', '147', '广宗县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1230', '147', '平乡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1231', '147', '威县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1232', '147', '清河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1233', '147', '临西县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1234', '148', '桥西区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1235', '148', '桥东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1236', '148', '宣化区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1237', '148', '下花园区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1238', '148', '宣化县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1239', '148', '张北县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1240', '148', '康保县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1241', '148', '沽源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1242', '148', '尚义县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1243', '148', '蔚县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1244', '148', '阳原县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1245', '148', '怀安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1246', '148', '万全县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1247', '148', '怀来县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1248', '148', '涿鹿县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1249', '148', '赤城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1250', '148', '崇礼县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1251', '149', '金水区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1252', '149', '邙山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1253', '149', '二七区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1254', '149', '管城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1255', '149', '中原区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1256', '149', '上街区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1257', '149', '惠济区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1258', '149', '郑东新区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1259', '149', '经济技术开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1260', '149', '高新开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1261', '149', '出口加工区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1262', '149', '巩义市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1263', '149', '荥阳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1264', '149', '新密市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1265', '149', '新郑市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1266', '149', '登封市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1267', '149', '中牟县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1268', '150', '西工区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1269', '150', '老城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1270', '150', '涧西区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1271', '150', '瀍河回族区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1272', '150', '洛龙区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1273', '150', '吉利区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1274', '150', '偃师市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1275', '150', '孟津县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1276', '150', '新安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1277', '150', '栾川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1278', '150', '嵩县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1279', '150', '汝阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1280', '150', '宜阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1281', '150', '洛宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1282', '150', '伊川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1283', '151', '鼓楼区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1284', '151', '龙亭区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1285', '151', '顺河回族区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1286', '151', '金明区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1287', '151', '禹王台区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1288', '151', '杞县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1289', '151', '通许县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1290', '151', '尉氏县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1291', '151', '开封县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1292', '151', '兰考县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1293', '152', '北关区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1294', '152', '文峰区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1295', '152', '殷都区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1296', '152', '龙安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1297', '152', '林州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1298', '152', '安阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1299', '152', '汤阴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1300', '152', '滑县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1301', '152', '内黄县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1302', '153', '淇滨区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1303', '153', '山城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1304', '153', '鹤山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1305', '153', '浚县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1306', '153', '淇县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1307', '154', '济源市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1308', '155', '解放区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1309', '155', '中站区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1310', '155', '马村区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1311', '155', '山阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1312', '155', '沁阳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1313', '155', '孟州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1314', '155', '修武县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1315', '155', '博爱县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1316', '155', '武陟县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1317', '155', '温县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1318', '156', '卧龙区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1319', '156', '宛城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1320', '156', '邓州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1321', '156', '南召县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1322', '156', '方城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1323', '156', '西峡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1324', '156', '镇平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1325', '156', '内乡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1326', '156', '淅川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1327', '156', '社旗县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1328', '156', '唐河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1329', '156', '新野县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1330', '156', '桐柏县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1331', '157', '新华区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1332', '157', '卫东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1333', '157', '湛河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1334', '157', '石龙区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1335', '157', '舞钢市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1336', '157', '汝州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1337', '157', '宝丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1338', '157', '叶县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1339', '157', '鲁山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1340', '157', '郏县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1341', '158', '湖滨区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1342', '158', '义马市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1343', '158', '灵宝市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1344', '158', '渑池县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1345', '158', '陕县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1346', '158', '卢氏县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1347', '159', '梁园区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1348', '159', '睢阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1349', '159', '永城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1350', '159', '民权县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1351', '159', '睢县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1352', '159', '宁陵县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1353', '159', '虞城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1354', '159', '柘城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1355', '159', '夏邑县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1356', '160', '卫滨区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1357', '160', '红旗区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1358', '160', '凤泉区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1359', '160', '牧野区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1360', '160', '卫辉市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1361', '160', '辉县市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1362', '160', '新乡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1363', '160', '获嘉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1364', '160', '原阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1365', '160', '延津县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1366', '160', '封丘县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1367', '160', '长垣县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1368', '161', '浉河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1369', '161', '平桥区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1370', '161', '罗山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1371', '161', '光山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1372', '161', '新县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1373', '161', '商城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1374', '161', '固始县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1375', '161', '潢川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1376', '161', '淮滨县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1377', '161', '息县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1378', '162', '魏都区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1379', '162', '禹州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1380', '162', '长葛市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1381', '162', '许昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1382', '162', '鄢陵县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1383', '162', '襄城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1384', '163', '川汇区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1385', '163', '项城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1386', '163', '扶沟县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1387', '163', '西华县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1388', '163', '商水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1389', '163', '沈丘县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1390', '163', '郸城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1391', '163', '淮阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1392', '163', '太康县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1393', '163', '鹿邑县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1394', '164', '驿城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1395', '164', '西平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1396', '164', '上蔡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1397', '164', '平舆县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1398', '164', '正阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1399', '164', '确山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1400', '164', '泌阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1401', '164', '汝南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1402', '164', '遂平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1403', '164', '新蔡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1404', '165', '郾城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1405', '165', '源汇区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1406', '165', '召陵区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1407', '165', '舞阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1408', '165', '临颍县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1409', '166', '华龙区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1410', '166', '清丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1411', '166', '南乐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1412', '166', '范县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1413', '166', '台前县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1414', '166', '濮阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1415', '167', '道里区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1416', '167', '南岗区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1417', '167', '动力区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1418', '167', '平房区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1419', '167', '香坊区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1420', '167', '太平区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1421', '167', '道外区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1422', '167', '阿城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1423', '167', '呼兰区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1424', '167', '松北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1425', '167', '尚志市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1426', '167', '双城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1427', '167', '五常市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1428', '167', '方正县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1429', '167', '宾县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1430', '167', '依兰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1431', '167', '巴彦县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1432', '167', '通河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1433', '167', '木兰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1434', '167', '延寿县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1435', '168', '萨尔图区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1436', '168', '红岗区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1437', '168', '龙凤区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1438', '168', '让胡路区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1439', '168', '大同区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1440', '168', '肇州县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1441', '168', '肇源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1442', '168', '林甸县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1443', '168', '杜尔伯特', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1444', '169', '呼玛县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1445', '169', '漠河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1446', '169', '塔河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1447', '170', '兴山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1448', '170', '工农区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1449', '170', '南山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1450', '170', '兴安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1451', '170', '向阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1452', '170', '东山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1453', '170', '萝北县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1454', '170', '绥滨县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1455', '171', '爱辉区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1456', '171', '五大连池市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1457', '171', '北安市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1458', '171', '嫩江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1459', '171', '逊克县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1460', '171', '孙吴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1461', '172', '鸡冠区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1462', '172', '恒山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1463', '172', '城子河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1464', '172', '滴道区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1465', '172', '梨树区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1466', '172', '虎林市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1467', '172', '密山市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1468', '172', '鸡东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1469', '173', '前进区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1470', '173', '郊区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1471', '173', '向阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1472', '173', '东风区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1473', '173', '同江市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1474', '173', '富锦市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1475', '173', '桦南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1476', '173', '桦川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1477', '173', '汤原县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1478', '173', '抚远县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1479', '174', '爱民区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1480', '174', '东安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1481', '174', '阳明区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1482', '174', '西安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1483', '174', '绥芬河市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1484', '174', '海林市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1485', '174', '宁安市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1486', '174', '穆棱市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1487', '174', '东宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1488', '174', '林口县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1489', '175', '桃山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1490', '175', '新兴区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1491', '175', '茄子河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1492', '175', '勃利县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1493', '176', '龙沙区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1494', '176', '昂昂溪区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1495', '176', '铁峰区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1496', '176', '建华区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1497', '176', '富拉尔基区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1498', '176', '碾子山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1499', '176', '梅里斯达斡尔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1500', '176', '讷河市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1501', '176', '龙江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1502', '176', '依安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1503', '176', '泰来县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1504', '176', '甘南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1505', '176', '富裕县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1506', '176', '克山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1507', '176', '克东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1508', '176', '拜泉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1509', '177', '尖山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1510', '177', '岭东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1511', '177', '四方台区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1512', '177', '宝山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1513', '177', '集贤县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1514', '177', '友谊县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1515', '177', '宝清县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1516', '177', '饶河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1517', '178', '北林区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1518', '178', '安达市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1519', '178', '肇东市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1520', '178', '海伦市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1521', '178', '望奎县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1522', '178', '兰西县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1523', '178', '青冈县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1524', '178', '庆安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1525', '178', '明水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1526', '178', '绥棱县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1527', '179', '伊春区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1528', '179', '带岭区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1529', '179', '南岔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1530', '179', '金山屯区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1531', '179', '西林区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1532', '179', '美溪区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1533', '179', '乌马河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1534', '179', '翠峦区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1535', '179', '友好区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1536', '179', '上甘岭区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1537', '179', '五营区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1538', '179', '红星区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1539', '179', '新青区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1540', '179', '汤旺河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1541', '179', '乌伊岭区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1542', '179', '铁力市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1543', '179', '嘉荫县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1544', '180', '江岸区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1545', '180', '武昌区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1546', '180', '江汉区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1547', '180', '硚口区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1548', '180', '汉阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1549', '180', '青山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1550', '180', '洪山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1551', '180', '东西湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1552', '180', '汉南区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1553', '180', '蔡甸区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1554', '180', '江夏区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1555', '180', '黄陂区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1556', '180', '新洲区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1557', '180', '经济开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1558', '181', '仙桃市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1559', '182', '鄂城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1560', '182', '华容区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1561', '182', '梁子湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1562', '183', '黄州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1563', '183', '麻城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1564', '183', '武穴市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1565', '183', '团风县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1566', '183', '红安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1567', '183', '罗田县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1568', '183', '英山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1569', '183', '浠水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1570', '183', '蕲春县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1571', '183', '黄梅县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1572', '184', '黄石港区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1573', '184', '西塞山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1574', '184', '下陆区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1575', '184', '铁山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1576', '184', '大冶市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1577', '184', '阳新县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1578', '185', '东宝区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1579', '185', '掇刀区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1580', '185', '钟祥市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1581', '185', '京山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1582', '185', '沙洋县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1583', '186', '沙市区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1584', '186', '荆州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1585', '186', '石首市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1586', '186', '洪湖市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1587', '186', '松滋市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1588', '186', '公安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1589', '186', '监利县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1590', '186', '江陵县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1591', '187', '潜江市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1592', '188', '神农架林区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1593', '189', '张湾区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1594', '189', '茅箭区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1595', '189', '丹江口市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1596', '189', '郧县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1597', '189', '郧西县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1598', '189', '竹山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1599', '189', '竹溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1600', '189', '房县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1601', '190', '曾都区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1602', '190', '广水市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1603', '191', '天门市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1604', '192', '咸安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1605', '192', '赤壁市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1606', '192', '嘉鱼县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1607', '192', '通城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1608', '192', '崇阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1609', '192', '通山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1610', '193', '襄城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1611', '193', '樊城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1612', '193', '襄阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1613', '193', '老河口市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1614', '193', '枣阳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1615', '193', '宜城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1616', '193', '南漳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1617', '193', '谷城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1618', '193', '保康县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1619', '194', '孝南区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1620', '194', '应城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1621', '194', '安陆市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1622', '194', '汉川市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1623', '194', '孝昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1624', '194', '大悟县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1625', '194', '云梦县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1626', '195', '长阳', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1627', '195', '五峰', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1628', '195', '西陵区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1629', '195', '伍家岗区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1630', '195', '点军区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1631', '195', '猇亭区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1632', '195', '夷陵区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1633', '195', '宜都市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1634', '195', '当阳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1635', '195', '枝江市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1636', '195', '远安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1637', '195', '兴山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1638', '195', '秭归县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1639', '196', '恩施市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1640', '196', '利川市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1641', '196', '建始县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1642', '196', '巴东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1643', '196', '宣恩县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1644', '196', '咸丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1645', '196', '来凤县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1646', '196', '鹤峰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1647', '197', '岳麓区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1648', '197', '芙蓉区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1649', '197', '天心区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1650', '197', '开福区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1651', '197', '雨花区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1652', '197', '开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1653', '197', '浏阳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1654', '197', '长沙县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1655', '197', '望城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1656', '197', '宁乡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1657', '198', '永定区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1658', '198', '武陵源区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1659', '198', '慈利县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1660', '198', '桑植县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1661', '199', '武陵区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1662', '199', '鼎城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1663', '199', '津市市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1664', '199', '安乡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1665', '199', '汉寿县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1666', '199', '澧县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1667', '199', '临澧县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1668', '199', '桃源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1669', '199', '石门县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1670', '200', '北湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1671', '200', '苏仙区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1672', '200', '资兴市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1673', '200', '桂阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1674', '200', '宜章县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1675', '200', '永兴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1676', '200', '嘉禾县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1677', '200', '临武县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1678', '200', '汝城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1679', '200', '桂东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1680', '200', '安仁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1681', '201', '雁峰区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1682', '201', '珠晖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1683', '201', '石鼓区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1684', '201', '蒸湘区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1685', '201', '南岳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1686', '201', '耒阳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1687', '201', '常宁市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1688', '201', '衡阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1689', '201', '衡南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1690', '201', '衡山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1691', '201', '衡东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1692', '201', '祁东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1693', '202', '鹤城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1694', '202', '靖州', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1695', '202', '麻阳', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1696', '202', '通道', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1697', '202', '新晃', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1698', '202', '芷江', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1699', '202', '沅陵县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1700', '202', '辰溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1701', '202', '溆浦县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1702', '202', '中方县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1703', '202', '会同县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1704', '202', '洪江市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1705', '203', '娄星区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1706', '203', '冷水江市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1707', '203', '涟源市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1708', '203', '双峰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1709', '203', '新化县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1710', '204', '城步', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1711', '204', '双清区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1712', '204', '大祥区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1713', '204', '北塔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1714', '204', '武冈市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1715', '204', '邵东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1716', '204', '新邵县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1717', '204', '邵阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1718', '204', '隆回县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1719', '204', '洞口县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1720', '204', '绥宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1721', '204', '新宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1722', '205', '岳塘区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1723', '205', '雨湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1724', '205', '湘乡市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1725', '205', '韶山市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1726', '205', '湘潭县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1727', '206', '吉首市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1728', '206', '泸溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1729', '206', '凤凰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1730', '206', '花垣县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1731', '206', '保靖县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1732', '206', '古丈县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1733', '206', '永顺县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1734', '206', '龙山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1735', '207', '赫山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1736', '207', '资阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1737', '207', '沅江市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1738', '207', '南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1739', '207', '桃江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1740', '207', '安化县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1741', '208', '江华', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1742', '208', '冷水滩区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1743', '208', '零陵区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1744', '208', '祁阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1745', '208', '东安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1746', '208', '双牌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1747', '208', '道县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1748', '208', '江永县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1749', '208', '宁远县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1750', '208', '蓝山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1751', '208', '新田县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1752', '209', '岳阳楼区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1753', '209', '君山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1754', '209', '云溪区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1755', '209', '汨罗市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1756', '209', '临湘市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1757', '209', '岳阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1758', '209', '华容县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1759', '209', '湘阴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1760', '209', '平江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1761', '210', '天元区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1762', '210', '荷塘区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1763', '210', '芦淞区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1764', '210', '石峰区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1765', '210', '醴陵市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1766', '210', '株洲县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1767', '210', '攸县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1768', '210', '茶陵县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1769', '210', '炎陵县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1770', '211', '朝阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1771', '211', '宽城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1772', '211', '二道区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1773', '211', '南关区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1774', '211', '绿园区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1775', '211', '双阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1776', '211', '净月潭开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1777', '211', '高新技术开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1778', '211', '经济技术开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1779', '211', '汽车产业开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1780', '211', '德惠市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1781', '211', '九台市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1782', '211', '榆树市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1783', '211', '农安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1784', '212', '船营区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1785', '212', '昌邑区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1786', '212', '龙潭区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1787', '212', '丰满区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1788', '212', '蛟河市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1789', '212', '桦甸市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1790', '212', '舒兰市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1791', '212', '磐石市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1792', '212', '永吉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1793', '213', '洮北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1794', '213', '洮南市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1795', '213', '大安市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1796', '213', '镇赉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1797', '213', '通榆县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1798', '214', '江源区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1799', '214', '八道江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1800', '214', '长白', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1801', '214', '临江市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1802', '214', '抚松县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1803', '214', '靖宇县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1804', '215', '龙山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1805', '215', '西安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1806', '215', '东丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1807', '215', '东辽县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1808', '216', '铁西区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1809', '216', '铁东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1810', '216', '伊通', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1811', '216', '公主岭市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1812', '216', '双辽市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1813', '216', '梨树县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1814', '217', '前郭尔罗斯', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1815', '217', '宁江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1816', '217', '长岭县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1817', '217', '乾安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1818', '217', '扶余县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1819', '218', '东昌区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1820', '218', '二道江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1821', '218', '梅河口市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1822', '218', '集安市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1823', '218', '通化县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1824', '218', '辉南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1825', '218', '柳河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1826', '219', '延吉市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1827', '219', '图们市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1828', '219', '敦化市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1829', '219', '珲春市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1830', '219', '龙井市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1831', '219', '和龙市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1832', '219', '安图县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1833', '219', '汪清县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1834', '220', '玄武区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1835', '220', '鼓楼区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1836', '220', '白下区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1837', '220', '建邺区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1838', '220', '秦淮区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1839', '220', '雨花台区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1840', '220', '下关区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1841', '220', '栖霞区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1842', '220', '浦口区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1843', '220', '江宁区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1844', '220', '六合区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1845', '220', '溧水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1846', '220', '高淳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1847', '221', '沧浪区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1848', '221', '金阊区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1849', '221', '平江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1850', '221', '虎丘区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1851', '221', '吴中区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1852', '221', '相城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1853', '221', '园区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1854', '221', '新区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1855', '221', '常熟市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1856', '221', '张家港市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1857', '221', '玉山镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1858', '221', '巴城镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1859', '221', '周市镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1860', '221', '陆家镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1861', '221', '花桥镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1862', '221', '淀山湖镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1863', '221', '张浦镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1864', '221', '周庄镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1865', '221', '千灯镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1866', '221', '锦溪镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1867', '221', '开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1868', '221', '吴江市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1869', '221', '太仓市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1870', '222', '崇安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1871', '222', '北塘区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1872', '222', '南长区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1873', '222', '锡山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1874', '222', '惠山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1875', '222', '滨湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1876', '222', '新区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1877', '222', '江阴市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1878', '222', '宜兴市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1879', '223', '天宁区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1880', '223', '钟楼区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1881', '223', '戚墅堰区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1882', '223', '郊区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1883', '223', '新北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1884', '223', '武进区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1885', '223', '溧阳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1886', '223', '金坛市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1887', '224', '清河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1888', '224', '清浦区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1889', '224', '楚州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1890', '224', '淮阴区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1891', '224', '涟水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1892', '224', '洪泽县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1893', '224', '盱眙县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1894', '224', '金湖县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1895', '225', '新浦区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1896', '225', '连云区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1897', '225', '海州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1898', '225', '赣榆县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1899', '225', '东海县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1900', '225', '灌云县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1901', '225', '灌南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1902', '226', '崇川区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1903', '226', '港闸区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1904', '226', '经济开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1905', '226', '启东市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1906', '226', '如皋市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1907', '226', '通州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1908', '226', '海门市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1909', '226', '海安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1910', '226', '如东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1911', '227', '宿城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1912', '227', '宿豫区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1913', '227', '宿豫县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1914', '227', '沭阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1915', '227', '泗阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1916', '227', '泗洪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1917', '228', '海陵区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1918', '228', '高港区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1919', '228', '兴化市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1920', '228', '靖江市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1921', '228', '泰兴市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1922', '228', '姜堰市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1923', '229', '云龙区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1924', '229', '鼓楼区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1925', '229', '九里区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1926', '229', '贾汪区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1927', '229', '泉山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1928', '229', '新沂市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1929', '229', '邳州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1930', '229', '丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1931', '229', '沛县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1932', '229', '铜山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1933', '229', '睢宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1934', '230', '城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1935', '230', '亭湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1936', '230', '盐都区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1937', '230', '盐都县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1938', '230', '东台市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1939', '230', '大丰市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1940', '230', '响水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1941', '230', '滨海县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1942', '230', '阜宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1943', '230', '射阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1944', '230', '建湖县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1945', '231', '广陵区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1946', '231', '维扬区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1947', '231', '邗江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1948', '231', '仪征市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1949', '231', '高邮市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1950', '231', '江都市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1951', '231', '宝应县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1952', '232', '京口区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1953', '232', '润州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1954', '232', '丹徒区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1955', '232', '丹阳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1956', '232', '扬中市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1957', '232', '句容市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1958', '233', '东湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1959', '233', '西湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1960', '233', '青云谱区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1961', '233', '湾里区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1962', '233', '青山湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1963', '233', '红谷滩新区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1964', '233', '昌北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1965', '233', '高新区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1966', '233', '南昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1967', '233', '新建县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1968', '233', '安义县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1969', '233', '进贤县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1970', '234', '临川区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1971', '234', '南城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1972', '234', '黎川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1973', '234', '南丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1974', '234', '崇仁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1975', '234', '乐安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1976', '234', '宜黄县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1977', '234', '金溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1978', '234', '资溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1979', '234', '东乡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1980', '234', '广昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1981', '235', '章贡区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1982', '235', '于都县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1983', '235', '瑞金市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1984', '235', '南康市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1985', '235', '赣县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1986', '235', '信丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1987', '235', '大余县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1988', '235', '上犹县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1989', '235', '崇义县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1990', '235', '安远县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1991', '235', '龙南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1992', '235', '定南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1993', '235', '全南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1994', '235', '宁都县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1995', '235', '兴国县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1996', '235', '会昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1997', '235', '寻乌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1998', '235', '石城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('1999', '236', '安福县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2000', '236', '吉州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2001', '236', '青原区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2002', '236', '井冈山市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2003', '236', '吉安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2004', '236', '吉水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2005', '236', '峡江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2006', '236', '新干县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2007', '236', '永丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2008', '236', '泰和县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2009', '236', '遂川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2010', '236', '万安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2011', '236', '永新县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2012', '237', '珠山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2013', '237', '昌江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2014', '237', '乐平市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2015', '237', '浮梁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2016', '238', '浔阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2017', '238', '庐山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2018', '238', '瑞昌市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2019', '238', '九江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2020', '238', '武宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2021', '238', '修水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2022', '238', '永修县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2023', '238', '德安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2024', '238', '星子县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2025', '238', '都昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2026', '238', '湖口县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2027', '238', '彭泽县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2028', '239', '安源区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2029', '239', '湘东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2030', '239', '莲花县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2031', '239', '芦溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2032', '239', '上栗县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2033', '240', '信州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2034', '240', '德兴市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2035', '240', '上饶县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2036', '240', '广丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2037', '240', '玉山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2038', '240', '铅山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2039', '240', '横峰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2040', '240', '弋阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2041', '240', '余干县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2042', '240', '波阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2043', '240', '万年县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2044', '240', '婺源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2045', '241', '渝水区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2046', '241', '分宜县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2047', '242', '袁州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2048', '242', '丰城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2049', '242', '樟树市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2050', '242', '高安市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2051', '242', '奉新县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2052', '242', '万载县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2053', '242', '上高县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2054', '242', '宜丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2055', '242', '靖安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2056', '242', '铜鼓县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2057', '243', '月湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2058', '243', '贵溪市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2059', '243', '余江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2060', '244', '沈河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2061', '244', '皇姑区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2062', '244', '和平区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2063', '244', '大东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2064', '244', '铁西区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2065', '244', '苏家屯区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2066', '244', '东陵区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2067', '244', '沈北新区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2068', '244', '于洪区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2069', '244', '浑南新区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2070', '244', '新民市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2071', '244', '辽中县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2072', '244', '康平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2073', '244', '法库县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2074', '245', '西岗区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2075', '245', '中山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2076', '245', '沙河口区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2077', '245', '甘井子区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2078', '245', '旅顺口区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2079', '245', '金州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2080', '245', '开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2081', '245', '瓦房店市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2082', '245', '普兰店市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2083', '245', '庄河市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2084', '245', '长海县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2085', '246', '铁东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2086', '246', '铁西区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2087', '246', '立山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2088', '246', '千山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2089', '246', '岫岩', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2090', '246', '海城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2091', '246', '台安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2092', '247', '本溪', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2093', '247', '平山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2094', '247', '明山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2095', '247', '溪湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2096', '247', '南芬区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2097', '247', '桓仁', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2098', '248', '双塔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2099', '248', '龙城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2100', '248', '喀喇沁左翼蒙古族自治县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2101', '248', '北票市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2102', '248', '凌源市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2103', '248', '朝阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2104', '248', '建平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2105', '249', '振兴区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2106', '249', '元宝区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2107', '249', '振安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2108', '249', '宽甸', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2109', '249', '东港市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2110', '249', '凤城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2111', '250', '顺城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2112', '250', '新抚区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2113', '250', '东洲区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2114', '250', '望花区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2115', '250', '清原', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2116', '250', '新宾', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2117', '250', '抚顺县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2118', '251', '阜新', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2119', '251', '海州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2120', '251', '新邱区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2121', '251', '太平区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2122', '251', '清河门区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2123', '251', '细河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2124', '251', '彰武县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2125', '252', '龙港区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2126', '252', '南票区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2127', '252', '连山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2128', '252', '兴城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2129', '252', '绥中县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2130', '252', '建昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2131', '253', '太和区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2132', '253', '古塔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2133', '253', '凌河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2134', '253', '凌海市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2135', '253', '北镇市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2136', '253', '黑山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2137', '253', '义县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2138', '254', '白塔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2139', '254', '文圣区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2140', '254', '宏伟区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2141', '254', '太子河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2142', '254', '弓长岭区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2143', '254', '灯塔市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2144', '254', '辽阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2145', '255', '双台子区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2146', '255', '兴隆台区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2147', '255', '大洼县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2148', '255', '盘山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2149', '256', '银州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2150', '256', '清河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2151', '256', '调兵山市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2152', '256', '开原市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2153', '256', '铁岭县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2154', '256', '西丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2155', '256', '昌图县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2156', '257', '站前区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2157', '257', '西市区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2158', '257', '鲅鱼圈区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2159', '257', '老边区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2160', '257', '盖州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2161', '257', '大石桥市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2162', '258', '回民区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2163', '258', '玉泉区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2164', '258', '新城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2165', '258', '赛罕区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2166', '258', '清水河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2167', '258', '土默特左旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2168', '258', '托克托县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2169', '258', '和林格尔县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2170', '258', '武川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2171', '259', '阿拉善左旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2172', '259', '阿拉善右旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2173', '259', '额济纳旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2174', '260', '临河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2175', '260', '五原县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2176', '260', '磴口县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2177', '260', '乌拉特前旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2178', '260', '乌拉特中旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2179', '260', '乌拉特后旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2180', '260', '杭锦后旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2181', '261', '昆都仑区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2182', '261', '青山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2183', '261', '东河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2184', '261', '九原区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2185', '261', '石拐区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2186', '261', '白云矿区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2187', '261', '土默特右旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2188', '261', '固阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2189', '261', '达尔罕茂明安联合旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2190', '262', '红山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2191', '262', '元宝山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2192', '262', '松山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2193', '262', '阿鲁科尔沁旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2194', '262', '巴林左旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2195', '262', '巴林右旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2196', '262', '林西县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2197', '262', '克什克腾旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2198', '262', '翁牛特旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2199', '262', '喀喇沁旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2200', '262', '宁城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2201', '262', '敖汉旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2202', '263', '东胜区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2203', '263', '达拉特旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2204', '263', '准格尔旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2205', '263', '鄂托克前旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2206', '263', '鄂托克旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2207', '263', '杭锦旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2208', '263', '乌审旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2209', '263', '伊金霍洛旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2210', '264', '海拉尔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2211', '264', '莫力达瓦', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2212', '264', '满洲里市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2213', '264', '牙克石市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2214', '264', '扎兰屯市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2215', '264', '额尔古纳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2216', '264', '根河市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2217', '264', '阿荣旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2218', '264', '鄂伦春自治旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2219', '264', '鄂温克族自治旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2220', '264', '陈巴尔虎旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2221', '264', '新巴尔虎左旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2222', '264', '新巴尔虎右旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2223', '265', '科尔沁区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2224', '265', '霍林郭勒市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2225', '265', '科尔沁左翼中旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2226', '265', '科尔沁左翼后旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2227', '265', '开鲁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2228', '265', '库伦旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2229', '265', '奈曼旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2230', '265', '扎鲁特旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2231', '266', '海勃湾区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2232', '266', '乌达区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2233', '266', '海南区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2234', '267', '化德县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2235', '267', '集宁区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2236', '267', '丰镇市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2237', '267', '卓资县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2238', '267', '商都县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2239', '267', '兴和县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2240', '267', '凉城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2241', '267', '察哈尔右翼前旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2242', '267', '察哈尔右翼中旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2243', '267', '察哈尔右翼后旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2244', '267', '四子王旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2245', '268', '二连浩特市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2246', '268', '锡林浩特市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2247', '268', '阿巴嘎旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2248', '268', '苏尼特左旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2249', '268', '苏尼特右旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2250', '268', '东乌珠穆沁旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2251', '268', '西乌珠穆沁旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2252', '268', '太仆寺旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2253', '268', '镶黄旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2254', '268', '正镶白旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2255', '268', '正蓝旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2256', '268', '多伦县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2257', '269', '乌兰浩特市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2258', '269', '阿尔山市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2259', '269', '科尔沁右翼前旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2260', '269', '科尔沁右翼中旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2261', '269', '扎赉特旗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2262', '269', '突泉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2263', '270', '西夏区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2264', '270', '金凤区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2265', '270', '兴庆区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2266', '270', '灵武市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2267', '270', '永宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2268', '270', '贺兰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2269', '271', '原州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2270', '271', '海原县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2271', '271', '西吉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2272', '271', '隆德县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2273', '271', '泾源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2274', '271', '彭阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2275', '272', '惠农县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2276', '272', '大武口区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2277', '272', '惠农区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2278', '272', '陶乐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2279', '272', '平罗县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2280', '273', '利通区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2281', '273', '中卫县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2282', '273', '青铜峡市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2283', '273', '中宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2284', '273', '盐池县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2285', '273', '同心县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2286', '274', '沙坡头区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2287', '274', '海原县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2288', '274', '中宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2289', '275', '城中区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2290', '275', '城东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2291', '275', '城西区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2292', '275', '城北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2293', '275', '湟中县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2294', '275', '湟源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2295', '275', '大通', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2296', '276', '玛沁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2297', '276', '班玛县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2298', '276', '甘德县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2299', '276', '达日县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2300', '276', '久治县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2301', '276', '玛多县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2302', '277', '海晏县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2303', '277', '祁连县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2304', '277', '刚察县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2305', '277', '门源', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2306', '278', '平安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2307', '278', '乐都县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2308', '278', '民和', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2309', '278', '互助', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2310', '278', '化隆', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2311', '278', '循化', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2312', '279', '共和县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2313', '279', '同德县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2314', '279', '贵德县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2315', '279', '兴海县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2316', '279', '贵南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2317', '280', '德令哈市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2318', '280', '格尔木市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2319', '280', '乌兰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2320', '280', '都兰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2321', '280', '天峻县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2322', '281', '同仁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2323', '281', '尖扎县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2324', '281', '泽库县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2325', '281', '河南蒙古族自治县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2326', '282', '玉树县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2327', '282', '杂多县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2328', '282', '称多县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2329', '282', '治多县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2330', '282', '囊谦县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2331', '282', '曲麻莱县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2332', '283', '市中区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2333', '283', '历下区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2334', '283', '天桥区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2335', '283', '槐荫区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2336', '283', '历城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2337', '283', '长清区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2338', '283', '章丘市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2339', '283', '平阴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2340', '283', '济阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2341', '283', '商河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2342', '284', '市南区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2343', '284', '市北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2344', '284', '城阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2345', '284', '四方区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2346', '284', '李沧区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2347', '284', '黄岛区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2348', '284', '崂山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2349', '284', '胶州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2350', '284', '即墨市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2351', '284', '平度市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2352', '284', '胶南市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2353', '284', '莱西市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2354', '285', '滨城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2355', '285', '惠民县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2356', '285', '阳信县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2357', '285', '无棣县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2358', '285', '沾化县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2359', '285', '博兴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2360', '285', '邹平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2361', '286', '德城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2362', '286', '陵县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2363', '286', '乐陵市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2364', '286', '禹城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2365', '286', '宁津县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2366', '286', '庆云县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2367', '286', '临邑县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2368', '286', '齐河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2369', '286', '平原县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2370', '286', '夏津县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2371', '286', '武城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2372', '287', '东营区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2373', '287', '河口区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2374', '287', '垦利县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2375', '287', '利津县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2376', '287', '广饶县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2377', '288', '牡丹区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2378', '288', '曹县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2379', '288', '单县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2380', '288', '成武县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2381', '288', '巨野县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2382', '288', '郓城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2383', '288', '鄄城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2384', '288', '定陶县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2385', '288', '东明县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2386', '289', '市中区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2387', '289', '任城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2388', '289', '曲阜市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2389', '289', '兖州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2390', '289', '邹城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2391', '289', '微山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2392', '289', '鱼台县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2393', '289', '金乡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2394', '289', '嘉祥县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2395', '289', '汶上县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2396', '289', '泗水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2397', '289', '梁山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2398', '290', '莱城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2399', '290', '钢城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2400', '291', '东昌府区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2401', '291', '临清市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2402', '291', '阳谷县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2403', '291', '莘县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2404', '291', '茌平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2405', '291', '东阿县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2406', '291', '冠县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2407', '291', '高唐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2408', '292', '兰山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2409', '292', '罗庄区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2410', '292', '河东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2411', '292', '沂南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2412', '292', '郯城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2413', '292', '沂水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2414', '292', '苍山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2415', '292', '费县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2416', '292', '平邑县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2417', '292', '莒南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2418', '292', '蒙阴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2419', '292', '临沭县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2420', '293', '东港区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2421', '293', '岚山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2422', '293', '五莲县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2423', '293', '莒县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2424', '294', '泰山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2425', '294', '岱岳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2426', '294', '新泰市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2427', '294', '肥城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2428', '294', '宁阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2429', '294', '东平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2430', '295', '荣成市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2431', '295', '乳山市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2432', '295', '环翠区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2433', '295', '文登市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2434', '296', '潍城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2435', '296', '寒亭区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2436', '296', '坊子区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2437', '296', '奎文区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2438', '296', '青州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2439', '296', '诸城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2440', '296', '寿光市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2441', '296', '安丘市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2442', '296', '高密市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2443', '296', '昌邑市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2444', '296', '临朐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2445', '296', '昌乐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2446', '297', '芝罘区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2447', '297', '福山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2448', '297', '牟平区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2449', '297', '莱山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2450', '297', '开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2451', '297', '龙口市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2452', '297', '莱阳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2453', '297', '莱州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2454', '297', '蓬莱市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2455', '297', '招远市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2456', '297', '栖霞市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2457', '297', '海阳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2458', '297', '长岛县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2459', '298', '市中区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2460', '298', '山亭区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2461', '298', '峄城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2462', '298', '台儿庄区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2463', '298', '薛城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2464', '298', '滕州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2465', '299', '张店区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2466', '299', '临淄区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2467', '299', '淄川区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2468', '299', '博山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2469', '299', '周村区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2470', '299', '桓台县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2471', '299', '高青县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2472', '299', '沂源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2473', '300', '杏花岭区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2474', '300', '小店区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2475', '300', '迎泽区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2476', '300', '尖草坪区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2477', '300', '万柏林区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2478', '300', '晋源区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2479', '300', '高新开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2480', '300', '民营经济开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2481', '300', '经济技术开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2482', '300', '清徐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2483', '300', '阳曲县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2484', '300', '娄烦县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2485', '300', '古交市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2486', '301', '城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2487', '301', '郊区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2488', '301', '沁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2489', '301', '潞城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2490', '301', '长治县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2491', '301', '襄垣县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2492', '301', '屯留县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2493', '301', '平顺县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2494', '301', '黎城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2495', '301', '壶关县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2496', '301', '长子县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2497', '301', '武乡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2498', '301', '沁源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2499', '302', '城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2500', '302', '矿区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2501', '302', '南郊区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2502', '302', '新荣区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2503', '302', '阳高县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2504', '302', '天镇县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2505', '302', '广灵县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2506', '302', '灵丘县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2507', '302', '浑源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2508', '302', '左云县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2509', '302', '大同县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2510', '303', '城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2511', '303', '高平市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2512', '303', '沁水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2513', '303', '阳城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2514', '303', '陵川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2515', '303', '泽州县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2516', '304', '榆次区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2517', '304', '介休市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2518', '304', '榆社县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2519', '304', '左权县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2520', '304', '和顺县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2521', '304', '昔阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2522', '304', '寿阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2523', '304', '太谷县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2524', '304', '祁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2525', '304', '平遥县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2526', '304', '灵石县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2527', '305', '尧都区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2528', '305', '侯马市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2529', '305', '霍州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2530', '305', '曲沃县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2531', '305', '翼城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2532', '305', '襄汾县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2533', '305', '洪洞县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2534', '305', '吉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2535', '305', '安泽县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2536', '305', '浮山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2537', '305', '古县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2538', '305', '乡宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2539', '305', '大宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2540', '305', '隰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2541', '305', '永和县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2542', '305', '蒲县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2543', '305', '汾西县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2544', '306', '离石市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2545', '306', '离石区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2546', '306', '孝义市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2547', '306', '汾阳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2548', '306', '文水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2549', '306', '交城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2550', '306', '兴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2551', '306', '临县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2552', '306', '柳林县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2553', '306', '石楼县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2554', '306', '岚县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2555', '306', '方山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2556', '306', '中阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2557', '306', '交口县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2558', '307', '朔城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2559', '307', '平鲁区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2560', '307', '山阴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2561', '307', '应县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2562', '307', '右玉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2563', '307', '怀仁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2564', '308', '忻府区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2565', '308', '原平市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2566', '308', '定襄县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2567', '308', '五台县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2568', '308', '代县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2569', '308', '繁峙县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2570', '308', '宁武县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2571', '308', '静乐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2572', '308', '神池县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2573', '308', '五寨县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2574', '308', '岢岚县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2575', '308', '河曲县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2576', '308', '保德县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2577', '308', '偏关县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2578', '309', '城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2579', '309', '矿区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2580', '309', '郊区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2581', '309', '平定县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2582', '309', '盂县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2583', '310', '盐湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2584', '310', '永济市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2585', '310', '河津市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2586', '310', '临猗县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2587', '310', '万荣县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2588', '310', '闻喜县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2589', '310', '稷山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2590', '310', '新绛县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2591', '310', '绛县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2592', '310', '垣曲县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2593', '310', '夏县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2594', '310', '平陆县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2595', '310', '芮城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2596', '311', '莲湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2597', '311', '新城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2598', '311', '碑林区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2599', '311', '雁塔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2600', '311', '灞桥区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2601', '311', '未央区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2602', '311', '阎良区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2603', '311', '临潼区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2604', '311', '长安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2605', '311', '蓝田县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2606', '311', '周至县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2607', '311', '户县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2608', '311', '高陵县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2609', '312', '汉滨区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2610', '312', '汉阴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2611', '312', '石泉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2612', '312', '宁陕县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2613', '312', '紫阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2614', '312', '岚皋县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2615', '312', '平利县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2616', '312', '镇坪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2617', '312', '旬阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2618', '312', '白河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2619', '313', '陈仓区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2620', '313', '渭滨区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2621', '313', '金台区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2622', '313', '凤翔县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2623', '313', '岐山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2624', '313', '扶风县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2625', '313', '眉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2626', '313', '陇县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2627', '313', '千阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2628', '313', '麟游县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2629', '313', '凤县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2630', '313', '太白县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2631', '314', '汉台区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2632', '314', '南郑县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2633', '314', '城固县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2634', '314', '洋县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2635', '314', '西乡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2636', '314', '勉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2637', '314', '宁强县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2638', '314', '略阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2639', '314', '镇巴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2640', '314', '留坝县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2641', '314', '佛坪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2642', '315', '商州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2643', '315', '洛南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2644', '315', '丹凤县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2645', '315', '商南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2646', '315', '山阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2647', '315', '镇安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2648', '315', '柞水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2649', '316', '耀州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2650', '316', '王益区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2651', '316', '印台区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2652', '316', '宜君县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2653', '317', '临渭区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2654', '317', '韩城市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2655', '317', '华阴市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2656', '317', '华县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2657', '317', '潼关县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2658', '317', '大荔县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2659', '317', '合阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2660', '317', '澄城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2661', '317', '蒲城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2662', '317', '白水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2663', '317', '富平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2664', '318', '秦都区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2665', '318', '渭城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2666', '318', '杨陵区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2667', '318', '兴平市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2668', '318', '三原县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2669', '318', '泾阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2670', '318', '乾县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2671', '318', '礼泉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2672', '318', '永寿县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2673', '318', '彬县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2674', '318', '长武县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2675', '318', '旬邑县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2676', '318', '淳化县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2677', '318', '武功县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2678', '319', '吴起县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2679', '319', '宝塔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2680', '319', '延长县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2681', '319', '延川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2682', '319', '子长县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2683', '319', '安塞县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2684', '319', '志丹县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2685', '319', '甘泉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2686', '319', '富县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2687', '319', '洛川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2688', '319', '宜川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2689', '319', '黄龙县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2690', '319', '黄陵县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2691', '320', '榆阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2692', '320', '神木县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2693', '320', '府谷县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2694', '320', '横山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2695', '320', '靖边县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2696', '320', '定边县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2697', '320', '绥德县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2698', '320', '米脂县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2699', '320', '佳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2700', '320', '吴堡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2701', '320', '清涧县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2702', '320', '子洲县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2703', '321', '长宁区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2704', '321', '闸北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2705', '321', '闵行区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2706', '321', '徐汇区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2707', '321', '浦东新区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2708', '321', '杨浦区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2709', '321', '普陀区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2710', '321', '静安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2711', '321', '卢湾区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2712', '321', '虹口区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2713', '321', '黄浦区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2714', '321', '南汇区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2715', '321', '松江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2716', '321', '嘉定区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2717', '321', '宝山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2718', '321', '青浦区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2719', '321', '金山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2720', '321', '奉贤区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2721', '321', '崇明县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2722', '322', '青羊区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2723', '322', '锦江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2724', '322', '金牛区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2725', '322', '武侯区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2726', '322', '成华区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2727', '322', '龙泉驿区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2728', '322', '青白江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2729', '322', '新都区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2730', '322', '温江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2731', '322', '高新区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2732', '322', '高新西区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2733', '322', '都江堰市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2734', '322', '彭州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2735', '322', '邛崃市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2736', '322', '崇州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2737', '322', '金堂县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2738', '322', '双流县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2739', '322', '郫县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2740', '322', '大邑县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2741', '322', '蒲江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2742', '322', '新津县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2743', '322', '都江堰市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2744', '322', '彭州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2745', '322', '邛崃市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2746', '322', '崇州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2747', '322', '金堂县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2748', '322', '双流县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2749', '322', '郫县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2750', '322', '大邑县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2751', '322', '蒲江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2752', '322', '新津县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2753', '323', '涪城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2754', '323', '游仙区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2755', '323', '江油市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2756', '323', '盐亭县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2757', '323', '三台县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2758', '323', '平武县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2759', '323', '安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2760', '323', '梓潼县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2761', '323', '北川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2762', '324', '马尔康县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2763', '324', '汶川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2764', '324', '理县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2765', '324', '茂县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2766', '324', '松潘县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2767', '324', '九寨沟县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2768', '324', '金川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2769', '324', '小金县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2770', '324', '黑水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2771', '324', '壤塘县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2772', '324', '阿坝县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2773', '324', '若尔盖县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2774', '324', '红原县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2775', '325', '巴州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2776', '325', '通江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2777', '325', '南江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2778', '325', '平昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2779', '326', '通川区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2780', '326', '万源市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2781', '326', '达县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2782', '326', '宣汉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2783', '326', '开江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2784', '326', '大竹县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2785', '326', '渠县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2786', '327', '旌阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2787', '327', '广汉市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2788', '327', '什邡市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2789', '327', '绵竹市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2790', '327', '罗江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2791', '327', '中江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2792', '328', '康定县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2793', '328', '丹巴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2794', '328', '泸定县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2795', '328', '炉霍县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2796', '328', '九龙县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2797', '328', '甘孜县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2798', '328', '雅江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2799', '328', '新龙县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2800', '328', '道孚县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2801', '328', '白玉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2802', '328', '理塘县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2803', '328', '德格县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2804', '328', '乡城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2805', '328', '石渠县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2806', '328', '稻城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2807', '328', '色达县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2808', '328', '巴塘县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2809', '328', '得荣县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2810', '329', '广安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2811', '329', '华蓥市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2812', '329', '岳池县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2813', '329', '武胜县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2814', '329', '邻水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2815', '330', '利州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2816', '330', '元坝区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2817', '330', '朝天区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2818', '330', '旺苍县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2819', '330', '青川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2820', '330', '剑阁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2821', '330', '苍溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2822', '331', '峨眉山市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2823', '331', '乐山市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2824', '331', '犍为县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2825', '331', '井研县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2826', '331', '夹江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2827', '331', '沐川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2828', '331', '峨边', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2829', '331', '马边', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2830', '332', '西昌市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2831', '332', '盐源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2832', '332', '德昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2833', '332', '会理县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2834', '332', '会东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2835', '332', '宁南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2836', '332', '普格县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2837', '332', '布拖县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2838', '332', '金阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2839', '332', '昭觉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2840', '332', '喜德县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2841', '332', '冕宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2842', '332', '越西县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2843', '332', '甘洛县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2844', '332', '美姑县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2845', '332', '雷波县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2846', '332', '木里', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2847', '333', '东坡区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2848', '333', '仁寿县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2849', '333', '彭山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2850', '333', '洪雅县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2851', '333', '丹棱县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2852', '333', '青神县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2853', '334', '阆中市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2854', '334', '南部县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2855', '334', '营山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2856', '334', '蓬安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2857', '334', '仪陇县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2858', '334', '顺庆区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2859', '334', '高坪区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2860', '334', '嘉陵区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2861', '334', '西充县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2862', '335', '市中区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2863', '335', '东兴区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2864', '335', '威远县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2865', '335', '资中县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2866', '335', '隆昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2867', '336', '东  区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2868', '336', '西  区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2869', '336', '仁和区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2870', '336', '米易县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2871', '336', '盐边县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2872', '337', '船山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2873', '337', '安居区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2874', '337', '蓬溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2875', '337', '射洪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2876', '337', '大英县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2877', '338', '雨城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2878', '338', '名山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2879', '338', '荥经县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2880', '338', '汉源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2881', '338', '石棉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2882', '338', '天全县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2883', '338', '芦山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2884', '338', '宝兴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2885', '339', '翠屏区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2886', '339', '宜宾县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2887', '339', '南溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2888', '339', '江安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2889', '339', '长宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2890', '339', '高县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2891', '339', '珙县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2892', '339', '筠连县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2893', '339', '兴文县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2894', '339', '屏山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2895', '340', '雁江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2896', '340', '简阳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2897', '340', '安岳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2898', '340', '乐至县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2899', '341', '大安区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2900', '341', '自流井区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2901', '341', '贡井区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2902', '341', '沿滩区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2903', '341', '荣县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2904', '341', '富顺县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2905', '342', '江阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2906', '342', '纳溪区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2907', '342', '龙马潭区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2908', '342', '泸县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2909', '342', '合江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2910', '342', '叙永县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2911', '342', '古蔺县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2912', '343', '和平区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2913', '343', '河西区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2914', '343', '南开区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2915', '343', '河北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2916', '343', '河东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2917', '343', '红桥区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2918', '343', '东丽区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2919', '343', '津南区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2920', '343', '西青区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2921', '343', '北辰区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2922', '343', '塘沽区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2923', '343', '汉沽区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2924', '343', '大港区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2925', '343', '武清区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2926', '343', '宝坻区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2927', '343', '经济开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2928', '343', '宁河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2929', '343', '静海县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2930', '343', '蓟县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2931', '344', '城关区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2932', '344', '林周县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2933', '344', '当雄县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2934', '344', '尼木县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2935', '344', '曲水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2936', '344', '堆龙德庆县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2937', '344', '达孜县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2938', '344', '墨竹工卡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2939', '345', '噶尔县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2940', '345', '普兰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2941', '345', '札达县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2942', '345', '日土县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2943', '345', '革吉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2944', '345', '改则县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2945', '345', '措勤县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2946', '346', '昌都县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2947', '346', '江达县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2948', '346', '贡觉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2949', '346', '类乌齐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2950', '346', '丁青县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2951', '346', '察雅县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2952', '346', '八宿县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2953', '346', '左贡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2954', '346', '芒康县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2955', '346', '洛隆县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2956', '346', '边坝县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2957', '347', '林芝县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2958', '347', '工布江达县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2959', '347', '米林县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2960', '347', '墨脱县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2961', '347', '波密县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2962', '347', '察隅县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2963', '347', '朗县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2964', '348', '那曲县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2965', '348', '嘉黎县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2966', '348', '比如县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2967', '348', '聂荣县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2968', '348', '安多县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2969', '348', '申扎县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2970', '348', '索县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2971', '348', '班戈县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2972', '348', '巴青县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2973', '348', '尼玛县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2974', '349', '日喀则市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2975', '349', '南木林县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2976', '349', '江孜县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2977', '349', '定日县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2978', '349', '萨迦县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2979', '349', '拉孜县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2980', '349', '昂仁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2981', '349', '谢通门县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2982', '349', '白朗县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2983', '349', '仁布县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2984', '349', '康马县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2985', '349', '定结县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2986', '349', '仲巴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2987', '349', '亚东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2988', '349', '吉隆县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2989', '349', '聂拉木县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2990', '349', '萨嘎县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2991', '349', '岗巴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2992', '350', '乃东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2993', '350', '扎囊县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2994', '350', '贡嘎县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2995', '350', '桑日县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2996', '350', '琼结县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2997', '350', '曲松县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2998', '350', '措美县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('2999', '350', '洛扎县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3000', '350', '加查县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3001', '350', '隆子县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3002', '350', '错那县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3003', '350', '浪卡子县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3004', '351', '天山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3005', '351', '沙依巴克区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3006', '351', '新市区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3007', '351', '水磨沟区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3008', '351', '头屯河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3009', '351', '达坂城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3010', '351', '米东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3011', '351', '乌鲁木齐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3012', '352', '阿克苏市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3013', '352', '温宿县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3014', '352', '库车县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3015', '352', '沙雅县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3016', '352', '新和县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3017', '352', '拜城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3018', '352', '乌什县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3019', '352', '阿瓦提县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3020', '352', '柯坪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3021', '353', '阿拉尔市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3022', '354', '库尔勒市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3023', '354', '轮台县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3024', '354', '尉犁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3025', '354', '若羌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3026', '354', '且末县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3027', '354', '焉耆', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3028', '354', '和静县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3029', '354', '和硕县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3030', '354', '博湖县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3031', '355', '博乐市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3032', '355', '精河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3033', '355', '温泉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3034', '356', '呼图壁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3035', '356', '米泉市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3036', '356', '昌吉市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3037', '356', '阜康市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3038', '356', '玛纳斯县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3039', '356', '奇台县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3040', '356', '吉木萨尔县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3041', '356', '木垒', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3042', '357', '哈密市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3043', '357', '伊吾县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3044', '357', '巴里坤', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3045', '358', '和田市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3046', '358', '和田县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3047', '358', '墨玉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3048', '358', '皮山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3049', '358', '洛浦县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3050', '358', '策勒县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3051', '358', '于田县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3052', '358', '民丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3053', '359', '喀什市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3054', '359', '疏附县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3055', '359', '疏勒县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3056', '359', '英吉沙县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3057', '359', '泽普县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3058', '359', '莎车县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3059', '359', '叶城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3060', '359', '麦盖提县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3061', '359', '岳普湖县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3062', '359', '伽师县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3063', '359', '巴楚县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3064', '359', '塔什库尔干', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3065', '360', '克拉玛依市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3066', '361', '阿图什市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3067', '361', '阿克陶县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3068', '361', '阿合奇县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3069', '361', '乌恰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3070', '362', '石河子市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3071', '363', '图木舒克市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3072', '364', '吐鲁番市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3073', '364', '鄯善县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3074', '364', '托克逊县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3075', '365', '五家渠市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3076', '366', '阿勒泰市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3077', '366', '布克赛尔', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3078', '366', '伊宁市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3079', '366', '布尔津县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3080', '366', '奎屯市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3081', '366', '乌苏市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3082', '366', '额敏县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3083', '366', '富蕴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3084', '366', '伊宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3085', '366', '福海县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3086', '366', '霍城县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3087', '366', '沙湾县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3088', '366', '巩留县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3089', '366', '哈巴河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3090', '366', '托里县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3091', '366', '青河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3092', '366', '新源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3093', '366', '裕民县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3094', '366', '和布克赛尔', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3095', '366', '吉木乃县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3096', '366', '昭苏县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3097', '366', '特克斯县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3098', '366', '尼勒克县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3099', '366', '察布查尔', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3100', '367', '盘龙区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3101', '367', '五华区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3102', '367', '官渡区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3103', '367', '西山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3104', '367', '东川区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3105', '367', '安宁市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3106', '367', '呈贡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3107', '367', '晋宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3108', '367', '富民县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3109', '367', '宜良县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3110', '367', '嵩明县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3111', '367', '石林县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3112', '367', '禄劝', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3113', '367', '寻甸', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3114', '368', '兰坪', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3115', '368', '泸水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3116', '368', '福贡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3117', '368', '贡山', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3118', '369', '宁洱', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3119', '369', '思茅区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3120', '369', '墨江', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3121', '369', '景东', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3122', '369', '景谷', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3123', '369', '镇沅', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3124', '369', '江城', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3125', '369', '孟连', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3126', '369', '澜沧', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3127', '369', '西盟', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3128', '370', '古城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3129', '370', '宁蒗', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3130', '370', '玉龙', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3131', '370', '永胜县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3132', '370', '华坪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3133', '371', '隆阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3134', '371', '施甸县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3135', '371', '腾冲县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3136', '371', '龙陵县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3137', '371', '昌宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3138', '372', '楚雄市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3139', '372', '双柏县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3140', '372', '牟定县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3141', '372', '南华县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3142', '372', '姚安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3143', '372', '大姚县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3144', '372', '永仁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3145', '372', '元谋县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3146', '372', '武定县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3147', '372', '禄丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3148', '373', '大理市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3149', '373', '祥云县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3150', '373', '宾川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3151', '373', '弥渡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3152', '373', '永平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3153', '373', '云龙县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3154', '373', '洱源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3155', '373', '剑川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3156', '373', '鹤庆县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3157', '373', '漾濞', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3158', '373', '南涧', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3159', '373', '巍山', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3160', '374', '潞西市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3161', '374', '瑞丽市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3162', '374', '梁河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3163', '374', '盈江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3164', '374', '陇川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3165', '375', '香格里拉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3166', '375', '德钦县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3167', '375', '维西', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3168', '376', '泸西县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3169', '376', '蒙自县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3170', '376', '个旧市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3171', '376', '开远市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3172', '376', '绿春县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3173', '376', '建水县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3174', '376', '石屏县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3175', '376', '弥勒县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3176', '376', '元阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3177', '376', '红河县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3178', '376', '金平', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3179', '376', '河口', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3180', '376', '屏边', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3181', '377', '临翔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3182', '377', '凤庆县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3183', '377', '云县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3184', '377', '永德县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3185', '377', '镇康县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3186', '377', '双江', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3187', '377', '耿马', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3188', '377', '沧源', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3189', '378', '麒麟区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3190', '378', '宣威市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3191', '378', '马龙县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3192', '378', '陆良县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3193', '378', '师宗县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3194', '378', '罗平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3195', '378', '富源县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3196', '378', '会泽县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3197', '378', '沾益县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3198', '379', '文山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3199', '379', '砚山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3200', '379', '西畴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3201', '379', '麻栗坡县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3202', '379', '马关县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3203', '379', '丘北县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3204', '379', '广南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3205', '379', '富宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3206', '380', '景洪市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3207', '380', '勐海县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3208', '380', '勐腊县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3209', '381', '红塔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3210', '381', '江川县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3211', '381', '澄江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3212', '381', '通海县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3213', '381', '华宁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3214', '381', '易门县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3215', '381', '峨山', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3216', '381', '新平', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3217', '381', '元江', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3218', '382', '昭阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3219', '382', '鲁甸县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3220', '382', '巧家县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3221', '382', '盐津县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3222', '382', '大关县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3223', '382', '永善县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3224', '382', '绥江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3225', '382', '镇雄县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3226', '382', '彝良县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3227', '382', '威信县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3228', '382', '水富县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3229', '383', '西湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3230', '383', '上城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3231', '383', '下城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3232', '383', '拱墅区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3233', '383', '滨江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3234', '383', '江干区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3235', '383', '萧山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3236', '383', '余杭区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3237', '383', '市郊', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3238', '383', '建德市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3239', '383', '富阳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3240', '383', '临安市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3241', '383', '桐庐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3242', '383', '淳安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3243', '384', '吴兴区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3244', '384', '南浔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3245', '384', '德清县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3246', '384', '长兴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3247', '384', '安吉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3248', '385', '南湖区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3249', '385', '秀洲区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3250', '385', '海宁市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3251', '385', '嘉善县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3252', '385', '平湖市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3253', '385', '桐乡市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3254', '385', '海盐县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3255', '386', '婺城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3256', '386', '金东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3257', '386', '兰溪市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3258', '386', '市区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3259', '386', '佛堂镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3260', '386', '上溪镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3261', '386', '义亭镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3262', '386', '大陈镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3263', '386', '苏溪镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3264', '386', '赤岸镇', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3265', '386', '东阳市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3266', '386', '永康市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3267', '386', '武义县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3268', '386', '浦江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3269', '386', '磐安县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3270', '387', '莲都区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3271', '387', '龙泉市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3272', '387', '青田县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3273', '387', '缙云县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3274', '387', '遂昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3275', '387', '松阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3276', '387', '云和县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3277', '387', '庆元县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3278', '387', '景宁', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3279', '388', '海曙区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3280', '388', '江东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3281', '388', '江北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3282', '388', '镇海区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3283', '388', '北仑区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3284', '388', '鄞州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3285', '388', '余姚市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3286', '388', '慈溪市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3287', '388', '奉化市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3288', '388', '象山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3289', '388', '宁海县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3290', '389', '越城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3291', '389', '上虞市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3292', '389', '嵊州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3293', '389', '绍兴县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3294', '389', '新昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3295', '389', '诸暨市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3296', '390', '椒江区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3297', '390', '黄岩区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3298', '390', '路桥区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3299', '390', '温岭市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3300', '390', '临海市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3301', '390', '玉环县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3302', '390', '三门县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3303', '390', '天台县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3304', '390', '仙居县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3305', '391', '鹿城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3306', '391', '龙湾区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3307', '391', '瓯海区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3308', '391', '瑞安市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3309', '391', '乐清市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3310', '391', '洞头县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3311', '391', '永嘉县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3312', '391', '平阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3313', '391', '苍南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3314', '391', '文成县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3315', '391', '泰顺县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3316', '392', '定海区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3317', '392', '普陀区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3318', '392', '岱山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3319', '392', '嵊泗县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3320', '393', '衢州市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3321', '393', '江山市', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3322', '393', '常山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3323', '393', '开化县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3324', '393', '龙游县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3325', '394', '合川区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3326', '394', '江津区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3327', '394', '南川区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3328', '394', '永川区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3329', '394', '南岸区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3330', '394', '渝北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3331', '394', '万盛区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3332', '394', '大渡口区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3333', '394', '万州区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3334', '394', '北碚区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3335', '394', '沙坪坝区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3336', '394', '巴南区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3337', '394', '涪陵区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3338', '394', '江北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3339', '394', '九龙坡区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3340', '394', '渝中区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3341', '394', '黔江开发区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3342', '394', '长寿区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3343', '394', '双桥区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3344', '394', '綦江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3345', '394', '潼南县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3346', '394', '铜梁县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3347', '394', '大足县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3348', '394', '荣昌县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3349', '394', '璧山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3350', '394', '垫江县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3351', '394', '武隆县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3352', '394', '丰都县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3353', '394', '城口县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3354', '394', '梁平县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3355', '394', '开县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3356', '394', '巫溪县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3357', '394', '巫山县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3358', '394', '奉节县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3359', '394', '云阳县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3360', '394', '忠县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3361', '394', '石柱', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3362', '394', '彭水', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3363', '394', '酉阳', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3364', '394', '秀山', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3365', '395', '沙田区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3366', '395', '东区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3367', '395', '观塘区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3368', '395', '黄大仙区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3369', '395', '九龙城区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3370', '395', '屯门区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3371', '395', '葵青区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3372', '395', '元朗区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3373', '395', '深水埗区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3374', '395', '西贡区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3375', '395', '大埔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3376', '395', '湾仔区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3377', '395', '油尖旺区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3378', '395', '北区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3379', '395', '南区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3380', '395', '荃湾区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3381', '395', '中西区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3382', '395', '离岛区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3383', '396', '澳门', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3384', '397', '台北', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3385', '397', '高雄', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3386', '397', '基隆', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3387', '397', '台中', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3388', '397', '台南', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3389', '397', '新竹', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3390', '397', '嘉义', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3391', '397', '宜兰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3392', '397', '桃园县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3393', '397', '苗栗县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3394', '397', '彰化县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3395', '397', '南投县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3396', '397', '云林县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3397', '397', '屏东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3398', '397', '台东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3399', '397', '花莲县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3400', '397', '澎湖县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3401', '3', '合肥', '2', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3402', '3401', '庐阳区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3403', '3401', '瑶海区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3404', '3401', '蜀山区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3405', '3401', '包河区', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3406', '3401', '长丰县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3407', '3401', '肥东县', '3', '0');
INSERT INTO `yct_city` ( `id`, `parentid`, `cityname`, `regiontype`, `agencyid` ) VALUES  ('3408', '3401', '肥西县', '3', '0');
DROP TABLE IF EXISTS `yct_config`;
CREATE TABLE `yct_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(3) unsigned NOT NULL DEFAULT '50',
  `valname` varchar(30) NOT NULL DEFAULT '',
  `content` varchar(200) NOT NULL DEFAULT '',
  `str` varchar(200) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `valtype` varchar(10) NOT NULL DEFAULT '',
  `bottonname` text NOT NULL,
  `groupid` smallint(3) unsigned NOT NULL DEFAULT '0',
  `isline` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isselect` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('5', '3', 'icpbeian', 'ICP备案', '请根据网站所在地相关法律申请网站备案，如没有请为空', '', 'string', '', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('6', '1', 'is_close', '网站状态', '如果关闭网站，请对“关闭网站说明”进行设置', '0', 'bool', '关闭网站,开通网站', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('7', '5', 'admine_mail', '管理员Email', '接收用户留言和网站提醒相关信息', '779635476@qq.com', 'string', '', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('8', '4', 'domain', '网站网址', '请填写当前网站域名，注意网址后加上“/”,如http://www.ecisp.cn/', 'http://cy.com/', 'string', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('9', '6', 'is_log', '日志记录', '建议启用，以保留管理网后台操作日志', '1', 'bool', '启用日志记录,关闭日志记录', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('10', '9', 'is_email', '开启邮件发送', '如启用，请对以下SMTP参数进行设定', '0', 'bool', '启用邮件发送,关闭邮件发送', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('11', '11', 'smtp_server', 'SMTP服务器', '请确认邮箱必须支持SMTP发送功能！', '', 'string', '', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('12', '12', 'smtp_username', 'SMTP用户名', '邮件登陆用户名', 'admin', 'string', '', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('13', '12', 'smtp_password', 'SMTP密码', '邮件登陆密码', '357147', 'password', '', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('14', '7', 'cli_time', '时区设置(默认+8)', '请填写时区时差，中国时区为+8', '8', 'selectkey', '-12|（GMT-12：00）埃尼威托克岛、夸贾林环礁,-11|（GMT-11：00）中途岛、萨摩亚,-10|（GMT-10：00）夏威夷,-9|（GMT-09：00）阿拉斯加,-8|（GMT-08：00）太平洋时间（美国和加拿大），提华纳,-7|（GMT-07：00）山地时间（美国和加拿大），亚利桑那州,-6|（GMT-06：00）中央标准时间（美国和加拿大），墨西哥城,-5|（GMT-05：00）东部时间（美国和加拿大），波哥大，利马，基多,-4|（GMT-04：00）大西洋时间（加拿大），加拉加斯，拉巴斯,-3.5|（GMT-03：30）纽芬兰,-3|（GMT-03：00）Brassila、布宜诺斯艾利斯、乔治敦福克兰,-2|（GMT-02：00）中大西洋，提升。圣海伦娜,-1|（GMT-01：00）亚速尔群岛、佛得角群岛,0|（GMT-00：00）卡萨布兰卡、都柏林、伦敦、爱丁堡蒙罗维亚里斯本,1|（GMT+01：00）阿姆斯特丹、柏林、布鲁塞尔、马德里、巴黎、罗马,2|（GMT+02：00）开罗，赫尔辛基，加里宁格勒，南非,3|（GMT+03：00）巴格达，利雅得、莫斯科、内罗毕,3.5|（GMT+03：30）德黑兰,4|（GMT+04：00）阿布扎比，巴库，马斯喀特，第比利斯,4.5|（GMT+04：30）喀布尔,5|（GMT+05：00）叶卡捷琳堡，伊斯兰堡，卡拉奇，塔什干,5.5|（GMT+05：30）孟买、加尔各答、马德拉斯、新德里,5.75|（GMT+05：45）加德满都,6|（GMT+06：00）阿拉木图，科伦坡，达卡，新西伯利亚,6.5|（GMT+06：30）仰光,7|（GMT+07：00）曼谷、河内、雅加达,8|（GMT+08：00）北京、香港、珀斯、新加坡、台北,9|（GMT+09：00）大阪、札幌、首尔、东京，雅库茨克,9.5|（GMT+09：30）阿德莱德，达尔文,10|（GMT+10：00）堪培拉、关岛、墨尔本、悉尼、海参崴,11|（GMT+11：00）马加丹州、新喀里多尼亚、所罗门群岛,12|（GMT+12：00）奥克兰、惠灵顿、斐济、马歇尔岛', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('15', '12', 'is_html', '内容生成方式', '建议启用静态生成以提高SEO', '0', 'bool', '启用静态生成,启用动态页面', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('99', '13', 'file_fileex', '生成格式设置', '请根据服务器访问优先级进行设置，默认为html', 'html', 'selectkey', 'html|html,htm|htm,shtml|shtml', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('18', '6', 'is_gzip', '开启GZip功能', '建议开启，以提高网页访问速度', '1', 'bool', '启用GZIP压缩,关闭GZIP压缩', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('19', '9', 'default_lng', '后台默认站点', '用于控制后台默认的站点显示数据', 'cn', 'select', '', '1', '0', 'lngarray');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('20', '12', 'max_page', '后台翻页按钮数量', '请填写整数数字，建议填写值不要大于5', '5', 'int', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('21', '12', 'max_list', '后台每页内容数量', '请填写整数数字，建议填写数字不要大于30', '20', 'int', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('22', '1', 'upfile_dir', '上传文件夹', '请在字符最后加上“/”,例如：“upfile/”', 'upfile/', 'string', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('23', '5', 'upfile_maxsize', '文件大小限制', '不能超过服务器允许上传的最大设置，一般服务器不能超过2M', '100000000', 'selectkey', '200000|200K,500000|500K,1000000|1M,2000000|2M,3000000|3M,5000000|5M,10000000|10M,20000000|20M,30000000|30M,40000000|40M,50000000|50M,100000000|100M,150000000|150M,200000000|200M,250000000|250M', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('24', '9', 'img_width', '图片宽', '单位：px', '200', 'int', '', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('25', '10', 'img_height', '图片高', '单位：px', '200', 'int', '', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('26', '11', 'img_bgcolor', '图片背景颜色', '请点击色卡选取颜色，默认白色', '#ffffff', 'font', '', '4', '0', 'imgbgcolor');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('27', '2', 'upfile_pictype', '允许上传图片格式', '请用\"|\"分割格式，例如jpg|png|gif', 'jpg|png|gif', 'string', '', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('28', '50', 'upfile_maxalbum', '产品上传图片数量', '用于内容发布时可上传的图片最大数量，建议不要大于5', '3', 'int', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('29', '12', 'img_quality', '图片质量', '图片质量越高占用空间越大', '80', 'selectkey', '50|中,80|高,100|非常高', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('30', '13', 'img_issmallpic', '是否生成缩略图', '', '0', 'bool', '启用缩略图生成,禁用缩略图生成', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('31', '3', 'uifile_movertype', '允许上传视频格式', '请用\"|\"分割格式，例如swf|flv|mpg', 'swf|mpg|flv|mp4', 'string', '', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('32', '50', 'img_iswater', '水印类型', '', '0', 'selectkey', '0|不添加水印,1|添加文字水印,2|添加图片水印', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('33', '50', 'img_wmt_text', '水印文字', '如水印类型文字水印,此项必填,且只允许填写英文及数字', '', 'string', '', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('34', '50', 'img_wmt_size', '水印文字大小', '建议不超过20个象素', '25', 'int', '', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('35', '50', 'img_wmt_color', '水印字体颜色', '请点击色卡选取颜色，默认白色', '#ffffff', 'font', '', '4', '0', 'wmtcolor');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('36', '50', 'img_wmt_pos', '水印文字放置位置', '', '9', 'selectkey', '1|顶部居左,2|顶部居中,3|顶部居右,4|中间居左,5|居中,6|中间居右,7|底部居左,8|底部居中,9|底部居右', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('37', '50', 'img_wmt_transparent', '水印文字透明度', '', '20', 'selectkey', '20|非常透明,50|一般透明,100|不透明', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('38', '50', 'img_wmi_file', '水印图片文件名', '如水印类型等于2,此项必填，请将水印图片直接保存在/public/目录下', 'watermark.png', 'font', '', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('39', '50', 'img_wmi_pos', '水印图片放置位置', '', '9', 'selectkey', '1|顶部居左,2|顶部居中,3|顶部居右,4|中间居左,5|居中,6|中间居右,7|底部居左,8|底部居中,9|底部居右', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('40', '50', 'img_wmi_transparent', '水印图片透明度', '', '50', 'selectkey', '20|非常透明,50|一般透明,100|不透明', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('41', '15', 'file_htmldir', 'HTML生成目录', '请在字符最后加上“/”,为空则会默认在根目录。例如：“html/”', 'html/', 'string', '', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('42', '15', 'file_sitemapdir', 'SEO生成文件目录', '请在字符最后加上“/”,例如：“sitemap/”', 'sitemap/', 'string', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('43', '50', 'file_sqlbakdir', 'sql备份文件目录', '请在字符最后加上“/”,例如：“datecache/backup/”', 'datacache/backup/', 'string', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('44', '2', 'mem_isseccode', '会员登陆验证码', '建议开启，以加强会员信息安全', '0', 'bool', '开启会员登陆验证,禁用会员登陆验证', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('45', '50', 'default_templates', '当前模板', '请填写模板文件包名称,并确保在templates/目录下面已存在该文件包', 'specialty', 'font', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('46', '50', 'is_caching', '数据缓存开启类型', '系统有自动更新清除缓存功能，建议开启', '0', 'bool', '开启数据库缓存,关闭数据库缓存', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('47', '50', 'cache_time', '缓存更新时间', '', '3600', 'selectkey', '1800|半小时,3600|1小时,7200|2小时,43200|半天,86400|1天', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('48', '50', 'templates_fileex', '模板文件扩展名', '根据模板文件扩展名来填写，建议使用HTML格式为默认值', 'html', 'font', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('101', '41', 'input_iskey', '内容关键字获取', '启用会导致发布时间变的稍长', '0', 'bool', '启用关键字自动获取,禁用关键字自动获取', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('52', '6', 'order_shipping', '默认物流方式', '请填写物流方式ID值', '1', 'int', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('53', '7', 'order_pay', '默认支付方式', '请填写支付方式ID值', '1', 'int', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('54', '8', 'order_integral', '奖励积分比例', '请填写整数型数字，此积分比例根据支付总金额自动划入会员帐户', '10', 'int', '', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('55', '9', 'order_discount', '商品默认折扣', '请填写整数型数字，此折扣会影响商品订购总金额', '100', 'int', '', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('56', '50', 'order_companyname', '商家公司全称', '用于打印输出显示，请填写', '', 'string', '', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('57', '50', 'order_contact', '联系人', '', '', 'font', '', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('58', '50', 'order_province', '所处省', '', '', 'font', '', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('59', '50', 'order_city', '城市', '', '', 'font', '', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('60', '50', 'order_add', '详细地址', '', '', 'string', '', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('61', '50', 'order_post', '邮编', '', '', 'font', '', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('62', '50', 'order_tel', '电话', '', '', 'string', '', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('63', '50', 'order_moblie', '手机', '', '', 'string', '', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('64', '3', 'mem_isemail', '会员邮箱验证激活', '如开启，请确保系统开启邮件发送功能', '0', 'bool', '开启会员邮件验证,禁用会员邮件验证', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('65', '50', 'mem_isucenter', 'Ucenter接口状态', '如启用请正确填写UCenter信息，否则会导致会员注册错误', '0', 'bool', '绑定UCenter,禁用UCenter', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('66', '50', 'mem_ucdbhost', 'Ucenter数据库地址', '请填写UCenter数据库访问地址，默认为“localhost”', 'localhost', 'string', '', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('67', '50', 'mem_ucdbuser', 'Ucenter数据库访问名', '', 'root', 'font', '', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('68', '50', 'mem_ucdbpw', 'Ucenter数据库密码', '', '', 'font', '', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('69', '50', 'mem_ucdbname', 'Ucenter数据库名称', '', 'ucenter', 'font', '', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('70', '50', 'mem_ucdbchart', 'Ucenter数据库编码', '', 'utf8', 'font', '', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('71', '50', 'mem_ucdbtable', 'Ucenter表单前缀', '', 'uc_', 'font', '', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('72', '50', 'mem_uckey', '通信密钥', 'UCenter通信密钥必须与此设置保持一致', '', 'text', '', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('73', '50', 'mem_ucapi', 'UCenter访问地址', '请填写UCenter 通信的接口 URL，结尾请不要加“/”', '', 'string', '', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('74', '50', 'mem_ucchart', 'UCenter系统编码', '默认为UTF-8', 'utf-8', 'font', '', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('75', '50', 'mem_ucapiid', 'UCenter应用ID', '请填写当前应用在UCenter当中的序列ID', '0', 'int', '', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('76', '5', 'mem_lock', '不允许注册用户名', '请将用户名用“,”分开', 'www,bbs,demo,test,ftp,mail,user,users,admin,administrator', 'text', '', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('100', '2', 'input_isdes', '内容简介获取', '启用可能导致发布时间变的稍长', '1', 'bool', '启用内容简介自动获取,禁用内容简介自动获取', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('78', '4', 'mem_isintegral', '会员积分策略', '如启用，则网站相关操作会增加积分', '1', 'bool', '启用积分策略,禁用积分策略', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('79', '14', 'is_imcall', '在线客服显示类型', '如启用，请在页面上面增加在线客服标签即可', '1', 'bool', '前台开通在线客服,前台关闭在线客服', '8', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('116', '50', 'http_pathtype', '链接地址路径方式', '建议使用绝对路径，以确保网站无死链接', '1', 'bool', '绝对路径(建议),相对路径', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('117', '14', 'entrance_file', '首页生成文件名', '请根据服务器访问优先级进行设置，默认为index', 'index', 'selectkey', 'index|index,default|default', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('85', '2', 'close_content', '关闭网站说明', '如果启用关闭功能，建议填写此项', '抱歉：网站正在维护中，给您带来不便深表歉意！', 'text', '', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('86', '9', 'bbs_filter', '过滤字组', '多个词组用\"|\"隔开，例如“黄色|AV”', '江泽民|AV|邓小平|毛泽东|SEX', 'text', '', '5', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('87', '4', 'bbs_isclass', '留言审核模式', '如启用，内容留言经审核后才会显示', '0', 'bool', '启用发布审核,禁用发布审核', '5', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('89', '5', 'bbs_isseccode', '验证码', '建议开启，以避免垃圾信息发布', '1', 'bool', '启用验证码,禁用验证码', '5', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('160', '1', 'acmessagestr', '', '内容留言设置（用于控制内容留言相关属性）', '', '', '', '5', '1', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('91', '4', 'input_isdellink', '删除非站内链接', '用于发布的时候删除内容上非本站链接', '0', 'bool', '启用非本站链接删除,禁用非本站链接删除', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('92', '3', 'input_isdescription', '内容简介获取长度', '建议不超过默认250个字符', '250', 'int', '', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('93', '42', 'input_iskeyword', '关键字获取数量', '建议不超过默认10个词组', '10', 'int', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('94', '50', 'input_author', '默认编辑', '', '轻舞飞沙', 'font', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('95', '50', 'input_source', '默认来源', '', 'Ecisp.CN', 'font', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('96', '5', 'input_click', '默认点击数', '', '0', 'int', '', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('97', '6', 'is_keylink', '内链接启用方式', '启用会稍影响发布速度，但会增加SEO功能，建议启用', '1', 'bool', '启用内链接(建议),关闭内链接', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('98', '7', 'input_color', '标题默认颜色', '请点击色卡选取颜色，默认黑色', '#000000', 'font', '', '6', '0', 'inputcolor');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('104', '10', 'order_snfont', '订单编号格式字符', '如编号：ESP20**，其中ESP为格式字符，可为任意英文字符', 'ESP-', 'font', '', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('105', '6', 'bbs_inputtime', '防刷时间设置', '请填写同一用户发布时间间隔设置，以秒计算', '0', 'selectkey', '0|不限制,30|30秒,60|1分钟,120|2分钟,300|5分钟,600|10分钟,1800|30分钟,3600|1小时,21600|半天,86400|1天', '5', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('106', '2', 'bbs_max_list', '内容留言列表数量', '', '5', 'selectkey', '5|5条,10|10条,15|15条,20|20条', '5', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('162', '10', 'bbs_username', '禁止用户名', '所设置的用户名不能提交留言，多个用户名用\"|\"隔开', '', 'text', '', '5', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('111', '15', 'call_style', '在线客服外观样式', '可以修改样式来自定外观', '1', 'selectkey', '1|蓝色样式,2|绿色样式,3|紫色样式', '8', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('129', '70', 'scode_bgcolor', '验证码背景色', '请点击色卡选取颜色，默认天蓝', '#0080ff', 'font', '', '6', '0', 'sebgcolor');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('115', '50', 'input_hot', '热门点击数量', '当内容达到设定的点击数，将会被视为热门信息！请填取整数值!', '100', 'int', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('113', '14', 'is_inputhtml', '发布内容即时生成方式', '启用则在发布或修改内容时会生成页面，仅限于开启静态', '1', 'bool', '启用即时生成,关闭即时生成', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('114', '11', 'order_moneytype', '货币种类', '请输入货币种类字符', '￥', 'font', '', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('118', '11', 'home_lng', '前台默认站点', '', 'cn', 'select', '', '1', '0', 'lngarray');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('119', '12', 'is_rewrite', '伪静态方式', '', '0', 'bool', '启用伪静态(请将htaccess.txt更改为.htaccess并复制到根目录及相关语言目录内),关闭伪静态', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('120', '5', 'order_menu', '订单导航显示方式', '如启用，可在语言包中修改名称', '0', 'bool', '显示导航栏订单链接,隐藏导航栏订单链接', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('121', '1', 'member_menu', '会员导航栏显示', '如启用，可在语言包中修改其名称', '0', 'bool', '显示导航栏会员链接,隐藏导航栏会员链接', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('164', '2', 'is_wap', 'WAP网站状态', '如果开启，则将允许手机访问WAP网站', '1', 'bool', '开通WAP网站访问,关闭WAP网站访问', '7', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('123', '3', 'is_anonymous', '留言权限', '如启用则无需会员注册即可发布', '1', 'bool', '开启匿名留言,关闭匿名留言', '5', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('161', '8', 'bbsotherstr', '', '公共留言设置（用于内容留言及留言论坛设置）', '', '', '', '5', '1', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('126', '12', 'order_max_list', '订单列表显示数', '会员订单列表查看显示数量，请填写大于0的整数', '3', 'int', '', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('127', '16', 'call_type', '在线客服显示方式', '', '1', 'selectkey', '1|滑动显示,2|点击缩进滑动显示', '8', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('128', '17', 'call_position', '在线客服显示位置', '如果选用缩进滑动类型，则只能显示左边', '2', 'selectkey', '1|左边,2|右边', '8', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('130', '71', 'scode_adulterate', '验证码干扰码', '', '1', 'bool', '增加验证码背景干扰线条,纯色背景', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('131', '72', 'scode_shadow', '验证码阴影', '', '0', 'bool', '增加验证码字体阴影,无字体阴影', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('132', '70', 'scode_fontcolor', '验证码字体颜色', '请点击色卡选取颜色，默认紫色', '#ffffff', 'font', '', '6', '0', 'scfcolor');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('133', '4', 'is_inputclose', '继续发布控制', '如启用，则添加信息时不关闭当前窗口等待继续添加', '1', 'bool', '启用继续添加,禁用继续添加', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('134', '50', 'cer_file', 'codefile', 'easysiteSN', '0', 'string', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('135', '50', 'cer_key', 'key', 'key', '', 'string', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('137', '50', 'is_lancode', 'cn默认代码', '用于默认语言的代码定义', 'cn', 'string', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('138', '10', 'is_alonelng', '单语言网站', '如果启动单语言网站，则网站将在静态根目录下面生成', '0', 'bool', '启用单语言网站,启用多语言网站', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('139', '3', 'is_enquiry_memclass', '询价权限', '建议开启会员询价功能！', '0', 'bool', '仅允许会员询价,允许所有人询价', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('140', '2', 'enquiry_menu', '询价导航显示方式', '启用导航后，可在语言包中修改显示名称', '0', 'bool', '显示导航栏询价链接,隐藏导航栏询价链接', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('141', '4', 'sitename', '后台识别名称', '用于网站后台识别！', '元长泰茶叶', 'string', '', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('142', '6', 'mem_isclass', '会员审核类型', '如启用审核，则会员注册需要审核后才能登陆', '0', 'bool', '审核,不审核', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('143', '4', 'upfile_filetype', '允许上传文件格式', '请用\"|\"分割格式，例如zip|rar|doc|xls', 'zip|rar|doc|xls|pdf', 'string', '', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('144', '8', 'title_htmlstr', '', '网页访问方式及相关属性', '1', '', '', '1', '1', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('145', '50', 'title_scode', '', '验证及安全设置', '2', '', '', '6', '1', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('146', '9', 'title_ucenter', '', 'UCenter会员注册同步插件参数设置', '3', '', '', '2', '1', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('147', '1', 'title_enquiry', '', '询价属性设置', '4', '', '', '3', '1', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('148', '4', 'title_order', '', '订单属性设置', '6', '', '', '3', '1', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('149', '13', 'title_orderprin', '', '订单打印属性设置', '5', '', '', '3', '1', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('150', '8', 'title_img', '', '上传图片属性', '', '', '', '4', '1', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('151', '1', 'title_article', '', '内容发布属性设置', '', '', '', '6', '1', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('152', '8', 'title_mail', '', '邮件发送参数设置', '', '', '', '6', '1', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('153', '13', 'title_call', '', '在线客服设置', '', '', '', '8', '1', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('154', '10', 'smtp_type', '邮件发送方式', '', '2', 'selectkey', '1|通过PHP函数发送(以下参数无需填写用户名和密码),2|通过连接SMTP邮件服务器发送(以下所有选项必填),3|通过Sendmail发送邮件', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('155', '10', 'mail_cat', '邮件头的分隔符', '', '1', 'selectkey', '1|使用 CRLF 作为分隔符(通常为 Windows 主机),2|使用 LF 作为分隔符(通常为 Unix/Linux主机),3|使用 CR 作为分隔符(通常为 Mac 主机)', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('158', '8', 'mem_isaddress', '下拉地区选项', '如启动，会员国家地区等属性则下拉选择，否则自主填写', '0', 'bool', '开启城市地区下拉选择,由会员自主填写', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('156', '11', 'smtp_port', 'SMTP服务器端口', '', '25', 'font', '', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('157', '11', 'mail_send', '发送邮箱', '请填写发送邮件全称，如user@ecisp.cn', '', 'string', '', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('159', '1', 'mem_isclose', '会员功能状态', '如关闭，则网站不再允许使用相关会员所有功能', '0', 'bool', '开启会员功能,关闭会员功能', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('165', '7', 'mem_did', '注册条款关联ID', '多个不同语言使用\"语言标识：单页分类ID\"并使用“,”隔开，如:cn:1,en:2', 'cn:0,en:0', 'string', '', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('166', '7', 'bbs_ismail', '内容留言邮件提醒', '', '1', 'bool', '开启内容留言管理员邮箱提醒,关闭内容留言管理员邮箱提醒', '5', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('167', '6', 'order_ismember', '会员订购', '如开启会员订购，则需要注册后才能提交订单，否则无需注册即可提交', '0', 'bool', '开启会员订购,关闭会员订购', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('168', '18', 'is_getcache', 'GET模板缓存', '建议生成静态页且数据较大网站启用此功能', '0', 'bool', '开启GET模板缓存,关闭GET模板缓存', '1', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('169', '50', 'sitecoedb', '远程通信密钥', '请设置不小于15位的远程通信密钥，用于站群管理', '7a6355a4a18b136036439cc61efe069b', 'string', '', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('170', '6', 'img_dirtype', '文件夹保存类型', '如您的图片较多，建议选择“按年/月/日保存”', 'm3', 'selectkey', 'y|按年/月/日保存,m3|按年/月保存,d|按年/月日保存,m|按年月日保存,m1|按年月保存,m2|按年保存', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('171', '7', 'img_cfiletype', '文件名生成方式', '', 'd', 'selectkey', 'd|重新按日期格式命名,f|按上传文件名保存(如包括非英文或数字则自动按日期生成)', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('172', '14', 'img_iszoom', '图片缩略方式', '', '1', 'selectkey', '1|图片等比缩放,2|图片中心缩放,3|图片左边对齐缩放', '4', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('173', '2', 'mem_regisseccode', '会员注册验证码', '建议开启验证，以防止恶意注册', '0', 'bool', '开启会员注册验证码,禁用会员注册验证码', '2', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('174', '18', 'title_moblie', '', '手机短信发送接口（<a target=\"_blank\" class=\"infolink06\" href=\"http://www.ecisp.cn\">点击在线申请短信接口</a>）', '', '', '', '6', '1', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('175', '20', 'moblie_userid', '手机签约用户ID', '请填写您申请的接口用户名ID号', '', 'font', '', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('176', '21', 'moblie_smssnid', '短信接口ID', '请填写您申请的短信接口ID', '', 'font', '', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('177', '22', 'moblie_smskey', '短信授权key码', '请填写短信接口key码', '', 'string', '', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('178', '19', 'is_moblie', '开启短信发送', '如启用，请对以下短信发送接口参数进行设定', '0', 'bool', '启用短信发送,关闭短信发送', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('179', '23', 'moblie_number', '短信手机号', '请填写您绑定的手机号码', '', 'font', '', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('181', '81', 'tip_searchtime', '提示框时间', '时间限定在1-30秒之间！', '10', 'selectkey', '1|1秒,2|2秒,3|3秒,4|4秒,5|5秒,6|6秒,7|7秒,8|8秒,9|9秒,10|10秒,15|15秒,20|20秒,30|30秒', '6', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('189', '80', 'tip_title', '', '提示框时间设置（适用所有提示框）', '', '', '', '6', '1', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('190', '50', 'softvol', '', '', '6700160531', 'string', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('191', '50', 'softvolstr', '', '', 'V6.7.16.05.31 UTF8', 'strint', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('192', '50', 'wap_templates', '手机模板', '', 'touch', 'font', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('193', '3', 'wap_telstr', '一键拨打电话', '请输入电话号码，用于WAP版本手机一键拨打功能', '18665655030', 'font', '', '7', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('195', '50', 'wap_ismenu_member', '会员导航', '开启后，在手机端可以显示会员功能', '1', 'bool', '启用手机会员导航,关闭手机会员导航', '7', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('194', '4', 'wap_smsstr', '一键短信号码', '请输入手机号码，用于WAP版本手机短信一键发送功能', '18665655030', 'font', '', '7', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('196', '50', 'wap_ismenu_order', '订单导航', '开启后，在手机端可以显示订购功能', '1', 'bool', '启用手机订单导航,关闭手机订单导航', '7', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('197', '50', 'wap_ismenu_enquiry', '询盘导航', '开启后，在手机端可以显示询盘功能', '1', 'bool', '启用手机询盘导航,关闭手机询盘导航', '7', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('198', '50', 'wap_footer', '手机底部文字', '', '版权所有 © 2005-2015 ECISP.CN&lt;br/&gt;\n 保留所有权利', 'text', '', '7', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('199', '1', 'wap_isaotu', '手机浏览器识别', '开启后，手机访问主网址可以自动跳转到手机平台', '1', 'bool', '启用手机访问识别,关闭手机访问识别', '7', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('200', '50', 'isdbo', '', '', '0', 'strint', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('201', '1', 'dbosn', '', '', 'EDF2614', 'strint', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('203', '1', 'dietime', '', '', '1500002567', 'string', '', '99', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('204', '4', 'wap_default_lng', '手机端前台默认语言', '', 'cn', 'select', '', '7', '0', 'lngarray');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('205', '4', 'isorder', '订单功能状态', '如果选择关闭订单功能，则与订单相关的所有功能无法使用', '0', 'bool', '启用订单功能,关闭订单功能', '3', '0', '');
INSERT INTO `yct_config` ( `id`, `pid`, `valname`, `content`, `str`, `value`, `valtype`, `bottonname`, `groupid`, `isline`, `isselect` ) VALUES  ('206', '1', 'isenquiry', '询盘功能状态', '如果选择关闭询盘功能，则与询盘相关的所有功能无法使用', '0', 'bool', '启用询盘功能,关闭询盘功能', '3', '0', '');
DROP TABLE IF EXISTS `yct_document`;
CREATE TABLE `yct_document` (
  `did` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '50',
  `mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  `extid` varchar(200) NOT NULL,
  `sid` int(11) unsigned NOT NULL DEFAULT '0',
  `fgid` int(8) unsigned NOT NULL DEFAULT '0',
  `linkdid` varchar(100) NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ismess` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isorder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ktid` int(6) unsigned NOT NULL DEFAULT '0',
  `purview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `istemplates` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isbase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` varchar(100) NOT NULL,
  `tsn` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL,
  `longtitle` varchar(200) NOT NULL,
  `color` varchar(8) NOT NULL,
  `author` char(20) NOT NULL,
  `source` char(30) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `headtitle` varchar(200) NOT NULL,
  `keywords` varchar(220) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `summary` text NOT NULL,
  `link` varchar(250) NOT NULL,
  `oprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `uptime` int(11) unsigned NOT NULL DEFAULT '0',
  `template` varchar(100) NOT NULL,
  `filename` varchar(100) NOT NULL DEFAULT '',
  `filepath` varchar(200) NOT NULL,
  `filepage` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`),
  UNIQUE KEY `tid` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('1', 'cn', '50', '1', '1', '3', '0', '0', '0', '', '1', '0', '1', '0', '0', '0', '0', '0', '1', '', '', '文化', '文化', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '14', '1499828937', '1499828937', 'base_read', 'index', '', '0');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('2', 'cn', '50', '9', '1', '5', '0', '0', '0', '', '1', '0', '1', '0', '0', '0', '0', '0', '1', '', '', '招商加盟', '招商加盟', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '9', '1499829086', '1499829086', 'article_read', 'index', '', '0');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('49', 'cn', '50', '4', '1', '4', '0', '0', '0', '', '1', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '海南香水湾君澜度假酒店', '', '', '', '', 'upfile/2017/07/20170713155804_339.jpg', '', '', '', '杭州洲际大酒店', '', '', '0.00', '0.00', '0', '1499932374', '1499932686', 'article_read', '49', 'hezuohuoban', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('50', 'cn', '50', '4', '1', '4', '0', '0', '0', '', '1', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '西安阿房宫维景国际大酒店', '', '', '', '', 'upfile/2017/07/20170713155845_265.jpg', '', '', '', '杭州洲际大酒店', '', '', '0.00', '0.00', '0', '1499932374', '1499932727', 'article_read', '50', 'hezuohuoban', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('53', 'cn', '50', '3', '1', '6', '0', '0', '0', '', '1', '0', '1', '1', '1', '0', '0', '0', '0', '', 'SN20170713170020995', '翁龙满杨·西湖龙井', '', '', '', '', 'upfile/2017/07/20170713170024_824.png', '', '', '', '翁龙满杨·西湖龙井', '', '', '0.00', '0.00', '0', '1499936420', '1499999151', 'goods_read', '53', 'pinweihaocha/xihulongjing', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('52', 'cn', '50', '10', '1', '17', '0', '0', '0', '', '1', '0', '1', '0', '0', '0', '0', '0', '1', '', '', '联系我们', '0571-087153393 13968090400', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '70', '1499934051', '1499934304', 'base_read', 'index', 'wenhua/lianxiwomen28', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('29', 'cn', '50', '1', '1', '15', '0', '0', '0', '', '1', '0', '1', '0', '0', '0', '0', '0', '1', '', '', '品牌文化', '品牌文化', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '46', '1499927207', '1499927441', 'base_read', 'index', 'wenhua/pinpaiwenhua', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('30', 'cn', '50', '8', '1', '13', '0', '0', '0', '', '1', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '金奖', '', '', '', '', 'upfile/2017/07/20170713144436_641.jpg', '', '', '', '金奖', '', '', '0.00', '0.00', '0', '1499928270', '1499928300', 'base_read', '30', 'wenhua/rongyuzizhi', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('31', 'cn', '50', '8', '1', '13', '0', '0', '0', '', '1', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '定点生产单位', '', '', '', '', 'upfile/2017/07/20170713144508_657.jpg', '', '', '', '定点生产单位', '', '', '0.00', '0.00', '1', '1499928301', '1499928325', 'base_read', '31', 'wenhua/rongyuzizhi', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('35', 'cn', '50', '7', '1', '14', '0', '0', '0', '', '1', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '采茶现场', '', '', '', '', 'upfile/2017/07/20170712151032_315.jpg', '', '', '', '采茶现场', '', '', '0.00', '0.00', '0', '1499930526', '1499930538', 'base_read', '35', 'wenhua/pinpaizhanshi', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('36', 'cn', '50', '7', '1', '14', '0', '0', '0', '', '1', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '采茶现场', '', '', '', '', 'upfile/2017/07/20170712151131_672.jpg', '', '', '', '采茶现场', '', '', '0.00', '0.00', '0', '1499930526', '1499930549', 'base_read', '36', 'wenhua/pinpaizhanshi', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('37', 'cn', '50', '7', '1', '14', '0', '0', '0', '', '1', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '采茶现场', '', '', '', '', 'upfile/2017/07/20170712151309_561.jpg', '', '', '', '采茶现场', '', '', '0.00', '0.00', '0', '1499930526', '1499930556', 'base_read', '37', 'wenhua/pinpaizhanshi', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('38', 'cn', '50', '7', '1', '14', '0', '0', '0', '', '1', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '采茶现场', '', '', '', '', 'upfile/2017/07/20170712151411_367.jpg', '', '', '', '采茶现场', '', '', '0.00', '0.00', '0', '1499930526', '1499930563', 'base_read', '38', 'wenhua/pinpaizhanshi', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('42', 'cn', '50', '2', '1', '2', '0', '0', '0', '', '1', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '杭州元长泰茶叶官方网站欢迎您的光临！', '', '', '', '', 'upfile/2017/07/20170713110215_389.jpg', '', '', '', '杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！', '杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！', '', '0.00', '0.00', '18', '1499835596', '1499930755', 'article_read', '42', 'xinwenzixun', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('54', 'cn', '50', '3', '1', '6', '0', '0', '0', '', '1', '0', '1', '1', '1', '0', '0', '0', '0', '', 'SN20170713170020995', '翁龙满杨·西湖龙井', '', '', '', '', 'upfile/2017/07/20170713170130_728.jpg', '', '', '', '翁龙满杨·西湖龙井', '', '', '0.00', '0.00', '1', '1499936420', '1499999145', 'goods_read', '54', 'pinweihaocha/xihulongjing', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('24', 'cn', '50', '2', '1', '2', '0', '0', '0', '', '1', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '杭州元长泰茶叶官方网站欢迎您的光临！', '', '', '', '', 'upfile/2017/07/20170713110215_389.jpg', '', '', '', '杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！', '杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！', '', '0.00', '0.00', '18', '1499835596', '1499925700', 'article_read', '24', 'xinwenzixun', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('39', 'cn', '50', '7', '1', '14', '0', '0', '0', '', '1', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '采茶现场', '', '', '', '', 'upfile/2017/07/20170713152250_990.jpg', '', '', '', '采茶现场', '', '', '0.00', '0.00', '0', '1499930526', '1499930571', 'base_read', '39', 'wenhua/pinpaizhanshi', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('40', 'cn', '50', '7', '1', '14', '0', '0', '0', '', '1', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '采茶现场', '', '', '', '', 'upfile/2017/07/20170713152334_137.jpg', '', '', '', '采茶现场', '', '', '0.00', '0.00', '1', '1499930526', '1499930616', 'base_read', '40', 'wenhua/pinpaizhanshi', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('41', 'cn', '50', '7', '1', '14', '0', '0', '0', '', '1', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '采茶现场', '', '', '', '', 'upfile/2017/07/20170713152408_980.jpg', '', '', '', '采茶现场', '', '', '0.00', '0.00', '2', '1499930526', '1499930650', 'base_read', '41', 'wenhua/pinpaizhanshi', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('43', 'cn', '50', '2', '1', '2', '0', '0', '0', '', '1', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '杭州元长泰茶叶官方网站欢迎您的光临！', '', '', '', '', 'upfile/2017/07/20170713110215_389.jpg', '', '', '', '杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！', '杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！', '', '0.00', '0.00', '21', '1499835596', '1499930765', 'article_read', '43', 'xinwenzixun', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('44', 'cn', '50', '2', '1', '2', '0', '0', '0', '', '1', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '杭州元长泰茶叶官方网站欢迎您的光临！', '', '', '', '', 'upfile/2017/07/20170713110215_389.jpg', '', '', '', '杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！', '杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！杭州元长泰茶叶官方网站欢迎您的光临！', '', '0.00', '0.00', '22', '1499835596', '1499930768', 'article_read', '44', 'xinwenzixun', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('45', 'cn', '50', '4', '1', '4', '0', '0', '0', '', '1', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '杭州洲际大酒店', '', '', '', '', 'upfile/2017/07/20170713155302_173.jpg', '', '', '', '杭州洲际大酒店', '', '', '0.00', '0.00', '0', '1499932374', '1499932390', 'article_read', '45', 'hezuohuoban', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('46', 'cn', '50', '4', '1', '4', '0', '0', '0', '', '1', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '杭州世外桃源度假酒店', '', '', '', '', 'upfile/2017/07/20170713155441_954.jpg', '', '', '', '杭州洲际大酒店', '', '', '0.00', '0.00', '0', '1499932374', '1499932483', 'article_read', '46', 'hezuohuoban', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('47', 'cn', '50', '4', '1', '4', '0', '0', '0', '', '1', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '杭州江滨1号会所', '', '', '', '', 'upfile/2017/07/20170713155607_656.jpg', '', '', '', '杭州洲际大酒店', '', '', '0.00', '0.00', '0', '1499932374', '1499932570', 'article_read', '47', 'hezuohuoban', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('48', 'cn', '50', '4', '1', '4', '0', '0', '0', '', '1', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '千岛湖大酒店', '', '', '', '', 'upfile/2017/07/20170713155654_401.jpg', '', '', '', '杭州洲际大酒店', '', '', '0.00', '0.00', '3', '1499932374', '1499932616', 'article_read', '48', 'hezuohuoban', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('55', 'cn', '50', '3', '1', '6', '0', '0', '0', '', '1', '0', '1', '1', '1', '0', '0', '0', '0', '', 'SN20170713170020995', '翁龙满杨·西湖龙井', '', '', '', '', 'upfile/2017/07/20170713170239_221.jpg', '', '', '', '翁龙满杨·西湖龙井', '', '', '0.00', '0.00', '3', '1499936420', '1499999140', 'goods_read', '55', 'pinweihaocha/xihulongjing', '1');
INSERT INTO `yct_document` ( `did`, `lng`, `pid`, `mid`, `aid`, `tid`, `extid`, `sid`, `fgid`, `linkdid`, `isclass`, `islink`, `ishtml`, `ismess`, `isorder`, `ktid`, `purview`, `istemplates`, `isbase`, `recommend`, `tsn`, `title`, `longtitle`, `color`, `author`, `source`, `pic`, `tags`, `headtitle`, `keywords`, `description`, `summary`, `link`, `oprice`, `bprice`, `click`, `addtime`, `uptime`, `template`, `filename`, `filepath`, `filepage` ) VALUES  ('56', 'cn', '50', '3', '1', '6', '0', '0', '0', '', '1', '0', '1', '1', '1', '0', '0', '0', '0', '', 'SN20170713170020995', '翁龙满杨·西湖龙井', '', '', '', '', 'upfile/2017/07/20170714083328_653.jpg', '', '', '', '翁龙满杨·西湖龙井', '', '', '0.00', '0.00', '113', '1499936420', '1499999303', 'goods_read', '56', 'pinweihaocha/xihulongjing', '1');
DROP TABLE IF EXISTS `yct_document_album`;
CREATE TABLE `yct_document_album` (
  `daid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL,
  `picname` varchar(200) NOT NULL DEFAULT '',
  `filedes` text NOT NULL,
  `picfile` varchar(150) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`daid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_document_album` ( `daid`, `did`, `picname`, `filedes`, `picfile`, `addtime` ) VALUES  ('18', '56', '', '', 'upfile/2017/07/20170714083328_653.jpg', '1499999303');
INSERT INTO `yct_document_album` ( `daid`, `did`, `picname`, `filedes`, `picfile`, `addtime` ) VALUES  ('17', '56', '', '', 'upfile/2017/07/20170714083328_653.jpg', '1499999303');
INSERT INTO `yct_document_album` ( `daid`, `did`, `picname`, `filedes`, `picfile`, `addtime` ) VALUES  ('16', '56', '', '', 'upfile/2017/07/20170714083328_653.jpg', '1499999303');
INSERT INTO `yct_document_album` ( `daid`, `did`, `picname`, `filedes`, `picfile`, `addtime` ) VALUES  ('15', '56', '', '', 'upfile/2017/07/20170714083328_653.jpg', '1499999303');
INSERT INTO `yct_document_album` ( `daid`, `did`, `picname`, `filedes`, `picfile`, `addtime` ) VALUES  ('14', '56', '', '', 'upfile/2017/07/20170714083328_653.jpg', '1499999303');
DROP TABLE IF EXISTS `yct_document_attr`;
CREATE TABLE `yct_document_attr` (
  `datid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL DEFAULT '0',
  `downloadurl` varchar(250) NOT NULL,
  `softsize` varchar(250) NOT NULL,
  `softsystem` varchar(250) NOT NULL,
  `list` varchar(250) NOT NULL,
  PRIMARY KEY (`datid`,`did`),
  UNIQUE KEY `daid` (`datid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_document_content`;
CREATE TABLE `yct_document_content` (
  `dcid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`dcid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('34', '36', '&lt;p&gt;采茶现场&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('35', '37', '&lt;p&gt;采茶现场&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('36', '38', '&lt;p&gt;采茶现场&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('37', '39', '&lt;p&gt;采茶现场&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('38', '40', '&lt;p&gt;采茶现场&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('40', '42', '&lt;p&gt;元长泰茶叶自有生产实验基地位于核心产区狮峰及白鹤峰区域，基地山清水秀，阳光充足，拥有稀少的西湖龙井群体种，并坚持以传统的环保技术养护管理。每年抽样质检都达到国家甚至国际高标准，公司唯一的目标是给广大茶友们提供安全放心，且口味纯正的西湖龙井茶。&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('22', '24', '&lt;p&gt;元长泰茶叶自有生产实验基地位于核心产区狮峰及白鹤峰区域，基地山清水秀，阳光充足，拥有稀少的西湖龙井群体种，并坚持以传统的环保技术养护管理。每年抽样质检都达到国家甚至国际高标准，公司唯一的目标是给广大茶友们提供安全放心，且口味纯正的西湖龙井茶。&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('27', '29', '&lt;p&gt;元长泰茶叶自有生产实验基地位于核心产区狮峰及白鹤峰区域，基地山清水秀，阳光充足，拥有稀少的西湖龙井群体种，并坚持以传统的环保技术养护管理。&lt;/p&gt;\n&lt;p&gt;&lt;img src=&quot;/upfile/2017/07/20170713142836_612.jpg&quot; alt=&quot;&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;每年抽样质检都达到国家甚至国际高标准，公司唯一的目标是给广大茶友们提供安全放心，且口味纯正的西湖龙井茶。&lt;/p&gt;\n&lt;p&gt;&lt;img src=&quot;/upfile/2017/07/20170713142944_431.jpg&quot; alt=&quot;&quot; /&gt;&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('41', '43', '&lt;p&gt;元长泰茶叶自有生产实验基地位于核心产区狮峰及白鹤峰区域，基地山清水秀，阳光充足，拥有稀少的西湖龙井群体种，并坚持以传统的环保技术养护管理。每年抽样质检都达到国家甚至国际高标准，公司唯一的目标是给广大茶友们提供安全放心，且口味纯正的西湖龙井茶。&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('39', '41', '&lt;p&gt;采茶现场&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('28', '30', '&lt;p&gt;金奖&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('29', '31', '&lt;p&gt;定点生产单位&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('33', '35', '&lt;p&gt;采茶现场&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('42', '44', '&lt;p&gt;元长泰茶叶自有生产实验基地位于核心产区狮峰及白鹤峰区域，基地山清水秀，阳光充足，拥有稀少的西湖龙井群体种，并坚持以传统的环保技术养护管理。每年抽样质检都达到国家甚至国际高标准，公司唯一的目标是给广大茶友们提供安全放心，且口味纯正的西湖龙井茶。&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('43', '45', '&lt;p&gt;杭州洲际大酒店&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('44', '46', '&lt;p&gt;杭州世外桃源度假酒店&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('45', '47', '&lt;p&gt;杭州江滨1号会所&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('46', '48', '&lt;p&gt;千岛湖大酒店&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('47', '49', '&lt;p&gt;海南香水湾君澜度假酒店&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('48', '50', '&lt;p&gt;西安阿房宫维景国际大酒店&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('51', '53', '&lt;p&gt;【元长泰原叶茶包】&lt;/p&gt;\n&lt;p&gt;元长泰茶叶是最早开发中高端商务原叶茶包的企业之一。根据不同品种，按标准，一泡干茶量一袋，便于保存、便于携带，顺应时尚慢生活。受到广大旅游商务宾馆、酒店、会议中心、企事业单位、个人的喜爱。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;【鉴赏方法】&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;从外形看，以条索紧细、匀齐、金毫多、色泽乌润的为好。但红茶条索的粗细和金毫的多少，与茶树品种有很大关系。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;从内质看，香气馥郁的质量为上。品质好的香气浓郁，似蜜糖香，又蕴藏兰花香；滋味以醇厚的为好，具有一定的刺激性；汤色红艳明亮，边缘带有金黄圈的品质较好。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;[杭白菊]&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;白菊亦名小汤黄、小白菊，为浙江桐乡地区的著名特产。杭白菊在中国有悠久的栽培历史。&lt;/p&gt;\n&lt;p&gt;杭白菊花瓣洁白如玉，花蕊黄如纯金，有很高药用价值和延年益寿的功效，《补农书》载：&amp;ldquo;甘菊性甘温，久服最有益。&amp;rdquo;元代《本草衍义补遗》说：&amp;ldquo;菊花能补阴&amp;rdquo;。李时珍《本草纲目》道：菊能利五脉，调四肢，治头风热补；还记载一段神话：&amp;ldquo;神仙传言，康风子、朱孺之皆以服菊成仙&amp;rdquo;。可见杭白菊的功效。桐乡杭白菊，还可代茶饮用。观之使人赏心悦目，闻之淡香沁人肺腑，泡茶饮之则味甘而醇郁，是一种食药兼用的优良品种。经常饮用，有散风清热、清肝明目、养颜美容和解毒抗炎强身的功效与作用，能增强毛细血管抵抗力，抑制毛细血管的通性。&lt;/p&gt;\n&lt;p&gt;杭白菊根据采摘时间及花苞开放程度不同，分为胎菊、娃娃菊等。胎菊是杭白菊中最上品的一种，第一次在杭白菊花朵未完全张开的时候摘收下来的为胎菊，前两次采摘的质量最好，经干燥加工出来后为特级花选用的是头序花蕾初开的嫩芽，精心的蒸制、烘焙而成，具有独特的味道，以它的稀少而颇为珍贵。&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('52', '54', '&lt;p&gt;【元长泰原叶茶包】&lt;/p&gt;\n&lt;p&gt;元长泰茶叶是最早开发中高端商务原叶茶包的企业之一。根据不同品种，按标准，一泡干茶量一袋，便于保存、便于携带，顺应时尚慢生活。受到广大旅游商务宾馆、酒店、会议中心、企事业单位、个人的喜爱。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;【鉴赏方法】&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;从外形看，以条索紧细、匀齐、金毫多、色泽乌润的为好。但红茶条索的粗细和金毫的多少，与茶树品种有很大关系。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;从内质看，香气馥郁的质量为上。品质好的香气浓郁，似蜜糖香，又蕴藏兰花香；滋味以醇厚的为好，具有一定的刺激性；汤色红艳明亮，边缘带有金黄圈的品质较好。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;[杭白菊]&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;白菊亦名小汤黄、小白菊，为浙江桐乡地区的著名特产。杭白菊在中国有悠久的栽培历史。&lt;/p&gt;\n&lt;p&gt;杭白菊花瓣洁白如玉，花蕊黄如纯金，有很高药用价值和延年益寿的功效，《补农书》载：&amp;ldquo;甘菊性甘温，久服最有益。&amp;rdquo;元代《本草衍义补遗》说：&amp;ldquo;菊花能补阴&amp;rdquo;。李时珍《本草纲目》道：菊能利五脉，调四肢，治头风热补；还记载一段神话：&amp;ldquo;神仙传言，康风子、朱孺之皆以服菊成仙&amp;rdquo;。可见杭白菊的功效。桐乡杭白菊，还可代茶饮用。观之使人赏心悦目，闻之淡香沁人肺腑，泡茶饮之则味甘而醇郁，是一种食药兼用的优良品种。经常饮用，有散风清热、清肝明目、养颜美容和解毒抗炎强身的功效与作用，能增强毛细血管抵抗力，抑制毛细血管的通性。&lt;/p&gt;\n&lt;p&gt;杭白菊根据采摘时间及花苞开放程度不同，分为胎菊、娃娃菊等。胎菊是杭白菊中最上品的一种，第一次在杭白菊花朵未完全张开的时候摘收下来的为胎菊，前两次采摘的质量最好，经干燥加工出来后为特级花选用的是头序花蕾初开的嫩芽，精心的蒸制、烘焙而成，具有独特的味道，以它的稀少而颇为珍贵。&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('53', '55', '&lt;p&gt;【元长泰原叶茶包】&lt;/p&gt;\n&lt;p&gt;元长泰茶叶是最早开发中高端商务原叶茶包的企业之一。根据不同品种，按标准，一泡干茶量一袋，便于保存、便于携带，顺应时尚慢生活。受到广大旅游商务宾馆、酒店、会议中心、企事业单位、个人的喜爱。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;【鉴赏方法】&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;从外形看，以条索紧细、匀齐、金毫多、色泽乌润的为好。但红茶条索的粗细和金毫的多少，与茶树品种有很大关系。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;从内质看，香气馥郁的质量为上。品质好的香气浓郁，似蜜糖香，又蕴藏兰花香；滋味以醇厚的为好，具有一定的刺激性；汤色红艳明亮，边缘带有金黄圈的品质较好。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;[杭白菊]&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;白菊亦名小汤黄、小白菊，为浙江桐乡地区的著名特产。杭白菊在中国有悠久的栽培历史。&lt;/p&gt;\n&lt;p&gt;杭白菊花瓣洁白如玉，花蕊黄如纯金，有很高药用价值和延年益寿的功效，《补农书》载：&amp;ldquo;甘菊性甘温，久服最有益。&amp;rdquo;元代《本草衍义补遗》说：&amp;ldquo;菊花能补阴&amp;rdquo;。李时珍《本草纲目》道：菊能利五脉，调四肢，治头风热补；还记载一段神话：&amp;ldquo;神仙传言，康风子、朱孺之皆以服菊成仙&amp;rdquo;。可见杭白菊的功效。桐乡杭白菊，还可代茶饮用。观之使人赏心悦目，闻之淡香沁人肺腑，泡茶饮之则味甘而醇郁，是一种食药兼用的优良品种。经常饮用，有散风清热、清肝明目、养颜美容和解毒抗炎强身的功效与作用，能增强毛细血管抵抗力，抑制毛细血管的通性。&lt;/p&gt;\n&lt;p&gt;杭白菊根据采摘时间及花苞开放程度不同，分为胎菊、娃娃菊等。胎菊是杭白菊中最上品的一种，第一次在杭白菊花朵未完全张开的时候摘收下来的为胎菊，前两次采摘的质量最好，经干燥加工出来后为特级花选用的是头序花蕾初开的嫩芽，精心的蒸制、烘焙而成，具有独特的味道，以它的稀少而颇为珍贵。&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('50', '52', '&lt;p&gt;公司地址：杭州市西湖区虎跑路满觉陇村&lt;/p&gt;\n&lt;p&gt;加工地址：杭州市西湖区之江路28号&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;生产基地：杭州市西湖区狮峰、白鹤峰区块&lt;/p&gt;');
INSERT INTO `yct_document_content` ( `dcid`, `did`, `content` ) VALUES  ('54', '56', '&lt;p&gt;【元长泰原叶茶包】&lt;/p&gt;\n&lt;p&gt;元长泰茶叶是最早开发中高端商务原叶茶包的企业之一。根据不同品种，按标准，一泡干茶量一袋，便于保存、便于携带，顺应时尚慢生活。受到广大旅游商务宾馆、酒店、会议中心、企事业单位、个人的喜爱。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;【鉴赏方法】&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;从外形看，以条索紧细、匀齐、金毫多、色泽乌润的为好。但红茶条索的粗细和金毫的多少，与茶树品种有很大关系。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;从内质看，香气馥郁的质量为上。品质好的香气浓郁，似蜜糖香，又蕴藏兰花香；滋味以醇厚的为好，具有一定的刺激性；汤色红艳明亮，边缘带有金黄圈的品质较好。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;[杭白菊]&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;白菊亦名小汤黄、小白菊，为浙江桐乡地区的著名特产。杭白菊在中国有悠久的栽培历史。&lt;/p&gt;\n&lt;p&gt;杭白菊花瓣洁白如玉，花蕊黄如纯金，有很高药用价值和延年益寿的功效，《补农书》载：&amp;ldquo;甘菊性甘温，久服最有益。&amp;rdquo;元代《本草衍义补遗》说：&amp;ldquo;菊花能补阴&amp;rdquo;。李时珍《本草纲目》道：菊能利五脉，调四肢，治头风热补；还记载一段神话：&amp;ldquo;神仙传言，康风子、朱孺之皆以服菊成仙&amp;rdquo;。可见杭白菊的功效。桐乡杭白菊，还可代茶饮用。观之使人赏心悦目，闻之淡香沁人肺腑，泡茶饮之则味甘而醇郁，是一种食药兼用的优良品种。经常饮用，有散风清热、清肝明目、养颜美容和解毒抗炎强身的功效与作用，能增强毛细血管抵抗力，抑制毛细血管的通性。&lt;/p&gt;\n&lt;p&gt;杭白菊根据采摘时间及花苞开放程度不同，分为胎菊、娃娃菊等。胎菊是杭白菊中最上品的一种，第一次在杭白菊花朵未完全张开的时候摘收下来的为胎菊，前两次采摘的质量最好，经干燥加工出来后为特级花选用的是头序花蕾初开的嫩芽，精心的蒸制、烘焙而成，具有独特的味道，以它的稀少而颇为珍贵。&lt;/p&gt;');
DROP TABLE IF EXISTS `yct_document_label`;
CREATE TABLE `yct_document_label` (
  `dlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL,
  `mid` int(11) NOT NULL DEFAULT '0',
  `labelname` varchar(100) NOT NULL,
  PRIMARY KEY (`dlid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_document_message`;
CREATE TABLE `yct_document_message` (
  `dmid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `adminid` int(11) unsigned NOT NULL DEFAULT '0',
  `ipadd` varchar(11) NOT NULL DEFAULT '0',
  `lng` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `recontent` text NOT NULL,
  `isreply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `retime` int(11) unsigned NOT NULL DEFAULT '0',
  `support` int(7) unsigned NOT NULL DEFAULT '0',
  `oppose` int(7) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `dmid` (`dmid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_enquiry`;
CREATE TABLE `yct_enquiry` (
  `eid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enquirysn` varchar(50) NOT NULL,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `linkman` varchar(100) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `editresult` text NOT NULL,
  UNIQUE KEY `eid` (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_enquiry_info`;
CREATE TABLE `yct_enquiry_info` (
  `eiid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eid` int(11) unsigned NOT NULL DEFAULT '0',
  `did` int(11) unsigned NOT NULL DEFAULT '0',
  `tsn` varchar(50) NOT NULL,
  `title` varchar(250) NOT NULL,
  `amount` int(8) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  UNIQUE KEY `eiid` (`eiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_filename`;
CREATE TABLE `yct_filename` (
  `fiid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL DEFAULT '',
  `filetitle` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) NOT NULL DEFAULT '',
  `extension` varchar(80) NOT NULL,
  `filetype` varchar(50) NOT NULL DEFAULT 'img',
  `filepath` varchar(200) NOT NULL DEFAULT '',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `iswidth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pathnow` smallint(5) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `picid` (`fiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('120', 'admin', '', '20170713170024_824.png', 'png', 'img', 'upfile/2017/07/', '1499936424', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('113', 'admin', '', '20170713154203_810.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499931723', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('112', 'admin', '', '20170713152408_980.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499930648', '2', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('95', 'admin', '', '20170712122820_839.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499833700', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('96', 'admin', '', '20170712122849_816.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499833729', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('97', 'admin', '', '20170712122914_177.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499833754', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('98', 'admin', '', '20170712130209_719.png', 'png', 'img', 'upfile/2017/07/', '1499835729', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('99', 'admin', '', '20170712151032_315.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499843432', '2', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('100', 'admin', '', '20170712151131_672.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499843491', '2', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('101', 'admin', '', '20170712151309_561.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499843589', '2', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('102', 'admin', '', '20170712151411_367.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499843651', '2', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('103', 'admin', '', '20170713102943_179.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499912983', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('104', 'admin', '', '20170713110215_389.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499914935', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('105', 'admin', '', '20170713141633_954.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499926593', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('106', 'admin', '', '20170713142836_612.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499927316', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('107', 'admin', '', '20170713142944_431.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499927384', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('108', 'admin', '', '20170713144436_641.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499928276', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('109', 'admin', '', '20170713144508_657.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499928308', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('110', 'admin', '', '20170713152250_990.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499930570', '2', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('111', 'admin', '', '20170713152334_137.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499930614', '2', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('122', 'admin', '', '20170713170239_221.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499936559', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('121', 'admin', '', '20170713170130_728.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499936490', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('114', 'admin', '', '20170713155302_173.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499932382', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('115', 'admin', '', '20170713155441_954.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499932481', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('116', 'admin', '', '20170713155607_656.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499932567', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('117', 'admin', '', '20170713155654_401.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499932614', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('118', 'admin', '', '20170713155804_339.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499932684', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('119', 'admin', '', '20170713155845_265.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499932725', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('90', 'admin', '', '2017', 'dir', 'dir', 'upfile/', '1499831495', '0', '0');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('91', 'admin', '', '07', 'dir', 'dir', 'upfile/2017/', '1499831495', '0', '1');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('94', 'admin', '', '20170712122649_778.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499833609', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('93', 'admin', '', '20170712115410_269.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499831650', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('123', 'admin', '', '20170713170310_909.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499936590', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('124', 'admin', '', '20170713170422_649.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499936662', '1', '2');
INSERT INTO `yct_filename` ( `fiid`, `username`, `filetitle`, `filename`, `extension`, `filetype`, `filepath`, `addtime`, `iswidth`, `pathnow` ) VALUES  ('125', 'admin', '', '20170714083328_653.jpg', 'jpg', 'img', 'upfile/2017/07/', '1499992408', '1', '2');
DROP TABLE IF EXISTS `yct_form_attr`;
CREATE TABLE `yct_form_attr` (
  `faid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fgid` int(11) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) NOT NULL DEFAULT '50',
  `typename` varchar(200) NOT NULL DEFAULT '',
  `typeremark` varchar(200) NOT NULL,
  `attrname` varchar(150) NOT NULL DEFAULT '',
  `inputtype` varchar(20) NOT NULL DEFAULT 'string',
  `attrvalue` text NOT NULL,
  `validatetext` varchar(150) NOT NULL DEFAULT '',
  `attrsize` smallint(3) NOT NULL DEFAULT '20',
  `attrrow` smallint(3) NOT NULL DEFAULT '10',
  `attrlenther` smallint(3) NOT NULL DEFAULT '50',
  `isclass` tinyint(1) NOT NULL DEFAULT '1',
  `isvalidate` tinyint(1) NOT NULL DEFAULT '0',
  `isline` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`faid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_form_attr` ( `faid`, `fgid`, `pid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `validatetext`, `attrsize`, `attrrow`, `attrlenther`, `isclass`, `isvalidate`, `isline` ) VALUES  ('1', '1', '1', '姓名', '', 'yyname', 'string', '', '', '40', '5', '250', '1', '1', '0');
INSERT INTO `yct_form_attr` ( `faid`, `fgid`, `pid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `validatetext`, `attrsize`, `attrrow`, `attrlenther`, `isclass`, `isvalidate`, `isline` ) VALUES  ('2', '1', '2', '手机号码', '', 'tel', 'string', '', '/^(1)[0-9]{10}$/', '40', '5', '250', '1', '1', '0');
INSERT INTO `yct_form_attr` ( `faid`, `fgid`, `pid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `validatetext`, `attrsize`, `attrrow`, `attrlenther`, `isclass`, `isvalidate`, `isline` ) VALUES  ('4', '1', '4', '咨询类型', '', 'fftype', 'select', '咨询\n投诉\n表扬', '', '20', '5', '250', '1', '0', '0');
INSERT INTO `yct_form_attr` ( `faid`, `fgid`, `pid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `validatetext`, `attrsize`, `attrrow`, `attrlenther`, `isclass`, `isvalidate`, `isline` ) VALUES  ('5', '1', '3', 'E-mail', '', 'email', 'string', '', '/^[\\w\\-\\.]+@[\\w\\-\\.]+(\\.\\w+)+$/', '60', '5', '250', '1', '1', '0');
INSERT INTO `yct_form_attr` ( `faid`, `fgid`, `pid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `validatetext`, `attrsize`, `attrrow`, `attrlenther`, `isclass`, `isvalidate`, `isline` ) VALUES  ('6', '1', '5', '咨询内容', '', 'ffcontent', 'text', '', '', '80', '10', '250', '1', '0', '0');
DROP TABLE IF EXISTS `yct_form_group`;
CREATE TABLE `yct_form_group` (
  `fgid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '50',
  `lng` varchar(50) NOT NULL DEFAULT '',
  `formgroupname` varchar(200) NOT NULL DEFAULT '',
  `formcode` varchar(80) NOT NULL DEFAULT '',
  `pic` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `successtext` text NOT NULL,
  `template` varchar(150) NOT NULL,
  `emailatt` varchar(100) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `iswap` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isseccode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ismail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mailcode` varchar(100) NOT NULL,
  `putmail` varchar(100) NOT NULL,
  `inputtime` int(5) unsigned NOT NULL DEFAULT '300',
  `purview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issms` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `smscode` varchar(100) NOT NULL,
  `titlestyle` varchar(200) NOT NULL DEFAULT '{typename}-{sitename}',
  PRIMARY KEY (`fgid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_form_group` ( `fgid`, `pid`, `lng`, `formgroupname`, `formcode`, `pic`, `content`, `successtext`, `template`, `emailatt`, `addtime`, `isclass`, `ismenu`, `iswap`, `isseccode`, `ismail`, `mailcode`, `putmail`, `inputtime`, `purview`, `issms`, `smscode`, `titlestyle` ) VALUES  ('1', '50', 'cn', '信息反馈', 'feedback', 'upfile/type_pic.jpg', '', '', 'form', 'emailatt', '1404626175', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '', '{typename}-{sitename}');
DROP TABLE IF EXISTS `yct_form_value`;
CREATE TABLE `yct_form_value` (
  `fvid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fgid` int(11) unsigned NOT NULL DEFAULT '0',
  `did` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `retime` int(11) unsigned NOT NULL DEFAULT '0',
  `ipadd` varchar(11) NOT NULL DEFAULT '0',
  `isreply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `recontent` text NOT NULL,
  `yyname` varchar(250) NOT NULL,
  `tel` varchar(250) NOT NULL,
  `fftype` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `ffcontent` text NOT NULL,
  PRIMARY KEY (`fvid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_keylink`;
CREATE TABLE `yct_keylink` (
  `kid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `pid` int(11) unsigned NOT NULL DEFAULT '50',
  `mid` int(11) unsigned NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  `hit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keywordname` varchar(200) NOT NULL DEFAULT '',
  `linkurl` varchar(220) NOT NULL DEFAULT '',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isreplace` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`kid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_keylink_type`;
CREATE TABLE `yct_keylink_type` (
  `ktid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(20) NOT NULL,
  `mid` int(11) unsigned NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  `keytypename` varchar(200) NOT NULL DEFAULT '',
  `keyworklist` text NOT NULL,
  `description` text NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  UNIQUE KEY `ktid` (`ktid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_lng`;
CREATE TABLE `yct_lng` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `lng` varchar(50) NOT NULL DEFAULT '',
  `lngtitle` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `lockin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `iswap` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isopen` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isuptype` tinyint(1) unsigned NOT NULL,
  `ispack` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `packname` varchar(100) NOT NULL,
  `sitename` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `copyright` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_lng` ( `id`, `pid`, `lng`, `lngtitle`, `url`, `lockin`, `iswap`, `isopen`, `isuptype`, `ispack`, `packname`, `sitename`, `keyword`, `description`, `copyright` ) VALUES  ('1', '1', 'cn', '简体中文版', '', '1', '1', '1', '0', '0', 'china', '', '', '', '');
INSERT INTO `yct_lng` ( `id`, `pid`, `lng`, `lngtitle`, `url`, `lockin`, `iswap`, `isopen`, `isuptype`, `ispack`, `packname`, `sitename`, `keyword`, `description`, `copyright` ) VALUES  ('2', '3', 'en', 'English', '', '1', '0', '1', '0', '0', '', '', '', '', '');
INSERT INTO `yct_lng` ( `id`, `pid`, `lng`, `lngtitle`, `url`, `lockin`, `iswap`, `isopen`, `isuptype`, `ispack`, `packname`, `sitename`, `keyword`, `description`, `copyright` ) VALUES  ('3', '2', 'big5', '繁体中文版', '', '1', '1', '1', '1', '0', '', '', '', '', '');
DROP TABLE IF EXISTS `yct_lngpack`;
CREATE TABLE `yct_lngpack` (
  `lpid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) NOT NULL DEFAULT '50',
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `title` varchar(150) NOT NULL,
  `keycode` varchar(50) NOT NULL DEFAULT '',
  `langstr` text NOT NULL,
  `lockin` tinyint(1) NOT NULL DEFAULT '1',
  `typeid` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `lpid` (`lpid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('1', '50', 'cn', '网站名称', 'sitename', '元长泰茶叶', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('2', '50', 'cn', '关键字', 'keyword', '元长泰茶叶自有生产实验基地位于核心产区狮峰及白鹤峰区域，基地山清水秀，阳光充足，拥有稀少的西湖龙井群体种，并坚持以传统的环保技术养护管理。每年抽样质检都达到国家甚至国际高标准，公司唯一的目标是给广大茶友们提供安全放心，且口味纯正的西湖龙井茶。', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('3', '50', 'cn', '网站简介', 'description', '元长泰茶叶自有生产实验基地位于核心产区狮峰及白鹤峰区域，基地山清水秀，阳光充足，拥有稀少的西湖龙井群体种，并坚持以传统的环保技术养护管理。每年抽样质检都达到国家甚至国际高标准，公司唯一的目标是给广大茶友们提供安全放心，且口味纯正的西湖龙井茶。', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('4', '50', 'cn', '翻页信息', 'pagetext', '共有 $1 条记录 当前第 $2 页/共有 $3 页 每页显示 $4 条', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('5', '50', 'cn', '翻页按钮', 'pagebotton', '首页/上一页/下一页/尾页', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('6', '50', 'cn', '跳转页按钮', 'gopageurl', ' 跳转至 $1 页', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('7', '50', 'cn', '输入错误', 'inputerr', '信息输入有错误，请返回检查并重新输入', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('8', '50', 'cn', '验证码输入错误', 'seescodeerr', '验证码输入错误或为空，请重新输入！', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('9', '50', 'cn', '返回重新填写', 'gobackbotton', '返回重新填写', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('10', '50', 'cn', '请不要重复提交', 'repeatinput', '抱歉：您刚才已经提交，请不要再重复提交！', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('11', '50', 'cn', '返回默认地址', 'gobackurlbotton', '返回默认地址', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('12', '50', 'cn', '登陆会员', 'memberlogin', '立即登陆', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('13', '50', 'cn', '未登陆会员', 'memberloginerr', '抱歉：当前仅允许会员操作，请登陆会员，如不是会员请注册！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('14', '50', 'cn', '权限不够', 'memberpuverr', '抱歉：您的权限不足当前操作！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('15', '50', 'cn', '会员栏目名称', 'membertitle', '会员中心', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('16', '50', 'cn', '购物车栏目名称', 'ordertitle', '购物车', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('17', '50', 'cn', '会员主页标题', 'member_title', '会员中心', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('18', '50', 'cn', '会员登陆输入错误', 'loing_input_err', '用户名或密码输入错误，请返回重新输入！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('19', '50', 'en', '姓名、内容或其它填写错误', 'forum_input_err', 'Name, content or other fill in error, please return to re-fill!', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('20', '50', 'cn', '禁用受保护用户', 'member_memlock', '错误：您当前使用的用户名已被禁用，请换一个用户名进行登陆！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('21', '50', 'cn', '登陆失败', 'login_err', '抱歉：用户登陆失败，请检查用户名和密码是否正确！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('22', '50', 'cn', 'ucenter数据同步错误', 'ucenter_err', '错误：UCenter接口同步错误，请向管理员解决！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('23', '50', 'cn', '邮件订阅成功', 'invite_ok', '恭喜，您的的邮箱订阅成功，感谢您的支持！', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('24', '50', 'cn', '会员关闭说明', 'mem_close', '抱歉：会员功能已关闭！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('25', '50', 'cn', '用户名已存在', 'mem_reg_no', '用户名已存在', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('26', '50', 'cn', '用户名可以使用', 'mem_reg_ok', '用户名可以使用', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('27', '50', 'cn', '邮箱可以使用', 'mem_regemail_ok', '邮箱可以使用', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('28', '50', 'cn', '邮箱已存在', 'mem_regemail_no', '邮箱已存在', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('29', '50', 'cn', '用户名注意错误提示', 'username_err', '错误：用户名为空或输入错误', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('30', '50', 'cn', '电子邮件输入错误', 'email_err', '错误：E-mail为空或者格式错误', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('31', '50', 'cn', '密码输入错误', 'password_err', '错误：密码为空或输入错误', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('32', '50', 'cn', '确认密码输入错误', 'password2_err', '错误：确认密码为空或输入错误', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('33', '50', 'cn', '两次密码输入不一致', 'password_equal', '错误：两次密码输入不一致，请重新输入', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('34', '50', 'cn', '请确认注册条款', 'agree_empty', '提示：请确认注册条款', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('35', '50', 'cn', '密码过于简单', 'password_len2', '错误：密码过于简单，请返回重新输入', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('36', '50', 'cn', '会员注册失败', 'reg_err', '抱歉：注册失败，请检查相关数据是否输入正确，确认返回重新填写！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('37', '50', 'cn', '用户帐户需要激活', 'username_check', '抱歉：当前帐户未进行激活，请登陆注册邮箱进行激活，如果未收到邮件，请点击重新发送！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('38', '50', 'cn', '重发激活邮件按钮名称', 'checkemail_send', '重发激活邮件', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('39', '50', 'cn', '会员登陆按钮', 'login_botton', '我要登陆会员', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('40', '50', 'cn', '帐户激活失败', 'username_check_no', '抱歉：当前帐户激活失败，请检查帐户是否已经激活或者锁定！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('41', '50', 'cn', '帐户激活成功', 'username_check_ok', '恭喜：当前帐户激活成功，请点击下列按钮进行登陆！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('42', '50', 'cn', '会员激活邮件发送失败', 'username_sendmail_err', '抱歉：会员激活邮件发送失败，请与管理员联系！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('43', '50', 'cn', '会员激活邮件发送成功', 'username_sendmail_ok', '恭喜：当前帐户激活邮件发送成功，请登陆您的邮箱进行查看！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('44', '50', 'cn', '对UCenter中存在的用户进行激活', 'ucenter_check_mess', '提示：当前用户需要进行UCenter激活转换，请点击进行激活', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('45', '50', 'cn', 'UCenter会员激活', 'ucenter_check_botton', '激活会员', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('46', '50', 'cn', '会员注册成功', 'reg_ok', '恭喜：您的会员已注册成功，请点击以下按钮进行登陆！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('47', '50', 'cn', '邮件服务禁用', 'main_send_no', '抱歉：网站已禁用邮件发送，相关功能无法使用，请与管理员系统！ ', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('48', '50', 'cn', '密码成功找回提示说明', 'password_lostok', '恭喜：新密码已成功发送到指定邮箱或手机，请查收并及时对随机密码进行更改！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('49', '50', 'cn', '密码找回失败提示说明', 'password_losterr', '抱歉：您填写的相关信息无法验证通过，请与网站管理员联系！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('50', '50', 'cn', '留言标题错误', 'forum_title_err', '错误：标题为空或输入错误，请返回重新输入！', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('51', '50', 'en', '会员关闭说明', 'mem_close', 'Membership function is turned off!', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('52', '50', 'en', '邮件订阅成功', 'invite_ok', 'Thanks for subscription', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('53', '50', 'en', '验证码输入错误', 'seescodeerr', 'Verification code input errors, please re-enter!', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('54', '50', 'cn', '留言提交成功', 'forum_input_ok', '恭喜：信息提交成功，感谢您的支持！我们将尽快给予回复！', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('55', '50', 'cn', '留言出现敏感字符提示', 'forum_input_filter', '抱歉：内容中含有敏感字符，请返回重新填写！', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('56', '50', 'cn', '匿名发布称呼', 'forum_anonymity', '游客', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('57', '50', 'cn', '原始密码不能为空', 'oldpassword_err', '错误：原始密码为空或输入不正确，请返回重新填写！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('58', '50', 'cn', '密码验证失败', 'password_input_err', '抱歉：您输入的密码验证失败，请返回重新输入', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('59', '50', 'cn', '退出重新登陆', 'out_botton', '退出重新登陆', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('60', '50', 'cn', '恭喜，密码修改成功', 'password_ok', '恭喜：您的密码已成功修改，请确认退出后重新登陆！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('61', '50', 'cn', '邮件修改成功', 'email_edit_ok', '恭喜：您的邮箱已成功修改，点击以下按钮返回会员中心！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('62', '50', 'cn', '日期填写错误', 'birthday_empty', '错误：请检查您填写的日期是否错误，确认返回重新填写！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('63', '50', 'cn', '姓名、内容或其它填写错误', 'forum_input_err', '姓名、内容或其它填写错误，请返回重新填写！', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('64', '50', 'cn', 'QQ号填写错误', 'qq_empty', '错误：请检查QQ号码是否填写错误，确认返回重新填写！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('65', '50', 'cn', '资料修改成功', 'member_edit_ok', '恭喜：您的个人资料已修改成功，确认返回默认链接地址', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('66', '50', 'cn', '产品不存在或禁止订购', 'order_buy_err', '错误：该商品不存在或不允许订购，请返回重新选择！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('67', '50', 'cn', '继续订购按钮名称', 'oder_buy_goback', '继续订购', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('68', '50', 'cn', '查看购物车按钮名称', 'order_buy_listbotton', '查看购物车', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('69', '50', 'cn', '商品订购数量填写错误提示', 'order_amout_err', '错误：商品订购数量填写错误，请填写大于0的整数！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('70', '50', 'cn', '购物车已清空', 'order_clearcart', '提示：当前购物车已成功清除，请继续选购其它商品！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('71', '50', 'cn', '购物车产品删除', 'order_delcartok', '提示：您所选择的商品已从购物车中删除，确认返回查看购物车商品列表！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('72', '50', 'cn', '未订购商品提示', 'order_nolist', '错误：当前购物车中未添加订购商品，请返回添加后再提交此订购！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('73', '50', 'cn', '会员成功登陆消息', 'login_ok', '恭喜：会员已验证通过，请点击以下按钮进入相关操作页面！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('74', '50', 'cn', '进入会员中心按钮', 'member_center_botton', '进入会员中心', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('75', '50', 'cn', '注册会员按钮', 'member_regbotton', '会员注册', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('76', '50', 'cn', '姓名不能为空', 'alias_empty', '错误：姓名填写错误或为空，请返回重新填写！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('77', '50', 'cn', '地址不能为空', 'address_title', '错误：地址不能为空，请返回重新填写！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('78', '50', 'cn', '电话和手机填写错误', 'tel_empty', '错误：手机和电话未填写或填写为空，请返回重新填写（任意一项即可）！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('79', '50', 'cn', '订单参数错误', 'order_input_err', '抱歉：您所提交的订单参数错误，请返回重新选购！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('80', '50', 'cn', '参数错误，返回上一页', 'db_err', '网站参数传送错误，请返回默认页面！', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('81', '50', 'cn', '新订单', 'ordermain_text_ordertype1', '新订单', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('82', '50', 'cn', '已支付', 'ordermain_text_ordertype2', '已支付', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('83', '50', 'cn', '已发货', 'ordermain_text_ordertype3', '已发货', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('84', '50', 'cn', '等待验货', 'ordermain_text_ordertype4', '等待验货', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('85', '50', 'cn', '结单', 'ordermain_text_ordertype5', '结单', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('86', '50', 'cn', '作废', 'ordermain_text_ordertype6', '作废', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('87', '50', 'cn', '退款', 'ordermain_text_ordertype7', '退款', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('88', '50', 'cn', '退货', 'ordermain_text_ordertype8', '退货', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('89', '50', 'cn', '会员订单信息修改', 'order_memberinfoedit_ok', '恭喜：您的订单信息修改成功，点击按钮返回查看！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('90', '50', 'cn', '订单已成功取消', 'order_edit_del', '提示：您已成功取消当前订购，点击按钮返回默认地址！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('91', '50', 'cn', '留言修改成功', 'forummain_edit_ok', '恭喜：当前留言已成功修改，请点击按钮返回！', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('92', '50', 'cn', '禁止用户名发言', 'forum_mem_username', '抱歉：您暂时无法在本论坛留言，请与管理员联系！', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('93', '50', 'cn', '订单支付失败', 'order_pay_no', '抱歉：您的订单支付失败，如您已被扣款，请及时与我联系！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('94', '50', 'cn', '订单支付成功', 'order_pay_ok', '恭喜：您的订单已支付成功，我们将即刻处理您的订单，感谢您的支持！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('95', '50', 'cn', '查看订单信息按钮名称', 'order_read_botton', '查看订单信息', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('96', '50', 'cn', '在线客服标题名称', 'call_title', '在线客服', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('97', '50', 'cn', '滑动按钮名称', 'call_botton', '在线与我联系', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('98', '50', 'cn', '会员中心按钮名称', 'call_form_botton', '会员中心', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('99', '50', 'cn', '论坛交流按钮名称', 'call_bbs_botton', '论坛交流', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('100', '50', 'cn', '搜索条件错误', 'search_err', '抱歉：您输入的搜索条件错误，请检查关键字是否输入或条件是否选择正确！', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('101', '50', 'cn', '无搜索结果说明', 'search_list_no', '提示：未搜索到符合条件的数据，请返回重新搜索！', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('102', '50', 'en', '首页连接名称', 'hometitle', 'Home', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('103', '50', 'en', '询价已成功取消', 'enquiry_edit_del', 'Successful abolition of Inquiry', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('104', '50', 'en', '会员询价信息修改', 'enquiry_memberinfoedit_ok', 'Inquiry information changed successfully', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('105', '50', 'en', '询价成功', 'enquiry_ok', 'Your inquiry has been successfully submitted, thank you for your support', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('106', '50', 'en', '询价参数错误', 'enquiry_input_err', 'Inquiry parameter error', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('107', '50', 'en', '询价清空', 'enquiry_cleargoods', 'The current products have been successfully cleared Inquiry', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('108', '50', 'en', '询盘主栏目名称', 'enquirytitle', 'Inquiry', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('109', '50', 'en', '询价产品删除', 'enquiry_delok', 'Select the items you removed from the inquiry list', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('110', '50', 'en', '查看询价清单按钮', 'enquiry_into_listbotton', 'View Inquiry List', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('111', '50', 'en', '继续询价按钮名称', 'enquiry_into_goback', 'Continue to choose', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('112', '50', 'en', '产品不存在或选择询价错误', 'enqiry_into_err', 'The product does not exist, or other error, please return to re-select!', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('113', '50', 'en', '浏览器禁用cookie说明', 'ie_cookie_err', 'Cookie disabled browser', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('114', '50', 'en', '在线客服关闭按钮名称', 'close_im', 'Close', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('115', '50', 'en', '无搜索结果说明', 'search_list_no', 'Search content does not exist', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('116', '50', 'en', '搜索条件错误', 'search_err', 'Search condition input error', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('117', '50', 'en', '会员中心按钮名称', 'call_form_botton', 'Member center', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('118', '50', 'en', '论坛交流按钮名称', 'call_bbs_botton', 'Submit message', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('119', '50', 'en', '在线客服标题名称', 'call_title', 'Online Customer Service', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('120', '50', 'en', '滑动按钮名称', 'call_botton', 'Contact Us', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('121', '50', 'en', '查看订单信息按钮名称', 'order_read_botton', 'View Order Details', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('122', '50', 'en', '订单支付成功', 'order_pay_ok', 'Payment orders successfully, thank you for your support', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('123', '50', 'en', '订单支付失败', 'order_pay_no', 'Failure to pay the order, please contact us', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('124', '50', 'en', '禁止用户名发言', 'forum_mem_username', 'The user has banned message, please contact with us', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('125', '50', 'en', '留言修改成功', 'forummain_edit_ok', 'Message modify success', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('126', '50', 'en', '订单已成功取消', 'order_edit_del', 'Order cancel success', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('127', '50', 'en', '会员订单信息修改', 'order_memberinfoedit_ok', 'Thanks for Your Order!Your order was sent to us but requires payment before it can be completed', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('128', '50', 'en', '退货', 'ordermain_text_ordertype8', 'Declined', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('129', '50', 'en', '作废', 'ordermain_text_ordertype6', 'Cancelled', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('130', '50', 'en', '退款', 'ordermain_text_ordertype7', 'Refunded', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('131', '50', 'en', '等待验货', 'ordermain_text_ordertype4', 'Acceptance', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('132', '50', 'en', '结单', 'ordermain_text_ordertype5', 'Completed', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('133', '50', 'en', '已支付', 'ordermain_text_ordertype2', 'Already pay', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('134', '50', 'en', '已发货', 'ordermain_text_ordertype3', 'Shipped', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('135', '50', 'en', '新订单', 'ordermain_text_ordertype1', 'Awaiting Payment', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('136', '50', 'en', '订单参数错误', 'order_input_err', 'Order parameter error', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('137', '50', 'en', '参数错误，返回上一页', 'db_err', 'Parameters error, please return the default URL!', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('138', '50', 'en', '电话和手机填写错误', 'tel_empty', 'Mobile phones or telephone not complete or fill in error', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('139', '50', 'en', '地址不能为空', 'address_title', 'Please fill out the contact address', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('140', '50', 'en', '注册会员按钮', 'member_regbotton', 'Create an Account', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('141', '50', 'en', '收件人不能为空', 'alias_empty', 'Please fill out a contact name', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('142', '50', 'en', '进入会员中心按钮', 'member_center_botton', 'Member Center', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('143', '50', 'en', '会员成功登陆消息', 'login_ok', 'Validation, please click the following through to the corresponding function button!!!!!', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('144', '50', 'en', '未订购商品提示', 'order_nolist', 'Your Shopping Cart is Empty', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('145', '50', 'en', '购物车产品删除', 'order_delcartok', 'Delete success, return to check list order', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('146', '50', 'en', '购物车已清空', 'order_clearcart', 'Your Shopping Cart is Empty', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('147', '50', 'en', '查看购物车按钮名称', 'order_buy_listbotton', 'Your Shopping Cart', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('148', '50', 'en', '商品订购数量填写错误提示', 'order_amout_err', 'Please input the order quantity', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('149', '50', 'en', '继续订购按钮名称', 'oder_buy_goback', 'Continue Shopping', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('150', '50', 'en', '产品不存在或禁止订购', 'order_buy_err', 'The goods does not exist or prohibit the order', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('151', '50', 'en', '资料修改成功', 'member_edit_ok', 'Personal data modified success', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('152', '50', 'en', 'QQ号填写错误', 'qq_empty', 'QQ format error', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('153', '50', 'en', '日期填写错误', 'birthday_empty', 'Time format error', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('154', '50', 'en', '邮件修改成功', 'email_edit_ok', 'Mailbox modify success', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('155', '50', 'en', '退出重新登陆', 'out_botton', 'Login again', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('156', '50', 'en', '恭喜，密码修改成功', 'password_ok', 'User password updated successfully!', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('157', '50', 'en', '密码验证失败', 'password_input_err', 'The current password is wrong!', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('158', '50', 'en', '原始密码不能为空', 'oldpassword_err', 'The original password is empty or input is not correct', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('159', '50', 'en', '匿名发布称呼', 'forum_anonymity', 'Visitor', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('160', '50', 'en', '留言出现敏感字符提示', 'forum_input_filter', 'Error: content containing sensitive characters', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('161', '50', 'en', '留言提交成功', 'forum_input_ok', 'Information submitted to success, thank you for support', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('162', '50', 'en', '留言标题错误', 'forum_title_err', 'Title is empty or input errors', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('163', '50', 'en', '密码找回失败提示说明', 'password_losterr', 'I\'m sorry: fill in the information can\'t verify through the website, please contact with administrator.', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('164', '50', 'en', '密码成功找回提示说明', 'password_lostok', 'The new password has been successfully sent to designated mailbox', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('165', '50', 'en', '邮件发送失败', 'main_send_no', 'Web site has banned mail, please contact with us', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('166', '50', 'en', '会员注册成功', 'reg_ok', 'Member success', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('167', '50', 'en', 'UCenter会员激活', 'ucenter_check_botton', 'Activate members', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('168', '50', 'en', '对UCenter中存在的用户进行激活', 'ucenter_check_mess', 'The current user needs UCenter activate the conversion', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('169', '50', 'en', '会员激活邮件发送成功', 'username_sendmail_ok', 'The current account activated mail sent successfully', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('170', '50', 'en', '会员激活邮件发送失败', 'username_sendmail_err', 'Member activate mail failed', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('171', '50', 'en', '帐户激活成功', 'username_check_ok', 'Account activated success', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('172', '50', 'en', '会员登陆按钮', 'login_botton', 'Log in', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('173', '50', 'en', '帐户激活失败', 'username_check_no', 'Activate failure', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('174', '50', 'en', '重发激活邮件按钮名称', 'checkemail_send', 'Heavy hair the confirmation E-mail', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('175', '50', 'en', '用户帐户需要激活', 'username_check', 'The current account not activated', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('176', '50', 'en', '会员注册失败', 'reg_err', 'Failed to register', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('177', '50', 'en', '密码过于简单', 'password_len2', 'The password is too simple or with the same user name', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('178', '50', 'en', '请确认注册条款', 'agree_empty', 'Please confirm the registration agreement', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('179', '50', 'en', '两次密码输入不一致', 'password_equal', 'Two password input not consistent', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('180', '50', 'en', '确认密码输入错误', 'password2_err', 'Confirm password is empty or input errors', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('181', '50', 'en', '密码输入错误', 'password_err', 'The password is empty or input errors', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('182', '50', 'en', '电子邮件输入错误', 'email_err', 'Your email address is incorrect. Please try again.', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('183', '50', 'en', '用户名注意错误提示', 'username_err', 'Username or input errors. Empty', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('184', '50', 'en', '邮箱已存在', 'mem_regemail_no', 'E-mail already exist', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('185', '50', 'en', '用户名可以使用', 'mem_reg_ok', 'Through the', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('186', '50', 'en', '邮箱可以使用', 'mem_regemail_ok', 'E-mail through', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('187', '50', 'en', '用户名已存在', 'mem_reg_no', 'This ID is not available', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('188', '50', 'en', 'ucenter数据同步错误', 'ucenter_err', 'UCenter interface synchronization error', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('189', '50', 'en', '登陆失败', 'login_err', 'Account disable, user name or password records error', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('190', '50', 'en', '会员登陆输入错误', 'loing_input_err', 'Username or password input error, please return to enter again!!!!!', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('191', '50', 'en', '禁用受保护用户', 'member_memlock', 'Username has been banned, please change user name to third', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('192', '50', 'en', '购物车栏目名称', 'ordertitle', 'View Cart', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('193', '50', 'en', '会员主页标题', 'member_title', 'Member', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('194', '50', 'en', '会员栏目名称', 'membertitle', 'Account', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('195', '50', 'en', '权限不够', 'memberpuverr', 'Access is not enough, prohibit operation!', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('196', '50', 'cn', '浏览器禁用cookie说明', 'ie_cookie_err', '浏览器禁用Cookie', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('197', '50', 'cn', '在线客服关闭按钮名称', 'close_im', '关停窗口', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('198', '50', 'en', '未登陆会员', 'memberloginerr', 'Access is not enough, prohibit operation! Please sign!!', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('199', '50', 'cn', '产品不存在或选择询价错误', 'enqiry_into_err', '错误：该产品不存在或其它错误，请返回重新选择！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('200', '50', 'cn', '继续询价按钮名称', 'enquiry_into_goback', '继续选择询价', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('201', '50', 'cn', '查看询价清单按钮', 'enquiry_into_listbotton', '查看询价清单', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('202', '50', 'en', '返回默认地址', 'gobackurlbotton', 'Default URL', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('203', '50', 'en', '登陆会员', 'memberlogin', 'Log IN', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('204', '50', 'en', '请不要重复提交', 'repeatinput', 'You have to submit, please and repeated operation', '0', '5');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('205', '50', 'en', '返回重新填写', 'gobackbotton', 'Return to', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('206', '50', 'cn', '询盘主栏目名称', 'enquirytitle', '在线询价', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('207', '50', 'cn', '询价产品删除', 'enquiry_delok', '提示：您所选择的商品已从询价列表中删除，确认返回查看询价商品列表！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('208', '50', 'cn', '询价清空', 'enquiry_cleargoods', '提示：当前询价产品已成功清除，请选择其它商品进行询价！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('209', '50', 'cn', '询价参数错误', 'enquiry_input_err', '抱歉：您所提交的询价参数错误，请返回重新填写！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('210', '50', 'cn', '询价成功', 'enquiry_ok', '恭喜：您的询价已成功提交，感谢您的支持！我们将即刻处理您的询价，请耐心等候我们的回复！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('211', '50', 'en', '输入错误', 'inputerr', 'Input error, please enter again', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('212', '50', 'en', '跳转页按钮', 'gopageurl', 'Jump $1', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('213', '50', 'en', '翻页信息', 'pagetext', 'Total $1 $2 records Current page / Total $3 $4 per page', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('214', '50', 'en', '翻页按钮', 'pagebotton', 'Home/Previous/Next/Last', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('215', '50', 'en', '网站简介', 'description', ' is a professional enterprise web site management software, it has: completely open source (PHP + MySQL), generating static page, release the model for Jane numerous conversion, member, order, messages, form and so on, enough to make your website to fully meet the need of the Internet.', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('216', '50', 'cn', '询价已成功取消', 'enquiry_edit_del', '提示：您已成功取消当前询价，点击按钮返回默认地址！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('217', '50', 'cn', '会员询价信息修改', 'enquiry_memberinfoedit_ok', '恭喜：您的询价联系信息修改成功，点击按钮返回查看！', '0', '2');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('218', '50', 'en', '关键字', 'keyword', ',cms,,v6,v6,ecisp,earclink', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('219', '50', 'en', '网站名称', 'sitename', '元长泰茶叶', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('220', '50', 'cn', '首页连接名称', 'hometitle', '首页', '0', '3');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('221', '50', 'en', '手机号码格式错误或空', 'moblie_validate', 'Error: enter your mobile phone number is empty or not in the correct format, please return to input!', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('222', '50', 'en', '手机验证失败', 'moblie_validateerr', 'Error: your mobile phone number validation failed, please return to verify!', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('223', '50', 'en', '验证时间无效', 'moblie_timeerr', 'Error: invalid verification time, please return to receive mobile phone verification code!', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('224', '50', 'en', '手机绑定成功', 'moblie_ok', 'Congratulations: your mobile phone has binding success, such as the need to modify the return to mobile phone service to verify the binding!', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('225', '50', 'en', '绑定解除或修改', 'moblie_edit', 'Congratulations: mobile phone binding you has been lifted, please return to the mobile phone binding!', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('226', '50', 'en', '短信功能禁用', 'sms_send_no', 'Error: mobile phone short message function is disabled, the relevant features are not available, please contact the system administrator!', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('227', '50', 'en', '手机未绑定，相关功能操作失败', 'moblie_bangdinerr', 'Error: The mobile phone is not bound, this function operation failed!', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('228', '50', 'cn', '手机未绑定，相关功能操作失败', 'moblie_bangdinerr', '错误：因帐户手机未绑定，此功能操作失败！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('229', '50', 'cn', '短信功能禁用', 'sms_send_no', '抱歉：手机短信功能已禁用，相关功能无法使用，请与管理员系统！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('230', '50', 'cn', '绑定解除或修改', 'moblie_edit', '恭喜：您的手机绑定已经解除，请返回重新对手机进行绑定！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('231', '50', 'cn', '手机绑定成功', 'moblie_ok', '恭喜：您的手机已绑定成功，如需修改请返回手机服务进行重新验证绑定！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('232', '50', 'cn', '验证时间无效', 'moblie_timeerr', '错误：验证时间无效，请返回重新接收手机验证码！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('233', '50', 'cn', '手机验证失败', 'moblie_validateerr', '抱歉：您的手机号码验证失败，请返回重新验证！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('234', '50', 'cn', '手机号码格式错误或空', 'moblie_validate', '错误：您输入的手机号码为空或者格式不正确，请返回重新输入！', '0', '1');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('235', '50', 'cn', '功能关闭', 'close_err', '抱歉，当前功能已关闭使用，如有疑问请与网站管理员联系！', '0', '4');
INSERT INTO `yct_lngpack` ( `lpid`, `pid`, `lng`, `title`, `keycode`, `langstr`, `lockin`, `typeid` ) VALUES  ('236', '50', 'en', '功能关闭', 'close_err', 'Sorry, function has been closed, if you have any questions please contact the webmaster! ', '0', '4');
DROP TABLE IF EXISTS `yct_logs`;
CREATE TABLE `yct_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `onlineip` int(15) NOT NULL,
  `addtime` int(11) NOT NULL,
  `actions` varchar(150) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('1', 'admin', '2130706433', '1499828788', '登陆管理平台', '成功 user=admin');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('2', 'admin', '2130706433', '1499828886', '分类添加', '成功 typename=品味好茶');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('3', 'admin', '2130706433', '1499828906', '分类添加', '成功 typename=新闻资讯');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('4', 'admin', '2130706433', '1499828937', '分类添加', '成功 typename=文化');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('5', 'admin', '2130706433', '1499828967', '分类修改', '成功 typename=文化 tid=3');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('6', 'admin', '2130706433', '1499828977', '分类修改', '成功 typename=品牌文化 tid=3');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('7', 'admin', '2130706433', '1499829005', '分类添加', '成功 typename=合作伙伴');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('8', 'admin', '2130706433', '1499829054', '模型类别添加', '成功 modelname=加盟');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('9', 'admin', '2130706433', '1499829073', '模型类别修改', '成功 modelname=合作 id=4');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('10', 'admin', '2130706433', '1499829086', '分类添加', '成功 typename=招商加盟');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('11', 'admin', '2130706433', '1499829097', '分类修改', '成功 typename=招商加盟 tid=5');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('12', 'admin', '2130706433', '1499829179', '参数设置', '成功');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('13', 'admin', '2130706433', '1499829188', '表单类别修改', '成功 formgroupname=信息反馈 id=1');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('14', 'admin', '2130706433', '1499830826', '登陆管理平台', '成功 user=admin');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('15', 'admin', '2130706433', '1499831499', '广告修改', '成功 id=1');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('16', 'admin', '2130706433', '1499831505', '广告内容删除', '成功 id=2,');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('17', 'admin', '2130706433', '1499831653', '广告修改', '成功 id=1');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('18', 'admin', '2130706433', '1499833560', '分类添加', '成功 typename=西湖龙井');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('19', 'admin', '2130706433', '1499833568', '分类添加', '成功 typename=杭白菊');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('20', 'admin', '2130706433', '1499833579', '分类添加', '成功 typename=九曲红梅');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('21', 'admin', '2130706433', '1499833589', '分类添加', '成功 typename=梅占金骏眉');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('22', 'admin', '2130706433', '1499833598', '分类添加', '成功 typename=原味茶包');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('23', 'admin', '2130706433', '1499833623', '内容添加', '成功 id=3');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('24', 'admin', '2130706433', '1499833702', '内容添加', '成功 id=4');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('25', 'admin', '2130706433', '1499833731', '内容添加', '成功 id=5');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('26', 'admin', '2130706433', '1499833756', '内容添加', '成功 id=6');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('27', 'admin', '2130706433', '1499834721', '内容添加', '成功 id=7');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('28', 'admin', '2130706433', '1499834739', '内容添加', '成功 id=8');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('29', 'admin', '2130706433', '1499834741', '内容添加', '成功 id=9');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('30', 'admin', '2130706433', '1499835591', '模型字段添加', '成功 typename=首条展示');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('31', 'admin', '2130706433', '1499835612', '内容添加', '成功 id=10');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('32', 'admin', '2130706433', '1499835626', '模型字段添加', '成功 typename=副标题');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('33', 'admin', '2130706433', '1499835634', '模型字段添加', '成功 typename=作者');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('34', 'admin', '2130706433', '1499835639', '模型字段添加', '成功 typename=来源');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('35', 'admin', '2130706433', '1499835655', '字段排序', '成功');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('36', 'admin', '2130706433', '1499835665', '内容添加', '成功 id=11');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('37', 'admin', '2130706433', '1499835706', '模型字段修改', '成功 typename=首条展示 att=list id=60');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('38', 'admin', '2130706433', '1499835720', '内容修改', '成功 id=10');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('39', 'admin', '2130706433', '1499835731', '内容修改', '成功 id=10');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('40', 'admin', '2130706433', '1499835883', '内容添加', '成功 id=12');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('41', 'admin', '2130706433', '1499836279', '模型字段修改', '成功 typename=首条展示 att=list id=60');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('42', 'admin', '2130706433', '1499836293', '内容修改', '成功 id=12');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('43', 'admin', '2130706433', '1499837340', '内容修改', '成功 id=12');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('44', 'admin', '2130706433', '1499842839', '内容删除', '成功 id=11,10,');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('45', 'admin', '2130706433', '1499842842', '内容添加', '成功 id=13');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('46', 'admin', '2130706433', '1499842844', '内容添加', '成功 id=14');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('47', 'admin', '2130706433', '1499842847', '内容添加', '成功 id=15');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('48', 'admin', '2130706433', '1499843246', '分类添加', '成功 typename=关于我们');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('49', 'admin', '2130706433', '1499843443', '内容添加', '成功 id=16');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('50', 'admin', '2130706433', '1499843493', '内容添加', '成功 id=17');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('51', 'admin', '2130706433', '1499843591', '内容添加', '成功 id=18');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('52', 'admin', '2130706433', '1499843654', '内容添加', '成功 id=19');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('53', 'admin', '2130706433', '1499846565', '分类修改', '成功 typename=关于我们 tid=11');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('54', 'admin', '2130706433', '1499848212', '内容添加', '成功 id=20');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('55', 'admin', '2130706433', '1499848214', '内容添加', '成功 id=21');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('56', 'admin', '2130706433', '1499848216', '内容添加', '成功 id=22');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('57', 'admin', '2130706433', '1499848219', '内容添加', '成功 id=23');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('58', 'admin', '2130706433', '1499850364', '内容删除', '成功 id=23,22,21,20,');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('59', 'admin', '2130706433', '1499905873', '登陆管理平台', '成功 user=admin');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('60', 'admin', '2130706433', '1499912986', '分类修改', '成功 typename=新闻资讯 tid=2');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('61', 'admin', '2130706433', '1499913967', '分类添加', '成功 typename=新闻资讯');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('62', 'admin', '2130706433', '1499914937', '内容修改', '成功 id=15');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('63', 'admin', '2130706433', '1499914947', '内容修改', '成功 id=14');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('64', 'admin', '2130706433', '1499914954', '内容修改', '成功 id=13');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('65', 'admin', '2130706433', '1499914961', '内容修改', '成功 id=12');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('66', 'admin', '2130706433', '1499916673', '内容修改', '成功 id=15');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('67', 'admin', '2130706433', '1499917658', '内容添加', '成功 id=24');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('68', 'admin', '2130706433', '1499924266', '内容添加', '成功 id=25');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('69', 'admin', '2130706433', '1499924270', '内容添加', '成功 id=26');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('70', 'admin', '2130706433', '1499924272', '内容添加', '成功 id=27');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('71', 'admin', '2130706433', '1499924275', '内容添加', '成功 id=28');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('72', 'admin', '2130706433', '1499924464', '内容删除', '成功 id=28,27,26,25,');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('73', 'admin', '2130706433', '1499924852', '内容设置', '成功 id=24,15,14,13,12,0');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('74', 'admin', '2130706433', '1499924870', '内容设置', '成功 id=24,15,14,13,12,0');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('75', 'admin', '2130706433', '1499925672', '内容修改', '成功 id=12');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('76', 'admin', '2130706433', '1499925700', '内容修改', '成功 id=24');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('77', 'admin', '2130706433', '1499925705', '内容修改', '成功 id=15');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('78', 'admin', '2130706433', '1499925709', '内容修改', '成功 id=14');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('79', 'admin', '2130706433', '1499925715', '内容修改', '成功 id=13');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('80', 'admin', '2130706433', '1499926392', '内容删除', '成功 id=15,14,13,12,');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('81', 'admin', '2130706433', '1499926597', '分类修改', '成功 typename=品牌文化 tid=3');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('82', 'admin', '2130706433', '1499926621', '分类添加', '成功 typename=荣誉资质');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('83', 'admin', '2130706433', '1499926650', '分类添加', '成功 typename=品牌展示');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('84', 'admin', '2130706433', '1499927207', '分类添加', '成功 typename=品牌文化');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('85', 'admin', '2130706433', '1499927218', '分类排序', '成功');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('86', 'admin', '2130706433', '1499927242', '分类修改', '成功 typename=品牌文化 tid=3');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('87', 'admin', '2130706433', '1499927391', '内容修改', '成功 id=29');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('88', 'admin', '2130706433', '1499927441', '内容修改', '成功 id=29');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('89', 'admin', '2130706433', '1499927452', '分类修改', '成功 typename=品牌文化 tid=3');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('90', 'admin', '2130706433', '1499928263', '分类修改', '成功 typename=荣誉资质 tid=13');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('91', 'admin', '2130706433', '1499928300', '内容添加', '成功 id=30');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('92', 'admin', '2130706433', '1499928325', '内容添加', '成功 id=31');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('93', 'admin', '2130706433', '1499928800', '内容添加', '成功 id=32');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('94', 'admin', '2130706433', '1499928802', '内容添加', '成功 id=33');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('95', 'admin', '2130706433', '1499928960', '内容添加', '成功 id=34');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('96', 'admin', '2130706433', '1499930356', '内容删除', '成功 id=34,33,');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('97', 'admin', '2130706433', '1499930363', '内容删除', '成功 id=32,');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('98', 'admin', '2130706433', '1499930538', '内容添加', '成功 id=35');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('99', 'admin', '2130706433', '1499930549', '内容添加', '成功 id=36');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('100', 'admin', '2130706433', '1499930556', '内容添加', '成功 id=37');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('101', 'admin', '2130706433', '1499930563', '内容添加', '成功 id=38');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('102', 'admin', '2130706433', '1499930571', '内容添加', '成功 id=39');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('103', 'admin', '2130706433', '1499930616', '内容添加', '成功 id=40');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('104', 'admin', '2130706433', '1499930650', '内容添加', '成功 id=41');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('105', 'admin', '2130706433', '1499930693', '分类修改', '成功 typename=品牌展示 tid=14');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('106', 'admin', '2130706433', '1499930697', '分类删除', '成功 tid=11');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('107', 'admin', '2130706433', '1499930756', '内容添加', '成功 id=42');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('108', 'admin', '2130706433', '1499930765', '内容添加', '成功 id=43');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('109', 'admin', '2130706433', '1499930768', '内容添加', '成功 id=44');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('110', 'admin', '2130706433', '1499930938', '分类修改', '成功 typename=品牌展示 tid=14');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('111', 'admin', '2130706433', '1499931090', '模型类别修改', '成功 modelname=展示 id=7');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('112', 'admin', '2130706433', '1499931679', '分类修改', '成功 typename=合作伙伴 tid=4');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('113', 'admin', '2130706433', '1499931726', '分类修改', '成功 typename=合作伙伴 tid=4');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('114', 'admin', '2130706433', '1499931788', '分类修改', '成功 typename=品牌展示 tid=14');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('115', 'admin', '2130706433', '1499931807', '分类修改', '成功 typename=品牌展示 tid=14');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('116', 'admin', '2130706433', '1499931815', '分类修改', '成功 typename=合作伙伴 tid=4');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('117', 'admin', '2130706433', '1499932331', '模型字段修改', '成功 typename=代表图片 att=pic id=34');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('118', 'admin', '2130706433', '1499932343', '模型字段修改', '成功 typename=合作伙伴 att=title id=30');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('119', 'admin', '2130706433', '1499932360', '模型字段修改', '成功 typename=简介 att=summary id=35');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('120', 'admin', '2130706433', '1499932370', '模型字段修改', '成功 typename=内容 att=content id=36');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('121', 'admin', '2130706433', '1499932390', '内容添加', '成功 id=45');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('122', 'admin', '2130706433', '1499932402', '模型字段修改', '成功 typename=简介 att=summary id=35');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('123', 'admin', '2130706433', '1499932418', '字段排序', '成功');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('124', 'admin', '2130706433', '1499932483', '内容添加', '成功 id=46');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('125', 'admin', '2130706433', '1499932570', '内容添加', '成功 id=47');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('126', 'admin', '2130706433', '1499932616', '内容添加', '成功 id=48');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('127', 'admin', '2130706433', '1499932686', '内容添加', '成功 id=49');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('128', 'admin', '2130706433', '1499932727', '内容添加', '成功 id=50');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('129', 'admin', '2130706433', '1499932749', '语言项修改', '成功 title=关键字 id=2');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('130', 'admin', '2130706433', '1499932756', '语言项修改', '成功 title=网站简介 id=3');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('131', 'admin', '2130706433', '1499932763', '参数设置', '成功');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('132', 'admin', '2130706433', '1499933612', '模型类别添加', '成功 modelname=联系');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('133', 'admin', '2130706433', '1499933633', '分类添加', '成功 typename=联系我们');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('134', 'admin', '2130706433', '1499933639', '分类修改', '成功 typename=品牌文化 tid=3');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('135', 'admin', '2130706433', '1499933984', '内容修改', '成功 id=51');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('136', 'admin', '2130706433', '1499933996', '模型字段添加', '成功 typename=简介');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('137', 'admin', '2130706433', '1499934002', '模型字段添加', '成功 typename=电话');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('138', 'admin', '2130706433', '1499934051', '分类添加', '成功 typename=联系我们');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('139', 'admin', '2130706433', '1499934067', '内容修改', '成功 id=52');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('140', 'admin', '2130706433', '1499934077', '分类删除', '成功 tid=16');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('141', 'admin', '2130706433', '1499934093', '模型字段添加', '成功 typename=公开价格');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('142', 'admin', '2130706433', '1499934099', '模型字段添加', '成功 typename=购买价格');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('143', 'admin', '2130706433', '1499934110', '模型字段添加', '成功 typename=来源');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('144', 'admin', '2130706433', '1499934114', '模型字段添加', '成功 typename=作者');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('145', 'admin', '2130706433', '1499934136', '内容修改', '成功 id=52');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('146', 'admin', '2130706433', '1499934157', '字段排序', '成功');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('147', 'admin', '2130706433', '1499934178', '模型字段添加', '成功 typename=代表图片');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('148', 'admin', '2130706433', '1499934222', '内容修改', '成功 id=52');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('149', 'admin', '2130706433', '1499934230', '模型字段修改', '成功 typename=电话 att=longtitle id=69');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('150', 'admin', '2130706433', '1499934237', '模型字段修改', '成功 typename=电话 att=title id=75');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('151', 'admin', '2130706433', '1499934250', '分类修改', '成功 typename=品牌文化 tid=3');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('152', 'admin', '2130706433', '1499934276', '模型字段修改', '成功 typename=电话 att=longtitle id=69');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('153', 'admin', '2130706433', '1499934290', '模型字段修改', '成功 typename=标题 att=title id=75');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('154', 'admin', '2130706433', '1499934304', '内容修改', '成功 id=52');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('155', 'admin', '2130706433', '1499934607', '分类修改', '成功 typename=联系我们 tid=17');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('156', 'admin', '2130706433', '1499936441', '内容添加', '成功 id=53');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('157', 'admin', '2130706433', '1499936492', '内容添加', '成功 id=54');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('158', 'admin', '2130706433', '1499936560', '内容添加', '成功 id=55');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('159', 'admin', '2130706433', '1499936592', '内容添加', '成功 id=56');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('160', 'admin', '2130706433', '1499936664', '分类修改', '成功 typename=品味好茶 tid=1');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('161', 'admin', '2130706433', '1499936668', '分类修改', '成功 typename=品味好茶 tid=1');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('162', 'admin', '2130706433', '1499936879', '内容修改', '成功 id=56');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('163', 'admin', '2130706433', '1499936885', '内容修改', '成功 id=55');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('164', 'admin', '2130706433', '1499937286', '内容删除', '成功 id=9,8,7,6,5,4,3,');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('165', 'admin', '2130706433', '1499991603', '登陆管理平台', '成功 user=admin');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('166', 'admin', '2130706433', '1499992411', '内容修改', '成功 id=56');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('167', 'admin', '2130706433', '1499995223', '内容修改', '成功 id=56');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('168', 'admin', '2130706433', '1499997980', '内容修改', '成功 id=56');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('169', 'admin', '2130706433', '1499998415', '内容修改', '成功 id=56');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('170', 'admin', '2130706433', '1499999134', '内容修改', '成功 id=56');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('171', 'admin', '2130706433', '1499999141', '内容修改', '成功 id=55');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('172', 'admin', '2130706433', '1499999145', '内容修改', '成功 id=54');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('173', 'admin', '2130706433', '1499999151', '内容修改', '成功 id=53');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('174', 'admin', '2130706433', '1499999303', '内容修改', '成功 id=56');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('175', 'admin', '2130706433', '1499999683', '分类修改', '成功 typename=招商加盟 tid=5');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('176', 'admin', '2130706433', '1500002064', '分类修改', '成功 typename=荣誉资质 tid=13');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('177', 'admin', '2130706433', '1500002088', '分类修改', '成功 typename=品牌展示 tid=14');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('178', 'admin', '2130706433', '1500002107', '分类修改', '成功 typename=联系我们 tid=17');
INSERT INTO `yct_logs` ( `id`, `username`, `onlineip`, `addtime`, `actions`, `remarks` ) VALUES  ('179', 'admin', '2130706433', '1500002403', '分类修改', '成功 typename=合作伙伴 tid=4');
DROP TABLE IF EXISTS `yct_mailinvite_list`;
CREATE TABLE `yct_mailinvite_list` (
  `mlvlid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mlvid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email` varchar(200) NOT NULL,
  `tel` varchar(80) NOT NULL,
  `address` varchar(200) NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `mlimid` (`mlvlid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_mailinvite_type`;
CREATE TABLE `yct_mailinvite_type` (
  `mlvid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `title` varchar(200) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `purview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mlvid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_mailinvite_type` ( `mlvid`, `lng`, `title`, `content`, `purview`, `isclass`, `addtime` ) VALUES  ('1', 'cn', '参与企业邮件营销', '', '0', '1', '1404632368');
INSERT INTO `yct_mailinvite_type` ( `mlvid`, `lng`, `title`, `content`, `purview`, `isclass`, `addtime` ) VALUES  ('2', 'en', '邮件订阅英文用户', '', '0', '1', '1404665839');
DROP TABLE IF EXISTS `yct_mailsend`;
CREATE TABLE `yct_mailsend` (
  `msid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `title` varchar(200) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `sendhow` int(10) unsigned NOT NULL DEFAULT '0',
  `sendtime` int(11) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_mailsend_log`;
CREATE TABLE `yct_mailsend_log` (
  `mlid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `msid` int(11) unsigned NOT NULL DEFAULT '0',
  `sendmail` text NOT NULL,
  `sendtime` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `mlid` (`mlid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_member`;
CREATE TABLE `yct_member` (
  `userid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `question` varchar(250) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` int(11) unsigned NOT NULL DEFAULT '0',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `zipcode` varchar(20) NOT NULL DEFAULT '0',
  `tel` varchar(30) NOT NULL,
  `mobile` varchar(11) NOT NULL DEFAULT '0',
  `qq` int(11) unsigned NOT NULL DEFAULT '0',
  `msn` varchar(150) NOT NULL,
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `visitcount` smallint(6) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(11) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(11) unsigned NOT NULL DEFAULT '0',
  `mcid` smallint(2) unsigned NOT NULL DEFAULT '1',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ismoblie` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mobliesn` varchar(10) NOT NULL,
  `mobliesntime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_member_attr`;
CREATE TABLE `yct_member_attr` (
  `maid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT '',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '50',
  `typename` varchar(150) NOT NULL DEFAULT '',
  `typeremark` varchar(200) NOT NULL,
  `attrname` varchar(150) NOT NULL DEFAULT '',
  `inputtype` varchar(20) NOT NULL DEFAULT 'string',
  `attrvalue` text NOT NULL,
  `validatetext` varchar(150) NOT NULL DEFAULT '',
  `attrsize` smallint(3) unsigned NOT NULL DEFAULT '20',
  `attrrow` smallint(3) unsigned NOT NULL DEFAULT '10',
  `attrlenther` smallint(3) unsigned NOT NULL DEFAULT '50',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isvalidate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isline` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`maid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_member_class`;
CREATE TABLE `yct_member_class` (
  `mcid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rankname` varchar(150) NOT NULL,
  `isinter` tinyint(1) NOT NULL DEFAULT '0',
  `integra` int(11) NOT NULL DEFAULT '100',
  `isclass` tinyint(1) NOT NULL DEFAULT '1',
  `lockin` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mcid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_member_class` ( `mcid`, `rankname`, `isinter`, `integra`, `isclass`, `lockin` ) VALUES  ('1', '标准会员', '0', '100', '1', '1');
INSERT INTO `yct_member_class` ( `mcid`, `rankname`, `isinter`, `integra`, `isclass`, `lockin` ) VALUES  ('2', '高级会员', '0', '100', '1', '0');
DROP TABLE IF EXISTS `yct_member_value`;
CREATE TABLE `yct_member_value` (
  `mvid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mvid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_menulink`;
CREATE TABLE `yct_menulink` (
  `mlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '50',
  `type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `topmlid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `menuname` varchar(100) NOT NULL DEFAULT '',
  `linkurl` varchar(200) NOT NULL DEFAULT '',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `loadfun` varchar(30) NOT NULL,
  `classname` varchar(50) NOT NULL,
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`mlid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('1', '1', '0', '0', '内容', '', '1', 'article', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('2', '2', '0', '0', '会员', '', '1', 'member', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('3', '3', '0', '0', '订单', '', '1', 'order', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('5', '6', '0', '0', '组件', '', '1', 'communicate', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('6', '7', '0', '0', '模板', '', '1', 'templates', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('7', '5', '0', '0', '营销', '', '1', 'marketing', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('8', '9', '0', '0', '设置', '', '1', 'system', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('9', '1', '0', '1', '内容列表', 'index.php?archive=management&action=tab&loadfun=articlelist', '1', 'articlelist', 'b01', '1', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('10', '2', '0', '1', '分类管理', 'index.php?archive=management&action=tab&loadfun=typelist', '1', 'typelist', 'b02', '1', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('11', '3', '0', '1', '专题品牌管理', 'index.php?archive=management&action=tab&loadfun=subjectlist', '1', 'subjectlist', 'b03', '1', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('12', '4', '0', '1', '推荐位管理', 'index.php?archive=management&action=tab&loadfun=recomlist', '1', 'recomlist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('13', '5', '0', '1', '内容模型管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=modellist', '1', 'modellist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('15', '50', '0', '2', '会员列表管理', 'index.php?archive=management&action=tab&loadfun=memberlist', '1', 'memberlist', 'b05', '1', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('16', '50', '0', '2', '会员等级管理', 'index.php?archive=management&action=tab&loadfun=memclasslist&out=tabcenter', '1', 'memclasslist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('17', '50', '0', '2', '会员注册字段管理', 'index.php?archive=management&action=tab&loadfun=memberattlist&out=tabcenter', '1', 'memberattlist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('18', '1', '0', '3', '订单列表管理', 'index.php?archive=management&action=tab&loadfun=orderlist&out=tabcenter', '1', 'orderlist', 'b06', '1', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('19', '50', '0', '3', '财务单据管理', 'index.php?archive=management&action=tab&loadfun=payreceiptlist&out=tabcenter', '1', 'payreceiptlist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('20', '50', '0', '3', '物流单据管理', 'index.php?archive=management&action=tab&loadfun=shipreceiptlist&out=tabcenter', '1', 'shipreceiptlist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('21', '50', '0', '3', '发货方式管理', 'index.php?archive=management&action=tab&loadfun=shiplist&out=tabcenter', '1', 'shiplist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('22', '50', '0', '3', '支付方式管理', 'index.php?archive=management&action=tab&loadfun=paylist&out=tabcenter', '1', 'paylist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('23', '2', '0', '3', '客户询价列表', 'index.php?archive=management&action=tab&loadfun=enquirylist&out=tabcenter', '1', 'enquirylist', 'b07', '1', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('24', '4', '0', '5', '在线客服管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=callinglist', '1', 'callinglist', 'b10', '1', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('25', '5', '0', '5', '留言论坛管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=bbstypelist', '1', 'bbstypelist', 'b13', '1', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('225', '7', '0', '8', '网站组件管理', 'index.php?archive=management&action=tab&out=tabeditor&loadfun=modulesetup', '1', 'modulesetup', 'b15', '1', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('27', '6', '0', '5', '自助表单管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=formlist', '1', 'formlist', 'b12', '1', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('29', '50', '0', '6', '网站主题', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=skinlist', '1', 'skinlist', 'b09', '1', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('30', '50', '0', '6', '模板文件管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=templatelist', '1', 'templatelist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('31', '50', '0', '6', '模板标签生成', 'index.php?archive=management&action=tab&out=tabeditor&loadfun=labelcreat', '0', 'labelcreat', '', '255', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('32', '50', '0', '6', '邮件模板管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=emailtemplatelist', '1', 'emailtemplatelist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('33', '50', '0', '6', '物流打印模板', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=printlist', '1', 'printlist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('34', '50', '0', '1', 'SEO优化词', 'index.php?archive=management&action=tab&loadfun=seolinklist', '1', 'seolinklist', 'b08', '1', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('35', '50', '0', '1', '优化词分组', 'index.php?archive=management&action=tab&loadfun=seolinktypelist', '1', 'seolinktypelist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('36', '50', '0', '7', '邮件订阅管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=mailinvitelist', '1', 'mailinvitelist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('37', '6', '0', '1', '内容跟贴留言管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=acmessagelist', '1', 'acmessagelist', 'b04', '1', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('38', '1', '0', '8', '管理员帐户', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=mangerlist', '1', 'mangerlist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('39', '2', '0', '8', '权限组管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=grouplist', '1', 'grouplist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('40', '3', '0', '8', '数据库管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=sqllist', '1', 'sqllist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('41', '5', '0', '8', '多语言管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=languagelist', '1', 'languagelist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('42', '6', '0', '8', '语言包管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=lanpacklist', '1', 'lanpacklist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('43', '8', '0', '5', '上传文件管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=fileadminlist', '1', 'fileadminlist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('44', '9', '0', '5', '图片相册管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=albumadminlist', '1', 'albumadminlist', 'b16', '1', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('45', '8', '0', '8', '系统设置', 'index.php?archive=management&action=tab&out=tabeditor&loadfun=syssetting', '1', 'syssetting', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('46', '50', '0', '9', '内容添加', '', '0', 'docadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('47', '50', '0', '9', '内容修改', '', '0', 'docedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('48', '50', '0', '9', '内容删除', '', '0', 'docdel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('49', '50', '0', '10', '分类添加', '', '0', 'typeadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('50', '50', '0', '10', '分类修改', '', '0', 'typeedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('51', '50', '0', '10', '分类删除', '', '0', 'deltype', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('52', '50', '0', '11', '品牌添加', '', '0', 'subadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('53', '50', '0', '11', '品牌修改', '', '0', 'subedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('54', '50', '0', '11', '品牌删除', '', '0', 'subdel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('55', '50', '0', '12', '推荐位添加', '', '0', 'recomadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('56', '50', '0', '12', '推荐位修改', '', '0', 'recomedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('57', '50', '0', '12', '推荐位删除', '', '0', 'delrecomm', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('58', '50', '0', '13', '模型添加', '', '0', 'modeladd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('59', '50', '0', '13', '模型修改', '', '0', 'modeledit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('60', '50', '0', '13', '模型删除', '', '0', 'delmodel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('61', '50', '0', '13', '字段添加', '', '0', 'modelattradd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('62', '50', '0', '13', '字段修改', '', '0', 'modelattredit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('63', '50', '0', '13', '字段删除', '', '0', 'delattr', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('64', '50', '0', '38', '管理员添加', '', '0', 'manageradd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('65', '50', '0', '38', '管理员修改', '', '0', 'manageedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('66', '50', '0', '38', '管理员删除', '', '0', 'delmanage', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('67', '50', '0', '39', '权限组添加', '', '0', 'groupadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('68', '50', '0', '39', '权限组修改', '', '0', 'groupedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('69', '50', '0', '39', '权限组删除', '', '0', 'delgroup', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('70', '50', '0', '40', '数据库备份', '', '0', 'export', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('71', '50', '0', '40', '备份文件删除', '', '0', 'sqldel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('72', '50', '0', '40', '数据库恢复', '', '0', 'bakfilelist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('73', '50', '0', '41', '多语言添加', '', '0', 'lngadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('74', '50', '0', '41', '多语言修改', '', '0', 'lngedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('75', '50', '0', '41', '多语言删除', '', '0', 'dellng', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('76', '50', '0', '42', '语言包添加', '', '0', 'lanpackadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('77', '50', '0', '42', '语言包修改', '', '0', 'lanpackedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('78', '50', '0', '42', '语言包删除', '', '0', 'lanpackdel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('79', '50', '0', '34', '优化词添加', '', '0', 'keylinkadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('80', '50', '0', '34', '优化词删除', '', '0', 'delkey', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('81', '50', '0', '34', '优化词修改', '', '0', 'keylinkedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('82', '50', '0', '35', '全网优化词添加', '', '0', 'keylinktypeadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('83', '50', '0', '35', '全网优化词修改', '', '0', 'keylinktypeedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('84', '50', '0', '35', '全网优化词删除', '', '0', 'delkeytype', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('85', '50', '0', '43', '文件上传', '', '0', 'upfile', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('86', '50', '0', '43', '文件删除', '', '0', 'delfile', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('88', '50', '0', '44', '相册添加', '', '0', 'albumadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('89', '50', '0', '44', '相册修改', '', '0', 'albumedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('90', '50', '0', '44', '相册删除', '', '0', 'albumdel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('91', '50', '0', '15', '会员修改', '', '0', 'memberedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('92', '50', '0', '15', '会员删除', '', '0', 'memberdel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('93', '50', '0', '15', '会员添加', '', '0', 'memberadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('94', '50', '0', '16', '会员等级添加', '', '0', 'classadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('95', '50', '0', '16', '会员等级修改', '', '0', 'classedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('96', '50', '0', '16', '会员等级删除', '', '0', 'memberclassdel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('97', '50', '0', '17', '会员注册字段添加', '', '0', 'memattadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('98', '50', '0', '17', '会员注册字段修改', '', '0', 'memattedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('99', '50', '0', '17', '会员注册字段删除', '', '0', 'memattdel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('102', '50', '0', '18', '添加订单', '', '0', 'orderadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('103', '50', '0', '18', '修改订单', '', '0', 'orderedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('105', '50', '0', '18', '删除订单', '', '0', 'orderdel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('106', '50', '0', '23', '询盘修改', '', '0', 'enquiryedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('107', '50', '0', '23', '询价删除', '', '0', 'enquirydel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('108', '50', '0', '20', '物流单据修改', '', '0', 'shipreceiptedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('109', '50', '0', '20', '物流单据删除', '', '0', 'shipreceiptdel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('110', '50', '0', '19', '财务单据修改', '', '0', 'payreceiptedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('111', '50', '0', '19', '财务单据删除', '', '0', 'payreceiptdel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('112', '50', '0', '20', '物流单据添加', '', '0', 'shipreceiptadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('113', '50', '0', '19', '财务单据添加', '', '0', 'payreceiptadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('114', '50', '0', '21', '发货方式添加', '', '0', 'shipplugadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('115', '50', '0', '21', '发货方式修改', '', '0', 'shipplugedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('116', '50', '0', '21', '发货方式删除', '', '0', 'shipplugdel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('117', '50', '0', '22', '支付方式添加', '', '0', 'payplugadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('118', '50', '0', '22', '支付方式修改', '', '0', 'payplugedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('119', '50', '0', '22', '支付方式删除', '', '0', 'payplugdel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('120', '50', '0', '40', '数据库优化', '', '0', 'optimize', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('121', '8', '0', '0', '生成', '', '1', 'creatmain', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('122', '50', '0', '7', '邮件群发管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=mailsendlist', '1', 'mailsendlist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('123', '50', '0', '29', '主题添加', '', '0', 'skinadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('124', '50', '0', '29', '主题启用', '', '0', 'setting', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('125', '50', '0', '29', '主题删除', '', '0', 'delskin', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('126', '50', '0', '30', '文件修改', '', '0', 'templateedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('127', '50', '0', '30', '文件删除', '', '0', 'templatedel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('128', '50', '0', '32', '邮件模板添加', '', '0', 'mailtemplateadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('129', '50', '0', '32', '邮件模板修改', '', '0', 'mailtemplateedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('130', '50', '0', '32', '邮件模板删除', '', '0', 'mailtemplatedel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('131', '50', '0', '33', '打印模板添加', '', '0', 'printadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('132', '50', '0', '33', '打印模板修改', '', '0', 'printedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('133', '50', '0', '33', '打印模板删除', '', '0', 'printdel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('134', '1', '0', '121', '主页HTML生成', 'index.php?archive=management&action=tab&out=tabeditor&loadfun=createindex', '1', 'createindex', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('135', '3', '0', '121', '分类HTML生成', 'index.php?archive=management&action=tab&out=tabeditor&loadfun=createtype', '1', 'createtype', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('136', '2', '0', '121', '内容HTML生成', 'index.php?archive=management&action=tab&out=tabeditor&loadfun=createdoc', '1', 'createdoc', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('137', '4', '0', '121', '专题HTML生成', 'index.php?archive=management&action=tab&out=tabeditor&loadfun=createsubject', '1', 'createsubject', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('138', '5', '0', '121', '一键更新网站', 'index.php?archive=management&action=tab&out=tabeditor&loadfun=batcreate', '1', 'batcreate', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('139', '6', '0', '121', 'Google优化生成', 'index.php?archive=management&action=tab&out=tabeditor&loadfun=seocreate', '1', 'seocreate', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('140', '8', '0', '121', 'RSS文档生成', 'index.php?archive=management&action=tab&out=tabeditor&loadfun=createrss', '1', 'createrss', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('141', '50', '0', '41', '引导文件生成', '', '0', 'lngcreat', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('142', '50', '0', '41', '语言包复制', '', '0', 'packcopy', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('143', '50', '0', '27', '表单添加', '', '0', 'formadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('144', '50', '0', '27', '表单修改', '', '0', 'formedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('145', '50', '0', '27', '表单删除', '', '0', 'delformattr', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('146', '50', '0', '27', '表单留言查看', '', '0', 'messlist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('147', '50', '0', '27', '表单字段添加', '', '0', 'formattradd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('148', '50', '0', '27', '表单字段修改', '', '0', 'formattredit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('149', '50', '0', '27', '表单字段删除', '', '0', 'delformattr', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('150', '50', '0', '27', '表单留言删除', '', '0', 'formmessagedel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('152', '50', '0', '155', '广告内容添加', '', '0', 'advertadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('153', '50', '0', '155', '广告内容删除', '', '0', 'advertdel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('154', '50', '0', '155', '广告内容修改', '', '0', 'advertedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('155', '1', '0', '5', '广告管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=adverttypelist', '1', 'adverttypelist', 'b11', '1', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('156', '50', '0', '155', '广告位添加', '', '0', 'adverttypeadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('157', '50', '0', '155', '广告位修改', '', '0', 'adverttypeedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('158', '50', '0', '155', '广告位删除', '', '0', 'adverttypedel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('159', '50', '0', '37', '留言回复', '', '0', 'acmessagere', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('160', '50', '0', '37', '留言删除', '', '0', 'acmessagedel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('161', '50', '0', '24', '添加在线客服', '', '0', 'calladd', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('162', '50', '0', '24', '修改在线客服', '', '0', 'calledit', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('163', '50', '0', '24', '删除在线客服', '', '0', 'calldel', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('165', '50', '0', '25', '添加留言版块', '', '0', 'bbstypeadd', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('166', '50', '0', '25', '修改留言版块', '', '0', 'bbstypeedit', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('167', '50', '0', '25', '删除留言版块', '', '0', 'bbstypedel', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('168', '50', '0', '25', '查看留言', '', '0', 'bbsmainlist', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('169', '50', '0', '25', '删除留言', '', '0', 'bbsmaindel', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('170', '50', '0', '25', '修改留言', '', '0', 'bbsmainedit', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('171', '50', '0', '43', '文件修改', '', '0', 'fileedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('172', '50', '0', '43', '新建文件夹', '', '0', 'mkdir', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('175', '50', '0', '44', '相片删除', '', '0', 'albumfiledel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('176', '50', '0', '44', '相册修改', '', '0', 'albumfileedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('177', '50', '0', '36', '添加订阅分类', '', '0', 'mailinviteadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('178', '50', '0', '36', '订阅分类修改', '', '0', 'mailinviteedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('179', '50', '0', '36', '订阅分类删除', '', '0', 'mailinvitedel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('180', '50', '0', '36', '订阅邮件导出', '', '0', 'mailinviteout', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('181', '50', '0', '36', '订阅邮箱修改', '', '0', 'mailinvitemailedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('182', '50', '0', '36', '订阅邮箱删除', '', '0', 'mailinvitemaildel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('183', '50', '0', '36', '订阅邮箱导入', '', '0', 'mailinviteinput', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('184', '50', '0', '122', '邮件添加', '', '0', 'mailsendadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('185', '50', '0', '122', '邮件删除', '', '0', 'mailsenddel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('186', '50', '0', '122', '邮件修改', '', '0', 'mailsendedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('187', '50', '0', '122', '邮件群发', '', '0', 'mailgroupsend', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('189', '50', '0', '10', '分类同步', '', '0', 'synchro', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('190', '4', '0', '8', '站点集群管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=sitelist', '1', 'sitelist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('191', '50', '0', '190', '站点添加', '', '0', 'siteadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('192', '50', '0', '190', '站点修改', '', '0', 'siteedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('193', '50', '0', '190', '站点删除', '', '0', 'sitedel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('194', '50', '0', '6', '手机短信模板', 'index.php?archive=management&action=tab&out=tabeditor&loadfun=smstemplate', '1', 'smstemplate', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('195', '50', '0', '194', '手机短信模板添加', '', '0', 'smstemplateadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('196', '50', '0', '194', '手机短信删除', '', '0', 'smstemplatedel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('197', '50', '0', '194', '手机短信修改', '', '0', 'smstemplateedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('198', '50', '0', '41', '邮件模板复制', '', '0', 'mailpackcopy', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('199', '50', '0', '41', '短信模板复制', '', '0', 'smspackcopy', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('200', '50', '0', '7', '手机短信群发', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=smssendlist', '1', 'smssendlist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('201', '50', '0', '200', '短信发送添加', '', '0', 'smssendadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('202', '50', '0', '200', '短信发送删除', '', '0', 'smssenddel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('203', '50', '0', '200', '短信发送修改', '', '0', 'smssendedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('204', '50', '0', '7', '手机号分组', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=moblietypelist', '1', 'moblietypelist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('205', '50', '0', '204', '添加手机号分组', '', '0', 'moblietypeadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('206', '50', '0', '204', '删除手机号分类', '', '0', 'moblietypedel', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('207', '50', '0', '204', '导入手机号', '', '0', 'moblieadd', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('208', '50', '0', '204', '修改手机号分组', '', '0', 'moblietypeedit', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('209', '50', '0', '204', '手机号导出', '', '0', 'moblieout', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('210', '50', '0', '200', '短信群发提交', '', '0', 'smssendaway', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('211', '3', '0', '5', '微信公众号管理', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=weixinlist', '1', 'weixinlist', 'b14', '1', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('226', '7', '0', '121', '百度/搜狗优化生成', 'index.php?archive=management&action=tab&out=tabeditor&loadfun=baiducreate', '1', 'baiducreate', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('213', '1', '0', '211', '公众号添加', '', '0', 'weinxinadd', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('214', '4', '0', '211', '微信菜单管理', '', '0', 'wxmenulist', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('215', '7', '0', '211', '响应关键字管理', '', '0', 'wxkeywordlist', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('216', '6', '0', '211', '默认响应设置', '', '0', 'addinfo', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('223', '3', '0', '211', '公众号删除', '', '0', 'weixindel', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('222', '2', '0', '211', '公众号修改', '', '0', 'editweinxin', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('224', '5', '0', '211', '微信菜单同步', '', '0', 'wxmenusync', '', '0', '0');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('227', '1', '0', '8', '我的管理日志', 'index.php?archive=management&action=tab&out=tabcenter&loadfun=loglist', '1', 'loglist', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('228', '50', '0', '225', '组件安装', '', '0', 'appsetup', '', '0', '1');
INSERT INTO `yct_menulink` ( `mlid`, `pid`, `type`, `topmlid`, `menuname`, `linkurl`, `isshow`, `loadfun`, `classname`, `ismenu`, `isclass` ) VALUES  ('229', '50', '0', '225', '组件卸载', '', '0', 'appuninstall', '', '0', '1');
DROP TABLE IF EXISTS `yct_moblie_list`;
CREATE TABLE `yct_moblie_list` (
  `moblid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mobtid` int(11) unsigned NOT NULL DEFAULT '0',
  `moblienb` varchar(11) NOT NULL DEFAULT '0',
  `mobliename` varchar(30) NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `moblid` (`moblid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_moblie_type`;
CREATE TABLE `yct_moblie_type` (
  `mobtid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `moblietypename` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `mbtid` (`mobtid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_model`;
CREATE TABLE `yct_model` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `modelname` varchar(150) NOT NULL,
  `pagemax` smallint(3) unsigned NOT NULL DEFAULT '20',
  `tsnstyle` varchar(200) NOT NULL DEFAULT 'SN{datetime}{s}',
  `listtitlestyle` varchar(200) NOT NULL DEFAULT '{typename}-{sitename}',
  `readtitlestyle` varchar(200) NOT NULL DEFAULT '{title}-{typename}-{sitename}',
  `pagesylte` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lockin` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isbase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `istsn` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isalbum` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isextid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `issid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isfgid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `islinkdid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isorder` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ismessage` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ispurview` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL,
  `opid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_model` ( `mid`, `lng`, `modelname`, `pagemax`, `tsnstyle`, `listtitlestyle`, `readtitlestyle`, `pagesylte`, `isclass`, `lockin`, `isbase`, `istsn`, `isalbum`, `isextid`, `issid`, `isfgid`, `islinkdid`, `isorder`, `ismessage`, `ispurview`, `addtime`, `opid` ) VALUES  ('1', 'cn', '单页', '20', 'SN{datetime}{s}', '{typename}-{sitename}', '{title}-{typename}-{sitename}', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1404572428', '0');
INSERT INTO `yct_model` ( `mid`, `lng`, `modelname`, `pagemax`, `tsnstyle`, `listtitlestyle`, `readtitlestyle`, `pagesylte`, `isclass`, `lockin`, `isbase`, `istsn`, `isalbum`, `isextid`, `issid`, `isfgid`, `islinkdid`, `isorder`, `ismessage`, `ispurview`, `addtime`, `opid` ) VALUES  ('2', 'cn', '新闻', '20', 'SN{datetime}{s}', '{typename}-{sitename}', '{title}-{typename}-{sitename}', '1', '1', '0', '0', '0', '0', '1', '1', '0', '1', '0', '1', '1', '1404572463', '0');
INSERT INTO `yct_model` ( `mid`, `lng`, `modelname`, `pagemax`, `tsnstyle`, `listtitlestyle`, `readtitlestyle`, `pagesylte`, `isclass`, `lockin`, `isbase`, `istsn`, `isalbum`, `isextid`, `issid`, `isfgid`, `islinkdid`, `isorder`, `ismessage`, `ispurview`, `addtime`, `opid` ) VALUES  ('3', 'cn', '产品', '20', 'SN{datetime}{s}', '{typename}-{sitename}', '{title}-{typename}-{sitename}', '1', '1', '0', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1404572477', '0');
INSERT INTO `yct_model` ( `mid`, `lng`, `modelname`, `pagemax`, `tsnstyle`, `listtitlestyle`, `readtitlestyle`, `pagesylte`, `isclass`, `lockin`, `isbase`, `istsn`, `isalbum`, `isextid`, `issid`, `isfgid`, `islinkdid`, `isorder`, `ismessage`, `ispurview`, `addtime`, `opid` ) VALUES  ('4', 'cn', '合作', '20', 'SN{datetime}{s}', '{typename}-{sitename}', '{title}-{typename}-{sitename}', '1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '1404572507', '0');
INSERT INTO `yct_model` ( `mid`, `lng`, `modelname`, `pagemax`, `tsnstyle`, `listtitlestyle`, `readtitlestyle`, `pagesylte`, `isclass`, `lockin`, `isbase`, `istsn`, `isalbum`, `isextid`, `issid`, `isfgid`, `islinkdid`, `isorder`, `ismessage`, `ispurview`, `addtime`, `opid` ) VALUES  ('5', 'cn', '视频', '20', 'SN{datetime}{s}', '{typename}-{sitename}', '{title}-{typename}-{sitename}', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1404572530', '0');
INSERT INTO `yct_model` ( `mid`, `lng`, `modelname`, `pagemax`, `tsnstyle`, `listtitlestyle`, `readtitlestyle`, `pagesylte`, `isclass`, `lockin`, `isbase`, `istsn`, `isalbum`, `isextid`, `issid`, `isfgid`, `islinkdid`, `isorder`, `ismessage`, `ispurview`, `addtime`, `opid` ) VALUES  ('6', 'cn', '下载', '20', 'SN{datetime}{s}', '{typename}-{sitename}', '{title}-{typename}-{sitename}', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1404572679', '0');
INSERT INTO `yct_model` ( `mid`, `lng`, `modelname`, `pagemax`, `tsnstyle`, `listtitlestyle`, `readtitlestyle`, `pagesylte`, `isclass`, `lockin`, `isbase`, `istsn`, `isalbum`, `isextid`, `issid`, `isfgid`, `islinkdid`, `isorder`, `ismessage`, `ispurview`, `addtime`, `opid` ) VALUES  ('7', 'cn', '展示', '20', 'SN{datetime}{s}', '{typename}-{sitename}', '{title}-{typename}-{sitename}', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1404623157', '0');
INSERT INTO `yct_model` ( `mid`, `lng`, `modelname`, `pagemax`, `tsnstyle`, `listtitlestyle`, `readtitlestyle`, `pagesylte`, `isclass`, `lockin`, `isbase`, `istsn`, `isalbum`, `isextid`, `issid`, `isfgid`, `islinkdid`, `isorder`, `ismessage`, `ispurview`, `addtime`, `opid` ) VALUES  ('8', 'cn', '图片', '20', 'SN{datetime}{s}', '{typename}-{sitename}', '{title}-{typename}-{sitename}', '1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '1404623190', '0');
INSERT INTO `yct_model` ( `mid`, `lng`, `modelname`, `pagemax`, `tsnstyle`, `listtitlestyle`, `readtitlestyle`, `pagesylte`, `isclass`, `lockin`, `isbase`, `istsn`, `isalbum`, `isextid`, `issid`, `isfgid`, `islinkdid`, `isorder`, `ismessage`, `ispurview`, `addtime`, `opid` ) VALUES  ('9', 'cn', '加盟', '20', 'SN{datetime}{s}', '{typename}-{sitename}', '{title}-{typename}-{sitename}', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1499829054', '0');
INSERT INTO `yct_model` ( `mid`, `lng`, `modelname`, `pagemax`, `tsnstyle`, `listtitlestyle`, `readtitlestyle`, `pagesylte`, `isclass`, `lockin`, `isbase`, `istsn`, `isalbum`, `isextid`, `issid`, `isfgid`, `islinkdid`, `isorder`, `ismessage`, `ispurview`, `addtime`, `opid` ) VALUES  ('10', 'cn', '联系', '20', 'SN{datetime}{s}', '{typename}-{sitename}', '{title}-{typename}-{sitename}', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1499933612', '0');
DROP TABLE IF EXISTS `yct_model_att`;
CREATE TABLE `yct_model_att` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typename` varchar(100) NOT NULL DEFAULT '',
  `typeremark` varchar(200) NOT NULL DEFAULT '',
  `attrname` varchar(100) NOT NULL DEFAULT '',
  `inputtype` varchar(15) NOT NULL DEFAULT 'string',
  `attrvalue` text NOT NULL,
  `attrsize` smallint(3) unsigned NOT NULL DEFAULT '20',
  `attrrow` smallint(3) unsigned NOT NULL DEFAULT '5',
  `attrlenther` smallint(3) unsigned NOT NULL DEFAULT '50',
  `isvalidate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `validatetext` varchar(150) NOT NULL DEFAULT '',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lockin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islockin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('1', '0', '0', '标题', '标题长度不能大于200个任意字符', 'title', 'string', '', '80', '5', '200', '1', '', '1', '0', '1', '0', '0');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('2', '0', '0', '副标题', '副标题长度不能大于200个任意字符', 'longtitle', 'string', '', '80', '5', '200', '0', '', '1', '0', '1', '0', '0');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('3', '0', '0', '作者', '', 'author', 'selectinput', 'EarcLink\r\n', '20', '5', '20', '0', '', '1', '0', '1', '0', '0');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('4', '0', '0', '来源', '', 'source', 'selectinput', '.COM\r\nECISP.CN\r\nEARCLINK.COM\r\nKUBCMS.COM\r\nYUNSYS.COM', '20', '5', '20', '0', '', '1', '0', '1', '0', '0');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('5', '0', '0', '代表图片', '', 'pic', 'img', '', '50', '5', '200', '0', '', '1', '0', '1', '0', '0');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('6', '0', '0', '简介', '', 'summary', 'htmltext', '', '99', '80', '50', '0', '', '1', '0', '1', '0', '0');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('7', '0', '0', '内容', '', 'content', 'editor', '', '99', '400', '50', '1', '', '1', '0', '1', '0', '0');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('8', '0', '0', '公开价格', '请填写数字型字符', 'oprice', 'decimal', '0', '15', '5', '15', '1', '/^[0-9.]+$/', '1', '0', '1', '0', '0');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('9', '0', '0', '购买价格', '请填写数字型字符', 'bprice', 'decimal', '0', '15', '5', '15', '1', '/^[0-9.]+$/', '1', '0', '1', '0', '0');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('10', '1', '1', '单页标题', '标题长度不能大于200个任意字符', 'title', 'string', '', '80', '5', '250', '1', '', '1', '0', '1', '1', '1');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('11', '50', '1', '副标题', '副标题长度不能大于200个任意字符', 'longtitle', 'string', '', '80', '5', '250', '0', '', '0', '0', '1', '1', '2');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('12', '50', '1', '作者', '', 'author', 'selectinput', 'EarcLink\n', '20', '5', '250', '0', '', '0', '0', '1', '1', '3');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('13', '50', '1', '来源', '', 'source', 'selectinput', '.COM\nECISP.CN\nEARCLINK.COM\nKUBCMS.COM\nYUNSYS.COM', '20', '5', '250', '0', '', '0', '0', '1', '1', '4');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('14', '50', '1', '公开价格', '请填写数字型字符', 'oprice', 'decimal', '0', '15', '5', '50', '1', '/^[0-9.]+$/', '0', '0', '1', '1', '8');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('15', '50', '1', '购买价格', '请填写数字型字符', 'bprice', 'decimal', '0', '15', '5', '50', '1', '/^[0-9.]+$/', '0', '0', '1', '1', '9');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('16', '4', '1', '内容', '', 'content', 'editor', '', '99', '400', '50', '0', '', '1', '0', '1', '1', '7');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('17', '3', '1', '简介', '', 'summary', 'htmltext', '', '99', '80', '50', '0', '', '1', '0', '1', '1', '6');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('18', '2', '1', '代表图片', '', 'pic', 'img', '', '50', '5', '200', '0', '', '1', '0', '1', '1', '5');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('19', '50', '2', '公开价格', '请填写数字型字符', 'oprice', 'decimal', '0', '15', '5', '50', '1', '/^[0-9.]+$/', '0', '0', '1', '1', '8');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('20', '50', '2', '购买价格', '请填写数字型字符', 'bprice', 'decimal', '0', '15', '5', '50', '1', '/^[0-9.]+$/', '0', '0', '1', '1', '9');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('21', '1', '3', '产品名称', '标题长度不能大于200个任意字符', 'title', 'string', '', '80', '5', '250', '1', '', '1', '0', '1', '1', '1');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('22', '50', '3', '副标题', '副标题长度不能大于200个任意字符', 'longtitle', 'string', '', '80', '5', '250', '0', '', '0', '0', '1', '1', '2');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('23', '50', '3', '作者', '', 'author', 'selectinput', 'EarcLink\n', '20', '5', '250', '0', '', '0', '0', '1', '1', '3');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('24', '50', '3', '来源', '', 'source', 'selectinput', '.COM\nECISP.CN\nEARCLINK.COM\nKUBCMS.COM\nYUNSYS.COM', '20', '5', '250', '0', '', '0', '0', '1', '1', '4');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('25', '3', '3', '产品简介', '', 'summary', 'htmltext', '', '99', '80', '250', '0', '', '1', '0', '1', '1', '6');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('26', '6', '3', '产品介绍', '', 'content', 'editor', '', '99', '400', '250', '1', '', '1', '0', '1', '1', '7');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('27', '5', '3', '购买价格', '请填写数字型字符', 'bprice', 'decimal', '0', '15', '5', '15', '0', '', '1', '0', '1', '1', '9');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('28', '4', '3', '公开价格', '请填写数字型字符', 'oprice', 'decimal', '0', '15', '5', '15', '0', '', '1', '0', '1', '1', '8');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('29', '2', '3', '代表图片', '', 'pic', 'img', '', '50', '5', '200', '0', '', '1', '0', '1', '1', '5');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('30', '1', '4', '合作伙伴', '标题长度不能大于200个任意字符', 'title', 'string', '', '80', '5', '250', '1', '', '1', '0', '1', '1', '1');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('31', '50', '4', '副标题', '副标题长度不能大于200个任意字符', 'longtitle', 'string', '', '80', '5', '250', '0', '', '0', '0', '1', '1', '2');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('32', '50', '4', '作者', '', 'author', 'selectinput', 'EarcLink\n', '20', '5', '250', '0', '', '0', '0', '1', '1', '3');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('33', '50', '4', '来源', '', 'source', 'selectinput', '.COM\nECISP.CN\nEARCLINK.COM\nKUBCMS.COM\nYUNSYS.COM', '20', '5', '250', '0', '', '0', '0', '1', '1', '4');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('34', '2', '4', '代表图片', '', 'pic', 'img', '', '50', '5', '250', '0', '', '1', '0', '1', '1', '5');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('35', '2', '4', '简介', '', 'summary', 'htmltext', '', '99', '80', '250', '0', '', '0', '0', '1', '1', '6');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('36', '3', '4', '内容', '', 'content', 'editor', '', '99', '400', '250', '1', '', '1', '0', '1', '1', '7');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('37', '50', '4', '公开价格', '请填写数字型字符', 'oprice', 'decimal', '0', '15', '5', '50', '1', '/^[0-9.]+$/', '0', '0', '1', '1', '8');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('38', '50', '4', '购买价格', '请填写数字型字符', 'bprice', 'decimal', '0', '15', '5', '50', '1', '/^[0-9.]+$/', '0', '0', '1', '1', '9');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('39', '5', '5', '内容', '', 'content', 'editor', '', '99', '400', '50', '0', '', '1', '0', '1', '1', '7');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('40', '4', '5', '简介', '', 'summary', 'htmltext', '', '99', '80', '50', '0', '', '1', '0', '1', '1', '6');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('41', '3', '5', '代表图片', '', 'pic', 'img', '', '50', '5', '200', '0', '', '1', '0', '1', '1', '5');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('42', '2', '5', '副标题', '副标题长度不能大于200个任意字符', 'longtitle', 'string', '', '80', '5', '200', '0', '', '1', '0', '1', '1', '2');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('43', '1', '5', '标题', '标题长度不能大于200个任意字符', 'title', 'string', '', '80', '5', '200', '0', '', '1', '0', '1', '1', '1');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('44', '50', '5', '购买价格', '请填写数字型字符', 'bprice', 'decimal', '0', '15', '5', '50', '1', '/^[0-9.]+$/', '0', '0', '1', '1', '9');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('45', '50', '5', '公开价格', '请填写数字型字符', 'oprice', 'decimal', '0', '15', '5', '50', '1', '/^[0-9.]+$/', '0', '0', '1', '1', '8');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('46', '50', '5', '来源', '', 'source', 'selectinput', '.COM\nECISP.CN\nEARCLINK.COM\nKUBCMS.COM\nYUNSYS.COM', '20', '5', '250', '0', '', '0', '0', '1', '1', '4');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('47', '50', '5', '作者', '', 'author', 'selectinput', 'EarcLink\n', '20', '5', '250', '0', '', '0', '0', '1', '1', '3');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('48', '50', '6', '副标题', '副标题长度不能大于200个任意字符', 'longtitle', 'string', '', '80', '5', '250', '0', '', '0', '0', '1', '1', '2');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('49', '50', '6', '作者', '', 'author', 'selectinput', 'EarcLink\n', '20', '5', '250', '0', '', '0', '0', '1', '1', '3');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('50', '50', '6', '来源', '', 'source', 'selectinput', '.COM\nECISP.CN\nEARCLINK.COM\nKUBCMS.COM\nYUNSYS.COM', '20', '5', '250', '0', '', '0', '0', '1', '1', '4');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('51', '3', '6', '下载文件', '', 'downloadurl', 'addon', '', '40', '5', '250', '0', '', '1', '0', '0', '1', '0');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('52', '7', '6', '内容', '', 'content', 'editor', '', '99', '400', '50', '0', '', '1', '0', '1', '1', '7');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('53', '6', '6', '简介', '', 'summary', 'htmltext', '', '99', '80', '50', '0', '', '1', '0', '1', '1', '6');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('54', '2', '6', '代表图片', '', 'pic', 'img', '', '50', '5', '200', '0', '', '1', '0', '1', '1', '5');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('55', '1', '6', '标题', '标题长度不能大于200个任意字符', 'title', 'string', '', '80', '5', '200', '0', '', '1', '0', '1', '1', '1');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('56', '50', '6', '购买价格', '请填写数字型字符', 'bprice', 'decimal', '0', '15', '5', '50', '1', '/^[0-9.]+$/', '0', '0', '1', '1', '9');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('57', '50', '6', '公开价格', '请填写数字型字符', 'oprice', 'decimal', '0', '15', '5', '50', '1', '/^[0-9.]+$/', '0', '0', '1', '1', '8');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('58', '5', '6', '软件大小', '', 'softsize', 'string', '10M', '40', '5', '250', '0', '', '1', '0', '0', '1', '0');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('59', '4', '6', '支持平台', '', 'softsystem', 'string', 'Windows/Linux/Unlix', '20', '5', '250', '0', '', '1', '0', '0', '1', '0');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('60', '2', '2', '首条展示', '首页位置', 'list', 'radio', '正常排序\n首条展示', '20', '5', '250', '0', '', '0', '0', '0', '1', '0');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('61', '50', '2', '副标题', '副标题长度不能大于200个任意字符', 'longtitle', 'string', '', '80', '5', '250', '0', '', '0', '0', '1', '1', '2');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('62', '50', '2', '作者', '', 'author', 'selectinput', 'EarcLink', '20', '5', '250', '0', '', '0', '0', '1', '1', '3');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('63', '50', '2', '来源', '', 'source', 'selectinput', '.COM\nECISP.CN\nEARCLINK.COM\nKUBCMS.COM\nYUNSYS.COM', '20', '5', '250', '0', '', '0', '0', '1', '1', '4');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('64', '5', '2', '内容', '', 'content', 'editor', '', '99', '400', '50', '0', '', '1', '0', '1', '1', '7');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('65', '4', '2', '简介', '', 'summary', 'htmltext', '', '99', '80', '50', '0', '', '1', '0', '1', '1', '6');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('66', '3', '2', '代表图片', '', 'pic', 'img', '', '50', '5', '200', '0', '', '1', '0', '1', '1', '5');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('67', '1', '2', '标题', '标题长度不能大于200个任意字符', 'title', 'string', '', '80', '5', '200', '0', '', '1', '0', '1', '1', '1');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('68', '50', '10', '简介', '', 'summary', 'htmltext', '', '99', '80', '250', '0', '', '0', '0', '1', '1', '6');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('69', '2', '10', '电话', '副标题长度不能大于200个任意字符', 'longtitle', 'string', '', '80', '5', '250', '0', '', '1', '0', '1', '1', '2');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('70', '50', '10', '公开价格', '请填写数字型字符', 'oprice', 'decimal', '0', '15', '5', '50', '1', '/^[0-9.]+$/', '0', '0', '1', '1', '8');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('71', '50', '10', '购买价格', '请填写数字型字符', 'bprice', 'decimal', '0', '15', '5', '50', '1', '/^[0-9.]+$/', '0', '0', '1', '1', '9');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('72', '50', '10', '来源', '', 'source', 'selectinput', '.COM\nECISP.CN\nEARCLINK.COM\nKUBCMS.COM\nYUNSYS.COM', '20', '5', '250', '0', '', '0', '0', '1', '1', '4');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('73', '50', '10', '作者', '', 'author', 'selectinput', 'EarcLink', '20', '5', '250', '0', '', '0', '0', '1', '1', '3');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('74', '3', '10', '内容', '', 'content', 'editor', '', '99', '400', '50', '0', '', '1', '0', '1', '1', '7');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('75', '1', '10', '标题', '标题长度不能大于200个任意字符', 'title', 'string', '', '80', '5', '200', '0', '', '1', '0', '1', '1', '1');
INSERT INTO `yct_model_att` ( `aid`, `pid`, `mid`, `typename`, `typeremark`, `attrname`, `inputtype`, `attrvalue`, `attrsize`, `attrrow`, `attrlenther`, `isvalidate`, `validatetext`, `isclass`, `issearch`, `lockin`, `islockin`, `issys` ) VALUES  ('76', '50', '10', '代表图片', '', 'pic', 'img', '', '50', '5', '250', '0', '', '0', '0', '1', '1', '5');
DROP TABLE IF EXISTS `yct_order`;
CREATE TABLE `yct_order` (
  `oid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ordersn` varchar(50) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordertype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `osid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `opid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `shippingsn` varchar(50) NOT NULL DEFAULT '0',
  `paysn` varchar(50) NOT NULL DEFAULT '0',
  `consignee` varchar(50) NOT NULL,
  `country` smallint(5) NOT NULL DEFAULT '1',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sendtime` varchar(50) NOT NULL,
  `invpayee` varchar(100) NOT NULL,
  `invcontent` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `treatnote` text NOT NULL,
  `paytime` int(11) NOT NULL DEFAULT '0',
  `shippingtime` int(11) NOT NULL DEFAULT '0',
  `productmoney` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shippingmoney` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paymoney` decimal(10,2) NOT NULL DEFAULT '0.00',
  `orderamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`),
  UNIQUE KEY `ordersn` (`ordersn`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_order_info`;
CREATE TABLE `yct_order_info` (
  `oiid` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(10) unsigned NOT NULL,
  `did` int(10) unsigned NOT NULL,
  `tsn` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `oprice` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `bprice` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `countprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` smallint(6) unsigned NOT NULL,
  `inventory` int(10) unsigned NOT NULL,
  PRIMARY KEY (`oiid`),
  KEY `orderid` (`oid`),
  KEY `productid` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_order_pay`;
CREATE TABLE `yct_order_pay` (
  `opid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '50',
  `payname` varchar(150) NOT NULL,
  `paycontent` text NOT NULL,
  `paycode` varchar(20) NOT NULL,
  `payis` smallint(5) NOT NULL DEFAULT '0',
  `payplugver` varchar(20) NOT NULL DEFAULT '1.0',
  `pluglist` text NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `ismoblie` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`opid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_order_pay` ( `opid`, `pid`, `payname`, `paycontent`, `paycode`, `payis`, `payplugver`, `pluglist`, `isclass`, `addtime`, `ismoblie` ) VALUES  ('1', '50', '货到付款', '货到付款支付的城市有北京、上海、广州、深圳、武汉、长春、重庆', 'downpay', '0', '1.0.1', 'a:0:{}', '1', '1404631401', '0');
DROP TABLE IF EXISTS `yct_order_payreceipt`;
CREATE TABLE `yct_order_payreceipt` (
  `oprid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL DEFAULT '0',
  `opid` int(11) NOT NULL DEFAULT '0',
  `paysn` varchar(100) NOT NULL DEFAULT '0',
  `ordersn` varchar(100) NOT NULL DEFAULT '0',
  `orderamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bankaccount` varchar(100) NOT NULL DEFAULT '',
  `bankname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `isclass` tinyint(1) NOT NULL DEFAULT '1',
  `paytime` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oprid`),
  KEY `ordersn` (`ordersn`),
  KEY `orderid` (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_order_shipping`;
CREATE TABLE `yct_order_shipping` (
  `osid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT '50',
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `markup` int(10) NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `iscash` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isinsure` tinyint(1) NOT NULL DEFAULT '0',
  `insureper` smallint(6) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`osid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_order_shipping` ( `osid`, `pid`, `title`, `content`, `price`, `markup`, `isclass`, `iscash`, `isinsure`, `insureper`, `addtime` ) VALUES  ('1', '50', '普通快递', '', '0.00', '0', '1', '0', '0', '0', '1404631390');
DROP TABLE IF EXISTS `yct_order_shipreceipt`;
CREATE TABLE `yct_order_shipreceipt` (
  `osrid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL DEFAULT '0',
  `osid` int(11) NOT NULL DEFAULT '0',
  `shippingsn` varchar(20) NOT NULL DEFAULT '0',
  `ordersn` varchar(20) NOT NULL DEFAULT '0',
  `shippingmoney` decimal(10,2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `userid` int(11) NOT NULL,
  `isclass` tinyint(1) NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`osrid`),
  KEY `ordersn` (`ordersn`),
  KEY `orderid` (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_site`;
CREATE TABLE `yct_site` (
  `slid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '50',
  `sitename` varchar(100) NOT NULL,
  `sitehttp` varchar(100) NOT NULL,
  `sitedir` varchar(30) NOT NULL DEFAULT 'adminsoft',
  `sitecode` varchar(100) NOT NULL,
  `siteip` varchar(50) NOT NULL,
  `adminusername` varchar(50) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `slid` (`slid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_skin`;
CREATE TABLE `yct_skin` (
  `skid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` varchar(20) NOT NULL,
  `lockin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL,
  `iswap` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`skid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_skin` ( `skid`, `name`, `code`, `lockin`, `isclass`, `addtime`, `iswap` ) VALUES  ('1', 'V6清新主题', 'specialty', '0', '1', '1404632214', '0');
DROP TABLE IF EXISTS `yct_smssendlist`;
CREATE TABLE `yct_smssendlist` (
  `smsid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(200) NOT NULL,
  `moblielist` text NOT NULL,
  `issendtype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `mobtid` int(11) unsigned NOT NULL DEFAULT '0',
  `sendhow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sendtime` int(11) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `smsid` (`smsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_subjectlist`;
CREATE TABLE `yct_subjectlist` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `subjectname` varchar(150) NOT NULL,
  `headtitle` varchar(200) NOT NULL,
  `keywords` varchar(80) NOT NULL,
  `description` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `subpic` varchar(200) NOT NULL DEFAULT '',
  `dirname` varbinary(150) NOT NULL DEFAULT '',
  `purview` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `styleid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `iswap` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `waptempalte` varchar(100) NOT NULL,
  `indextemplates` varchar(100) NOT NULL,
  `template` varchar(100) NOT NULL,
  `filenamestyle` varchar(100) NOT NULL,
  `dirpath` varchar(200) NOT NULL,
  `pagemax` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `yct_templates`;
CREATE TABLE `yct_templates` (
  `tmid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `templatename` varchar(200) NOT NULL,
  `templatecode` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL DEFAULT '',
  `templatecontent` text NOT NULL,
  `pic` varchar(50) NOT NULL DEFAULT '',
  `typeclass` varchar(15) NOT NULL DEFAULT '',
  `styleclass` tinyint(1) unsigned NOT NULL,
  `lockin` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) unsigned NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`tmid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('1', 'cn', 'EMS国内特快专递', 'ems', '', '&lt;DIV style=&quot;FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 109px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 451px&quot; id=printid1 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid1\');&quot; ondblclick=&quot;javascript:delch(\'printid1\');&quot; onmouseout=&quot;javascript:outch(\'printid1\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631707750=&quot;14&quot; jquery1239631341281=&quot;80&quot; jquery1239380179187=&quot;18&quot; jquery1239380233093=&quot;2&quot; jquery1239380474421=&quot;24&quot; jquery1239381485531=&quot;13&quot;&gt;收件人-姓名&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631707750=&quot;15&quot; jquery1239631341281=&quot;81&quot; jquery1239380179187=&quot;19&quot; jquery1239380233093=&quot;3&quot; jquery1239380474421=&quot;25&quot; jquery1239381485531=&quot;14&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 234px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 438px&quot; id=printid2 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid2\');&quot; ondblclick=&quot;javascript:delch(\'printid2\');&quot; onmouseout=&quot;javascript:outch(\'printid2\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631707750=&quot;18&quot; jquery1239631341281=&quot;78&quot; jquery1239637659609=&quot;4&quot; jquery1239636404046=&quot;18&quot;&gt;收件人-省&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631707750=&quot;19&quot; jquery1239631341281=&quot;79&quot; jquery1239637659609=&quot;5&quot; jquery1239636404046=&quot;19&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 165px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 461px&quot; id=printid3 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid3\');&quot; ondblclick=&quot;javascript:delch(\'printid3\');&quot; onmouseout=&quot;javascript:outch(\'printid3\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631707750=&quot;12&quot; jquery1239631341281=&quot;82&quot;&gt;收件人-城市&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631707750=&quot;13&quot; jquery1239631341281=&quot;83&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 165px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 565px&quot; id=printid4 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid4\');&quot; ondblclick=&quot;javascript:delch(\'printid4\');&quot; onmouseout=&quot;javascript:outch(\'printid4\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631707750=&quot;10&quot; jquery1239631341281=&quot;84&quot;&gt;收件人-区&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631707750=&quot;11&quot; jquery1239631341281=&quot;85&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;WIDTH: 351px; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 40px; FONT-SIZE: 12pt; TOP: 188px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 395px&quot; id=printid5 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid5\');&quot; ondblclick=&quot;javascript:delch(\'printid5\');&quot; onmouseout=&quot;javascript:outch(\'printid5\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631707750=&quot;16&quot; jquery1239631341281=&quot;86&quot; jquery1239637659609=&quot;2&quot;&gt;收件人-地址&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631707750=&quot;17&quot; jquery1239631341281=&quot;87&quot; jquery1239637659609=&quot;3&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;WIDTH: 125px; FONT-FAMILY: Arial; LETTER-SPACING: 0px; HEIGHT: 19px; FONT-SIZE: 10pt; TOP: 103px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 622px&quot; id=printid8 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid8\');&quot; ondblclick=&quot;javascript:delch(\'printid8\');&quot; onmouseout=&quot;javascript:outch(\'printid8\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631707750=&quot;8&quot; jquery1239631341281=&quot;103&quot; jquery1239717647671=&quot;2&quot;&gt;收件人-手机&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631707750=&quot;9&quot; jquery1239631341281=&quot;104&quot; jquery1239717647671=&quot;3&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;WIDTH: 96px; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 10px; FONT-SIZE: 12pt; TOP: 107px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 86px&quot; id=printid9 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid9\');&quot; ondblclick=&quot;javascript:delch(\'printid9\');&quot; onmouseout=&quot;javascript:outch(\'printid9\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631341281=&quot;112&quot; jquery1239637659609=&quot;30&quot; jquery1240074485125=&quot;18&quot;&gt;发件人-姓名&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631341281=&quot;113&quot; jquery1239637659609=&quot;31&quot; jquery1240074485125=&quot;19&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;WIDTH: 121px; FONT-FAMILY: Arial; LETTER-SPACING: 0px; HEIGHT: 19px; FONT-SIZE: 10pt; TOP: 106px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 245px&quot; id=printid14 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid14\');&quot; ondblclick=&quot;javascript:delch(\'printid14\');&quot; onmouseout=&quot;javascript:outch(\'printid14\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631707750=&quot;31&quot; jquery1239631341281=&quot;114&quot; jquery1239637659609=&quot;22&quot; jquery1240074485125=&quot;12&quot;&gt;发件人-电话&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631707750=&quot;32&quot; jquery1239631341281=&quot;115&quot; jquery1239637659609=&quot;23&quot; jquery1240074485125=&quot;13&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;WIDTH: 223px; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 23px; FONT-SIZE: 12pt; TOP: 135px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 140px&quot; id=printid17 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid17\');&quot; ondblclick=&quot;javascript:delch(\'printid17\');&quot; onmouseout=&quot;javascript:outch(\'printid17\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631707750=&quot;29&quot; jquery1239631341281=&quot;116&quot; jquery1239637659609=&quot;18&quot; jquery1239636404046=&quot;6&quot; jquery1240074485125=&quot;10&quot; jquery1249655313421=&quot;4&quot;&gt;公司名称&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631707750=&quot;30&quot; jquery1239631341281=&quot;117&quot; jquery1239637659609=&quot;19&quot; jquery1239636404046=&quot;7&quot; jquery1240074485125=&quot;11&quot; jquery1249655313421=&quot;5&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 165px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 95px&quot; id=printid10 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid10\');&quot; ondblclick=&quot;javascript:delch(\'printid10\');&quot; onmouseout=&quot;javascript:outch(\'printid10\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631341281=&quot;123&quot; jquery1239637659609=&quot;16&quot; jquery1239636404046=&quot;14&quot;&gt;发件人-省&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631341281=&quot;124&quot; jquery1239637659609=&quot;17&quot; jquery1239636404046=&quot;15&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 166px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 197px&quot; id=printid11 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid11\');&quot; ondblclick=&quot;javascript:delch(\'printid11\');&quot; onmouseout=&quot;javascript:outch(\'printid11\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631707750=&quot;44&quot; jquery1239631341281=&quot;125&quot; jquery1239637659609=&quot;20&quot; jquery1239636404046=&quot;4&quot; jquery1240074485125=&quot;8&quot;&gt;发件人-城市&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631707750=&quot;45&quot; jquery1239631341281=&quot;126&quot; jquery1239637659609=&quot;21&quot; jquery1239636404046=&quot;5&quot; jquery1240074485125=&quot;9&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;WIDTH: 330px; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 43px; FONT-SIZE: 12pt; TOP: 187px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 35px&quot; id=printid12 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid12\');&quot; ondblclick=&quot;javascript:delch(\'printid12\');&quot; onmouseout=&quot;javascript:outch(\'printid12\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631707750=&quot;4&quot; jquery1239631341281=&quot;127&quot; jquery1239637659609=&quot;14&quot; jquery1239636404046=&quot;2&quot;&gt;发件人-地址&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631707750=&quot;5&quot; jquery1239631341281=&quot;128&quot; jquery1239637659609=&quot;15&quot; jquery1239636404046=&quot;3&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;WIDTH: 42px; FONT-FAMILY: Arial; LETTER-SPACING: 0px; HEIGHT: 14px; FONT-SIZE: 12pt; TOP: 77px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 217px&quot; id=printid19 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid19\');&quot; ondblclick=&quot;javascript:delch(\'printid19\');&quot; onmouseout=&quot;javascript:outch(\'printid19\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631341281=&quot;133&quot; jquery1239637659609=&quot;24&quot;&gt;年&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631341281=&quot;134&quot; jquery1239637659609=&quot;25&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;WIDTH: 24px; FONT-FAMILY: Arial; LETTER-SPACING: 0px; HEIGHT: 14px; FONT-SIZE: 12pt; TOP: 77px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 264px&quot; id=printid20 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid20\');&quot; ondblclick=&quot;javascript:delch(\'printid20\');&quot; onmouseout=&quot;javascript:outch(\'printid20\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631341281=&quot;135&quot; jquery1239637659609=&quot;26&quot; jquery1240074485125=&quot;14&quot;&gt;月&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631341281=&quot;136&quot; jquery1239637659609=&quot;27&quot; jquery1240074485125=&quot;15&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;WIDTH: 27px; FONT-FAMILY: Arial; LETTER-SPACING: 0px; HEIGHT: 16px; FONT-SIZE: 12pt; TOP: 77px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 298px&quot; id=printid21 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid21\');&quot; ondblclick=&quot;javascript:delch(\'printid21\');&quot; onmouseout=&quot;javascript:outch(\'printid21\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631707750=&quot;33&quot; jquery1239631341281=&quot;137&quot;&gt;日&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631707750=&quot;34&quot; jquery1239631341281=&quot;138&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;WIDTH: 22px; FONT-FAMILY: Arial; LETTER-SPACING: 0px; HEIGHT: 15px; FONT-SIZE: 12pt; TOP: 247px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 135px&quot; id=printid22 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid22\');&quot; ondblclick=&quot;javascript:delch(\'printid22\');&quot; onmouseout=&quot;javascript:outch(\'printid22\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631341281=&quot;139&quot;&gt;√&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631341281=&quot;140&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FONT-FAMILY: Arial; LETTER-SPACING: 1px; FONT-SIZE: 12pt; TOP: 233px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 641px&quot; id=printid6 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid6\');&quot; ondblclick=&quot;javascript:delch(\'printid6\');&quot; onmouseout=&quot;javascript:outch(\'printid6\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631707750=&quot;40&quot; jquery1239637659609=&quot;6&quot;&gt;收件人-邮编&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631707750=&quot;41&quot; jquery1239637659609=&quot;7&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FONT-FAMILY: Arial; LETTER-SPACING: 1px; FONT-SIZE: 12pt; TOP: 232px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 270px&quot; id=printid13 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid13\');&quot; ondblclick=&quot;javascript:delch(\'printid13\');&quot; onmouseout=&quot;javascript:outch(\'printid13\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239631707750=&quot;42&quot; jquery1239637659609=&quot;32&quot; jquery1249655313421=&quot;2&quot;&gt;发件人-邮编&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239631707750=&quot;43&quot; jquery1239637659609=&quot;33&quot; jquery1249655313421=&quot;3&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;WIDTH: 305px; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 32px; FONT-SIZE: 10pt; TOP: 378px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 441px&quot; id=printid18 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid18\');&quot; ondblclick=&quot;javascript:delch(\'printid18\');&quot; onmouseout=&quot;javascript:outch(\'printid18\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1239636404046=&quot;16&quot;&gt;备注信息&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1239636404046=&quot;17&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;WIDTH: 205px; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 50px; FONT-SIZE: 12pt; TOP: 301px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 30px&quot; id=printid16 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid16\');&quot; ondblclick=&quot;javascript:delch(\'printid16\');&quot; onmouseout=&quot;javascript:outch(\'printid16\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1240074485125=&quot;16&quot;&gt;内件品名&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1240074485125=&quot;17&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;', 'exp02.jpg', 'print', '2', '1', '1278303008', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('2', 'cn', '中通速递', 'zhongtong', '', '&lt;div class=&quot;jqDnR&quot; id=&quot;printid1&quot; ondblclick=&quot;javascript:delch(\'printid1\');&quot; onmouseover=&quot;javascript:cheach(\'printid1\');&quot; style=&quot;FONT-WEIGHT: normal; FONT-SIZE: 12pt; FILTER: alpha(opacity=80); LEFT: 481px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; TOP: 106px; TEXT-DECORATION: none&quot; onmouseout=&quot;javascript:outch(\'printid1\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;40&quot; jquery1239381485531=&quot;13&quot; jquery1239380474421=&quot;24&quot; jquery1239380233093=&quot;2&quot; jquery1239380179187=&quot;18&quot;&gt;收件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;41&quot; jquery1239381485531=&quot;14&quot; jquery1239380474421=&quot;25&quot; jquery1239380233093=&quot;3&quot; jquery1239380179187=&quot;19&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div class=&quot;jqDnR&quot; id=&quot;printid7&quot; ondblclick=&quot;javascript:delch(\'printid7\');&quot; onmouseover=&quot;javascript:cheach(\'printid7\');&quot; style=&quot;FONT-WEIGHT: normal; FONT-SIZE: 10pt; FILTER: alpha(opacity=80); LEFT: 478px; WIDTH: 126px; ZOOM: 1; FONT-FAMILY: Arial; LETTER-SPACING: 0px; TOP: 244px; HEIGHT: 17px; TEXT-DECORATION: none&quot; onmouseout=&quot;javascript:outch(\'printid7\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;42&quot; jquery1239380179187=&quot;20&quot;&gt;收件人-手机&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;43&quot; jquery1239380179187=&quot;21&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div class=&quot;jqDnR&quot; id=&quot;printid3&quot; ondblclick=&quot;javascript:delch(\'printid3\');&quot; onmouseover=&quot;javascript:cheach(\'printid3\');&quot; style=&quot;FONT-WEIGHT: normal; FONT-SIZE: 12pt; FILTER: alpha(opacity=100); LEFT: 484px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; TOP: 137px; TEXT-DECORATION: none&quot; onmouseout=&quot;javascript:outch(\'printid3\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;38&quot; jquery1239380474421=&quot;18&quot; jquery1239380233093=&quot;11&quot; jquery1239380179187=&quot;24&quot;&gt;收件人-城市&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;39&quot; jquery1239380474421=&quot;19&quot; jquery1239380233093=&quot;12&quot; jquery1239380179187=&quot;25&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div class=&quot;jqDnR&quot; id=&quot;printid8&quot; ondblclick=&quot;javascript:delch(\'printid8\');&quot; onmouseover=&quot;javascript:cheach(\'printid8\');&quot; style=&quot;FONT-WEIGHT: normal; FONT-SIZE: 10pt; FILTER: alpha(opacity=80); LEFT: 132px; WIDTH: 87px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; TOP: 109px; HEIGHT: 15px; TEXT-DECORATION: none&quot; onmouseout=&quot;javascript:outch(\'printid8\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;15&quot; jquery1239380474421=&quot;4&quot; jquery1239380233093=&quot;23&quot; jquery1239380719593=&quot;20&quot;&gt;发件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;16&quot; jquery1239380474421=&quot;5&quot; jquery1239380233093=&quot;24&quot; jquery1239380719593=&quot;21&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div class=&quot;jqDnR&quot; id=&quot;printid11&quot; ondblclick=&quot;javascript:delch(\'printid11\');&quot; onmouseover=&quot;javascript:cheach(\'printid11\');&quot; style=&quot;FONT-WEIGHT: normal; FONT-SIZE: 10pt; FILTER: alpha(opacity=80); LEFT: 132px; WIDTH: 254px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; TOP: 139px; HEIGHT: 50px; TEXT-DECORATION: none&quot; onmouseout=&quot;javascript:outch(\'printid11\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;6&quot; jquery1239380474421=&quot;20&quot; jquery1239380233093=&quot;27&quot; jquery1239380719593=&quot;2&quot; jquery1239381308796=&quot;4&quot; jquery1239380553687=&quot;2&quot; jquery1239380517343=&quot;4&quot;&gt;发件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;7&quot; jquery1239380474421=&quot;21&quot; jquery1239380233093=&quot;28&quot; jquery1239380719593=&quot;3&quot; jquery1239381308796=&quot;5&quot; jquery1239380553687=&quot;3&quot; jquery1239380517343=&quot;5&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div class=&quot;jqDnR&quot; id=&quot;printid12&quot; ondblclick=&quot;javascript:delch(\'printid12\');&quot; onmouseover=&quot;javascript:cheach(\'printid12\');&quot; style=&quot;FONT-WEIGHT: normal; FONT-SIZE: 10pt; FILTER: alpha(opacity=80); LEFT: 291px; ZOOM: 1; FONT-FAMILY: Arial; LETTER-SPACING: 4px; TOP: 247px; TEXT-DECORATION: none&quot; onmouseout=&quot;javascript:outch(\'printid12\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;22&quot; jquery1239380233093=&quot;29&quot; jquery1239380719593=&quot;18&quot;&gt;发件人-邮编&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;23&quot; jquery1239380233093=&quot;30&quot; jquery1239380719593=&quot;19&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div class=&quot;jqDnR&quot; id=&quot;printid14&quot; ondblclick=&quot;javascript:delch(\'printid14\');&quot; onmouseover=&quot;javascript:cheach(\'printid14\');&quot; style=&quot;FONT-WEIGHT: normal; FONT-SIZE: 10pt; FILTER: alpha(opacity=80); LEFT: 134px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; TOP: 249px; TEXT-DECORATION: none&quot; onmouseout=&quot;javascript:outch(\'printid14\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;29&quot; jquery1239380474421=&quot;13&quot; jquery1239380553687=&quot;8&quot; jquery1239380461312=&quot;8&quot;&gt;发件人-手机&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;30&quot; jquery1239380474421=&quot;14&quot; jquery1239380553687=&quot;9&quot; jquery1239380461312=&quot;9&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div class=&quot;jqDnR&quot; id=&quot;printid2&quot; ondblclick=&quot;javascript:delch(\'printid2\');&quot; onmouseover=&quot;javascript:cheach(\'printid2\');&quot; style=&quot;FONT-WEIGHT: normal; FONT-SIZE: 10pt; FILTER: alpha(opacity=80); LEFT: 645px; WIDTH: 92px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; TOP: 106px; HEIGHT: 15px; TEXT-DECORATION: none&quot; onmouseout=&quot;javascript:outch(\'printid2\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;2&quot; jquery1239380474421=&quot;22&quot;&gt;收件人-省&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;3&quot; jquery1239380474421=&quot;23&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div class=&quot;jqDnR&quot; id=&quot;printid15&quot; ondblclick=&quot;javascript:delch(\'printid15\');&quot; onmouseover=&quot;javascript:cheach(\'printid15\');&quot; style=&quot;FONT-WEIGHT: normal; FONT-SIZE: 10pt; FILTER: alpha(opacity=80); LEFT: 237px; WIDTH: 120px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; TOP: 304px; HEIGHT: 21px; TEXT-DECORATION: none&quot; onmouseout=&quot;javascript:outch(\'printid15\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;31&quot; jquery1239380553687=&quot;10&quot;&gt;订单号&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;32&quot; jquery1239380553687=&quot;11&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div class=&quot;jqDnR&quot; id=&quot;printid18&quot; ondblclick=&quot;javascript:delch(\'printid18\');&quot; onmouseover=&quot;javascript:cheach(\'printid18\');&quot; style=&quot;FONT-WEIGHT: normal; FONT-SIZE: 10pt; FILTER: alpha(opacity=80); LEFT: 160px; WIDTH: 26px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; TOP: 382px; HEIGHT: 10px; TEXT-DECORATION: none&quot; onmouseout=&quot;javascript:outch(\'printid18\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;10&quot; jquery1239380719593=&quot;6&quot; jquery1239381308796=&quot;6&quot;&gt;年&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;11&quot; jquery1239380719593=&quot;7&quot; jquery1239381308796=&quot;7&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div class=&quot;jqDnR&quot; id=&quot;printid19&quot; ondblclick=&quot;javascript:delch(\'printid19\');&quot; onmouseover=&quot;javascript:cheach(\'printid19\');&quot; style=&quot;FONT-WEIGHT: normal; FONT-SIZE: 10pt; FILTER: alpha(opacity=80); LEFT: 123px; WIDTH: 26px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; TOP: 382px; HEIGHT: 12px; TEXT-DECORATION: none&quot; onmouseout=&quot;javascript:outch(\'printid19\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;13&quot; jquery1239380719593=&quot;9&quot;&gt;月&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;14&quot; jquery1239380719593=&quot;10&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div class=&quot;jqDnR&quot; id=&quot;printid4&quot; ondblclick=&quot;javascript:delch(\'printid4\');&quot; onmouseover=&quot;javascript:cheach(\'printid4\');&quot; style=&quot;FONT-WEIGHT: 700; FONT-SIZE: 12pt; FILTER: alpha(opacity=80); LEFT: 424px; WIDTH: 311px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; TOP: 169px; HEIGHT: 21px; TEXT-DECORATION: none&quot; onmouseout=&quot;javascript:outch(\'printid4\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;4&quot; jquery1239381485531=&quot;10&quot;&gt;收件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;5&quot; jquery1239381485531=&quot;11&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div class=&quot;jqDnR&quot; id=&quot;printid16&quot; ondblclick=&quot;javascript:delch(\'printid16\');&quot; onmouseover=&quot;javascript:cheach(\'printid16\');&quot; style=&quot;FONT-WEIGHT: normal; FONT-SIZE: 10pt; FILTER: alpha(opacity=80); LEFT: 122px; WIDTH: 257px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; TOP: 201px; HEIGHT: 21px; TEXT-DECORATION: none&quot; onmouseout=&quot;javascript:outch(\'printid16\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;20&quot;&gt;公司名称&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;21&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div class=&quot;jqDnR&quot; id=&quot;printid5&quot; ondblclick=&quot;javascript:delch(\'printid5\');&quot; onmouseover=&quot;javascript:cheach(\'printid5\');&quot; style=&quot;FONT-WEIGHT: normal; FONT-SIZE: 12pt; FILTER: alpha(opacity=100); LEFT: 641px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 2px; TOP: 245px; TEXT-DECORATION: none&quot; onmouseout=&quot;javascript:outch(\'printid5\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;54&quot;&gt;收件人-邮编&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;55&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div class=&quot;jqDnR&quot; id=&quot;printid9&quot; ondblclick=&quot;javascript:delch(\'printid9\');&quot; onmouseover=&quot;javascript:cheach(\'printid9\');&quot; style=&quot;FONT-WEIGHT: normal; FONT-SIZE: 12pt; FILTER: alpha(opacity=80); LEFT: 280px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 2px; TOP: 108px; TEXT-DECORATION: none&quot; onmouseout=&quot;javascript:outch(\'printid9\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;61&quot;&gt;发件人-省&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;62&quot;&gt;&lt;/div&gt;&lt;/div&gt;', 'exp15.jpg', 'print', '2', '1', '1278303008', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('3', 'cn', '长发速递', 'changfa', '', '&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 136px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 622px&quot; id=&quot;printid1&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid1\');&quot; ondblclick=&quot;javascript:delch(\'printid1\');&quot; onmouseout=&quot;javascript:outch(\'printid1\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380179187=&quot;18&quot; jquery1239380233093=&quot;2&quot; jquery1239380474421=&quot;24&quot; jquery1239381485531=&quot;13&quot; jquery1239384988140=&quot;40&quot; jquery1262853132078=&quot;25&quot;&gt;收件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380179187=&quot;19&quot; jquery1239380233093=&quot;3&quot; jquery1239380474421=&quot;25&quot; jquery1239381485531=&quot;14&quot; jquery1239384988140=&quot;41&quot; jquery1262853132078=&quot;26&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 126px; ZOOM: 1; FONT-FAMILY: Arial; LETTER-SPACING: 0px; HEIGHT: 17px; FONT-SIZE: 10pt; TOP: 253px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 480px&quot; id=&quot;printid7&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid7\');&quot; ondblclick=&quot;javascript:delch(\'printid7\');&quot; onmouseout=&quot;javascript:outch(\'printid7\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380179187=&quot;20&quot; jquery1239384988140=&quot;42&quot; jquery1262853132078=&quot;36&quot;&gt;收件人-手机&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380179187=&quot;21&quot; jquery1239384988140=&quot;43&quot; jquery1262853132078=&quot;37&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 87px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 15px; FONT-SIZE: 10pt; TOP: 132px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 238px&quot; id=&quot;printid8&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid8\');&quot; ondblclick=&quot;javascript:delch(\'printid8\');&quot; onmouseout=&quot;javascript:outch(\'printid8\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380233093=&quot;23&quot; jquery1239380474421=&quot;4&quot; jquery1239384988140=&quot;15&quot; jquery1239380719593=&quot;20&quot; jquery1262853132078=&quot;7&quot;&gt;发件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380233093=&quot;24&quot; jquery1239380474421=&quot;5&quot; jquery1239384988140=&quot;16&quot; jquery1239380719593=&quot;21&quot; jquery1262853132078=&quot;8&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 339px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 44px; FONT-SIZE: 10pt; TOP: 154px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 62px&quot; id=&quot;printid11&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid11\');&quot; ondblclick=&quot;javascript:delch(\'printid11\');&quot; onmouseout=&quot;javascript:outch(\'printid11\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380233093=&quot;27&quot; jquery1239380474421=&quot;20&quot; jquery1239384988140=&quot;6&quot; jquery1239380719593=&quot;2&quot; jquery1239380517343=&quot;4&quot; jquery1239380553687=&quot;2&quot; jquery1239381308796=&quot;4&quot; jquery1262853132078=&quot;4&quot;&gt;发件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380233093=&quot;28&quot; jquery1239380474421=&quot;21&quot; jquery1239384988140=&quot;7&quot; jquery1239380719593=&quot;3&quot; jquery1239380517343=&quot;5&quot; jquery1239380553687=&quot;3&quot; jquery1239381308796=&quot;5&quot; jquery1262853132078=&quot;5&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: Arial; LETTER-SPACING: 4px; FONT-SIZE: 10pt; TOP: 252px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 308px&quot; id=&quot;printid12&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid12\');&quot; ondblclick=&quot;javascript:delch(\'printid12\');&quot; onmouseout=&quot;javascript:outch(\'printid12\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380233093=&quot;29&quot; jquery1239384988140=&quot;22&quot; jquery1239380719593=&quot;18&quot; jquery1262853132078=&quot;19&quot;&gt;发件人-邮编&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380233093=&quot;30&quot; jquery1239384988140=&quot;23&quot; jquery1239380719593=&quot;19&quot; jquery1262853132078=&quot;20&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 249px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 122px&quot; id=&quot;printid14&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid14\');&quot; ondblclick=&quot;javascript:delch(\'printid14\');&quot; onmouseout=&quot;javascript:outch(\'printid14\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380474421=&quot;13&quot; jquery1239384988140=&quot;29&quot; jquery1239380553687=&quot;8&quot; jquery1239380461312=&quot;8&quot; jquery1262853132078=&quot;11&quot;&gt;发件人-手机&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380474421=&quot;14&quot; jquery1239384988140=&quot;30&quot; jquery1239380553687=&quot;9&quot; jquery1239380461312=&quot;9&quot; jquery1262853132078=&quot;12&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 92px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 15px; FONT-SIZE: 10pt; TOP: 108px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 482px&quot; id=&quot;printid2&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid2\');&quot; ondblclick=&quot;javascript:delch(\'printid2\');&quot; onmouseout=&quot;javascript:outch(\'printid2\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380474421=&quot;22&quot; jquery1239384988140=&quot;2&quot; jquery1262853132078=&quot;27&quot;&gt;收件人-省&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380474421=&quot;23&quot; jquery1239384988140=&quot;3&quot; jquery1262853132078=&quot;28&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 120px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 21px; FONT-SIZE: 10pt; TOP: 297px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 111px&quot; id=&quot;printid15&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid15\');&quot; ondblclick=&quot;javascript:delch(\'printid15\');&quot; onmouseout=&quot;javascript:outch(\'printid15\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;31&quot; jquery1239380553687=&quot;10&quot; jquery1262853132078=&quot;17&quot;&gt;订单号&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;32&quot; jquery1239380553687=&quot;11&quot; jquery1262853132078=&quot;18&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 26px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 10px; FONT-SIZE: 10pt; TOP: 102px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 113px&quot; id=&quot;printid18&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid18\');&quot; ondblclick=&quot;javascript:delch(\'printid18\');&quot; onmouseout=&quot;javascript:outch(\'printid18\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;10&quot; jquery1239380719593=&quot;6&quot; jquery1239381308796=&quot;6&quot; jquery1262853132078=&quot;15&quot;&gt;年&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;11&quot; jquery1239380719593=&quot;7&quot; jquery1239381308796=&quot;7&quot; jquery1262853132078=&quot;16&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 26px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 12px; FONT-SIZE: 10pt; TOP: 100px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 151px&quot; id=&quot;printid19&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid19\');&quot; ondblclick=&quot;javascript:delch(\'printid19\');&quot; onmouseout=&quot;javascript:outch(\'printid19\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;13&quot; jquery1239380719593=&quot;9&quot; jquery1262853132078=&quot;13&quot;&gt;月&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;14&quot; jquery1239380719593=&quot;10&quot; jquery1262853132078=&quot;14&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 338px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 69px; FONT-SIZE: 12pt; TOP: 160px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 436px&quot; id=&quot;printid4&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid4\');&quot; ondblclick=&quot;javascript:delch(\'printid4\');&quot; onmouseout=&quot;javascript:outch(\'printid4\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239381485531=&quot;10&quot; jquery1239384988140=&quot;4&quot; jquery1262853132078=&quot;21&quot;&gt;收件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239381485531=&quot;11&quot; jquery1239384988140=&quot;5&quot; jquery1262853132078=&quot;22&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 336px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 25px; FONT-SIZE: 10pt; TOP: 211px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 64px&quot; id=&quot;printid16&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid16\');&quot; ondblclick=&quot;javascript:delch(\'printid16\');&quot; onmouseout=&quot;javascript:outch(\'printid16\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;20&quot; jquery1262853132078=&quot;9&quot;&gt;公司名称&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;21&quot; jquery1262853132078=&quot;10&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 2px; FONT-SIZE: 12pt; TOP: 249px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 676px&quot; id=&quot;printid5&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid5\');&quot; ondblclick=&quot;javascript:delch(\'printid5\');&quot; onmouseout=&quot;javascript:outch(\'printid5\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;54&quot; jquery1262853132078=&quot;34&quot;&gt;收件人-邮编&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;55&quot; jquery1262853132078=&quot;35&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 2px; FONT-SIZE: 12pt; TOP: 102px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 303px&quot; id=&quot;printid9&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid9\');&quot; ondblclick=&quot;javascript:delch(\'printid9\');&quot; onmouseout=&quot;javascript:outch(\'printid9\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;61&quot; jquery1262853132078=&quot;2&quot;&gt;发件人-省&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;62&quot; jquery1262853132078=&quot;3&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 77px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 8px; FONT-SIZE: 10pt; TOP: 109px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 580px&quot; id=&quot;printid3&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid3\');&quot; ondblclick=&quot;javascript:delch(\'printid3\');&quot; onmouseout=&quot;javascript:outch(\'printid3\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853132078=&quot;32&quot;&gt;收件人-城市&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853132078=&quot;33&quot;&gt;&lt;/div&gt;&lt;/div&gt;', 'exp01.jpg', 'print', '2', '1', '1278303008', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('4', 'cn', '中国邮政普通包裹', 'zhongguaputong', '', '&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 164px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 126px&quot; id=&quot;printid1&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid1\');&quot; ondblclick=&quot;javascript:delch(\'printid1\');&quot; onmouseout=&quot;javascript:outch(\'printid1\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380179187=&quot;18&quot; jquery1239380233093=&quot;2&quot; jquery1239380474421=&quot;24&quot; jquery1239381485531=&quot;13&quot; jquery1239384988140=&quot;40&quot; jquery1262853132078=&quot;25&quot; jquery1262853234812=&quot;39&quot; jquery1262853359750=&quot;2&quot;&gt;收件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380179187=&quot;19&quot; jquery1239380233093=&quot;3&quot; jquery1239380474421=&quot;25&quot; jquery1239381485531=&quot;14&quot; jquery1239384988140=&quot;41&quot; jquery1262853132078=&quot;26&quot; jquery1262853234812=&quot;40&quot; jquery1262853359750=&quot;3&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 126px; ZOOM: 1; FONT-FAMILY: Arial; LETTER-SPACING: 0px; HEIGHT: 17px; FONT-SIZE: 10pt; TOP: 164px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 274px&quot; id=&quot;printid7&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid7\');&quot; ondblclick=&quot;javascript:delch(\'printid7\');&quot; onmouseout=&quot;javascript:outch(\'printid7\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380179187=&quot;20&quot; jquery1239384988140=&quot;42&quot; jquery1262853132078=&quot;36&quot; jquery1262853234812=&quot;35&quot;&gt;收件人-手机&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380179187=&quot;21&quot; jquery1239384988140=&quot;43&quot; jquery1262853132078=&quot;37&quot; jquery1262853234812=&quot;36&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 87px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 15px; FONT-SIZE: 10pt; TOP: 277px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 125px&quot; id=&quot;printid8&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid8\');&quot; ondblclick=&quot;javascript:delch(\'printid8\');&quot; onmouseout=&quot;javascript:outch(\'printid8\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380233093=&quot;23&quot; jquery1239380474421=&quot;4&quot; jquery1239384988140=&quot;15&quot; jquery1239380719593=&quot;20&quot; jquery1262853132078=&quot;7&quot; jquery1262853234812=&quot;33&quot;&gt;发件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380233093=&quot;24&quot; jquery1239380474421=&quot;5&quot; jquery1239384988140=&quot;16&quot; jquery1239380719593=&quot;21&quot; jquery1262853132078=&quot;8&quot; jquery1262853234812=&quot;34&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 325px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 39px; FONT-SIZE: 10pt; TOP: 342px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 71px&quot; id=&quot;printid11&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid11\');&quot; ondblclick=&quot;javascript:delch(\'printid11\');&quot; onmouseout=&quot;javascript:outch(\'printid11\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380233093=&quot;27&quot; jquery1239380474421=&quot;20&quot; jquery1239384988140=&quot;6&quot; jquery1239380719593=&quot;2&quot; jquery1239380517343=&quot;4&quot; jquery1239380553687=&quot;2&quot; jquery1239381308796=&quot;4&quot; jquery1262853132078=&quot;4&quot; jquery1262853234812=&quot;4&quot;&gt;发件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380233093=&quot;28&quot; jquery1239380474421=&quot;21&quot; jquery1239384988140=&quot;7&quot; jquery1239380719593=&quot;3&quot; jquery1239380517343=&quot;5&quot; jquery1239380553687=&quot;3&quot; jquery1239381308796=&quot;5&quot; jquery1262853132078=&quot;5&quot; jquery1262853234812=&quot;5&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: Arial; LETTER-SPACING: 4px; FONT-SIZE: 10pt; TOP: 394px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 301px&quot; id=&quot;printid12&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid12\');&quot; ondblclick=&quot;javascript:delch(\'printid12\');&quot; onmouseout=&quot;javascript:outch(\'printid12\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380233093=&quot;29&quot; jquery1239384988140=&quot;22&quot; jquery1239380719593=&quot;18&quot; jquery1262853132078=&quot;19&quot; jquery1262853234812=&quot;23&quot;&gt;发件人-邮编&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380233093=&quot;30&quot; jquery1239384988140=&quot;23&quot; jquery1239380719593=&quot;19&quot; jquery1262853132078=&quot;20&quot; jquery1262853234812=&quot;24&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 278px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 279px&quot; id=&quot;printid14&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid14\');&quot; ondblclick=&quot;javascript:delch(\'printid14\');&quot; onmouseout=&quot;javascript:outch(\'printid14\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380474421=&quot;13&quot; jquery1239384988140=&quot;29&quot; jquery1239380553687=&quot;8&quot; jquery1239380461312=&quot;8&quot; jquery1262853132078=&quot;11&quot; jquery1262853234812=&quot;31&quot; jquery1262853359750=&quot;9&quot;&gt;发件人-手机&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380474421=&quot;14&quot; jquery1239384988140=&quot;30&quot; jquery1239380553687=&quot;9&quot; jquery1239380461312=&quot;9&quot; jquery1262853132078=&quot;12&quot; jquery1262853234812=&quot;32&quot; jquery1262853359750=&quot;10&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 92px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 15px; FONT-SIZE: 10pt; TOP: 223px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 153px&quot; id=&quot;printid2&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid2\');&quot; ondblclick=&quot;javascript:delch(\'printid2\');&quot; onmouseout=&quot;javascript:outch(\'printid2\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380474421=&quot;22&quot; jquery1239384988140=&quot;2&quot; jquery1262853132078=&quot;27&quot; jquery1262853234812=&quot;41&quot;&gt;收件人-省&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380474421=&quot;23&quot; jquery1239384988140=&quot;3&quot; jquery1262853132078=&quot;28&quot; jquery1262853234812=&quot;42&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 77px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 8px; FONT-SIZE: 10pt; TOP: 225px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 253px&quot; id=&quot;printid3&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid3\');&quot; ondblclick=&quot;javascript:delch(\'printid3\');&quot; onmouseout=&quot;javascript:outch(\'printid3\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853132078=&quot;32&quot; jquery1262853234812=&quot;43&quot; jquery1262853359750=&quot;13&quot;&gt;收件人-城市&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853132078=&quot;33&quot; jquery1262853234812=&quot;44&quot; jquery1262853359750=&quot;14&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 310px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 22px; FONT-SIZE: 12pt; TOP: 246px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 80px&quot; id=&quot;printid5&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid5\');&quot; ondblclick=&quot;javascript:delch(\'printid5\');&quot; onmouseout=&quot;javascript:outch(\'printid5\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853234812=&quot;48&quot; jquery1262853359750=&quot;11&quot;&gt;收件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853234812=&quot;49&quot; jquery1262853359750=&quot;12&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 154px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 412px&quot; id=&quot;printid16&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid16\');&quot; ondblclick=&quot;javascript:delch(\'printid16\');&quot; onmouseout=&quot;javascript:outch(\'printid16\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853359750=&quot;4&quot;&gt;内件品名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853359750=&quot;5&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 243px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 18px; FONT-SIZE: 10pt; TOP: 305px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 153px&quot; id=&quot;printid17&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid17\');&quot; ondblclick=&quot;javascript:delch(\'printid17\');&quot; onmouseout=&quot;javascript:outch(\'printid17\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853359750=&quot;7&quot;&gt;公司名称&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853359750=&quot;8&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 159px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 5px; HEIGHT: 22px; FONT-SIZE: 12pt; TOP: 129px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 76px&quot; id=&quot;printid6&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid6\');&quot; ondblclick=&quot;javascript:delch(\'printid6\');&quot; onmouseout=&quot;javascript:outch(\'printid6\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853359750=&quot;15&quot;&gt;收件人-邮编&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853359750=&quot;16&quot;&gt;&lt;/div&gt;&lt;/div&gt;', 'exp03.jpg', 'print', '2', '1', '1278303008', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('5', 'cn', '韵达快运', 'yunda', '', '&lt;DIV style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 132px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 414px&quot; id=printid1 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid1\');&quot; ondblclick=&quot;javascript:delch(\'printid1\');&quot; onmouseout=&quot;javascript:outch(\'printid1\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1262853471968=&quot;11&quot; jquery1262853132078=&quot;25&quot; jquery1239384988140=&quot;40&quot; jquery1239381485531=&quot;13&quot; jquery1239380474421=&quot;24&quot; jquery1239380233093=&quot;2&quot; jquery1239380179187=&quot;18&quot;&gt;收件人-姓名&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1262853471968=&quot;12&quot; jquery1262853132078=&quot;26&quot; jquery1239384988140=&quot;41&quot; jquery1239381485531=&quot;14&quot; jquery1239380474421=&quot;25&quot; jquery1239380233093=&quot;3&quot; jquery1239380179187=&quot;19&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FILTER: alpha(opacity=80); WIDTH: 126px; ZOOM: 1; FONT-FAMILY: Arial; LETTER-SPACING: 0px; HEIGHT: 17px; FONT-SIZE: 10pt; TOP: 239px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 457px&quot; id=printid7 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid7\');&quot; ondblclick=&quot;javascript:delch(\'printid7\');&quot; onmouseout=&quot;javascript:outch(\'printid7\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1262853471968=&quot;13&quot; jquery1262853132078=&quot;36&quot; jquery1239384988140=&quot;42&quot; jquery1239380179187=&quot;20&quot;&gt;收件人-手机&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1262853471968=&quot;14&quot; jquery1262853132078=&quot;37&quot; jquery1239384988140=&quot;43&quot; jquery1239380179187=&quot;21&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FILTER: alpha(opacity=80); WIDTH: 87px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 15px; FONT-SIZE: 10pt; TOP: 134px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 45px&quot; id=printid8 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid8\');&quot; ondblclick=&quot;javascript:delch(\'printid8\');&quot; onmouseout=&quot;javascript:outch(\'printid8\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1262853471968=&quot;25&quot; jquery1262853132078=&quot;7&quot; jquery1239384988140=&quot;15&quot; jquery1239380474421=&quot;4&quot; jquery1239380233093=&quot;23&quot; jquery1239380719593=&quot;20&quot;&gt;发件人-姓名&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1262853471968=&quot;26&quot; jquery1262853132078=&quot;8&quot; jquery1239384988140=&quot;16&quot; jquery1239380474421=&quot;5&quot; jquery1239380233093=&quot;24&quot; jquery1239380719593=&quot;21&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FILTER: alpha(opacity=80); WIDTH: 339px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 44px; FONT-SIZE: 10pt; TOP: 154px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 45px&quot; id=printid11 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid11\');&quot; ondblclick=&quot;javascript:delch(\'printid11\');&quot; onmouseout=&quot;javascript:outch(\'printid11\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1262853471968=&quot;23&quot; jquery1262853132078=&quot;4&quot; jquery1239384988140=&quot;6&quot; jquery1239380474421=&quot;20&quot; jquery1239380233093=&quot;27&quot; jquery1239380719593=&quot;2&quot; jquery1239381308796=&quot;4&quot; jquery1239380553687=&quot;2&quot; jquery1239380517343=&quot;4&quot;&gt;发件人-地址&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1262853471968=&quot;24&quot; jquery1262853132078=&quot;5&quot; jquery1239384988140=&quot;7&quot; jquery1239380474421=&quot;21&quot; jquery1239380233093=&quot;28&quot; jquery1239380719593=&quot;3&quot; jquery1239381308796=&quot;5&quot; jquery1239380553687=&quot;3&quot; jquery1239380517343=&quot;5&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: Arial; LETTER-SPACING: 4px; FONT-SIZE: 10pt; TOP: 238px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 298px&quot; id=printid12 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid12\');&quot; ondblclick=&quot;javascript:delch(\'printid12\');&quot; onmouseout=&quot;javascript:outch(\'printid12\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1262853471968=&quot;17&quot; jquery1262853132078=&quot;19&quot; jquery1239384988140=&quot;22&quot; jquery1239380233093=&quot;29&quot; jquery1239380719593=&quot;18&quot;&gt;发件人-邮编&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1262853471968=&quot;18&quot; jquery1262853132078=&quot;20&quot; jquery1239384988140=&quot;23&quot; jquery1239380233093=&quot;30&quot; jquery1239380719593=&quot;19&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 241px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 93px&quot; id=printid14 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid14\');&quot; ondblclick=&quot;javascript:delch(\'printid14\');&quot; onmouseout=&quot;javascript:outch(\'printid14\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1262853471968=&quot;19&quot; jquery1262853132078=&quot;11&quot; jquery1239384988140=&quot;29&quot; jquery1239380474421=&quot;13&quot; jquery1239380553687=&quot;8&quot; jquery1239380461312=&quot;8&quot;&gt;发件人-手机&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1262853471968=&quot;20&quot; jquery1262853132078=&quot;12&quot; jquery1239384988140=&quot;30&quot; jquery1239380474421=&quot;14&quot; jquery1239380553687=&quot;9&quot; jquery1239380461312=&quot;9&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FILTER: alpha(opacity=80); WIDTH: 92px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 15px; FONT-SIZE: 10pt; TOP: 94px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 461px&quot; id=printid2 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid2\');&quot; ondblclick=&quot;javascript:delch(\'printid2\');&quot; onmouseout=&quot;javascript:outch(\'printid2\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1262853471968=&quot;6&quot; jquery1262853132078=&quot;27&quot; jquery1239384988140=&quot;2&quot; jquery1239380474421=&quot;22&quot;&gt;收件人-省&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1262853471968=&quot;7&quot; jquery1262853132078=&quot;28&quot; jquery1239384988140=&quot;3&quot; jquery1239380474421=&quot;23&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FILTER: alpha(opacity=80); WIDTH: 120px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 21px; FONT-SIZE: 10pt; TOP: 284px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 94px&quot; id=printid15 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid15\');&quot; ondblclick=&quot;javascript:delch(\'printid15\');&quot; onmouseout=&quot;javascript:outch(\'printid15\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1262853471968=&quot;31&quot; jquery1262853132078=&quot;17&quot; jquery1239384988140=&quot;31&quot; jquery1239380553687=&quot;10&quot;&gt;订单号&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1262853471968=&quot;32&quot; jquery1262853132078=&quot;18&quot; jquery1239384988140=&quot;32&quot; jquery1239380553687=&quot;11&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FILTER: alpha(opacity=80); WIDTH: 26px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 10px; FONT-SIZE: 10pt; TOP: 87px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 98px&quot; id=printid18 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid18\');&quot; ondblclick=&quot;javascript:delch(\'printid18\');&quot; onmouseout=&quot;javascript:outch(\'printid18\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1262853471968=&quot;29&quot; jquery1262853132078=&quot;15&quot; jquery1239384988140=&quot;10&quot; jquery1239380719593=&quot;6&quot; jquery1239381308796=&quot;6&quot;&gt;年&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1262853471968=&quot;30&quot; jquery1262853132078=&quot;16&quot; jquery1239384988140=&quot;11&quot; jquery1239380719593=&quot;7&quot; jquery1239381308796=&quot;7&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FILTER: alpha(opacity=80); WIDTH: 26px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 12px; FONT-SIZE: 10pt; TOP: 87px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 137px&quot; id=printid19 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid19\');&quot; ondblclick=&quot;javascript:delch(\'printid19\');&quot; onmouseout=&quot;javascript:outch(\'printid19\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1262853471968=&quot;27&quot; jquery1262853132078=&quot;13&quot; jquery1239384988140=&quot;13&quot; jquery1239380719593=&quot;9&quot;&gt;月&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1262853471968=&quot;28&quot; jquery1262853132078=&quot;14&quot; jquery1239384988140=&quot;14&quot; jquery1239380719593=&quot;10&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FILTER: alpha(opacity=80); WIDTH: 338px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 69px; FONT-SIZE: 12pt; TOP: 155px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 414px&quot; id=printid4 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid4\');&quot; ondblclick=&quot;javascript:delch(\'printid4\');&quot; onmouseout=&quot;javascript:outch(\'printid4\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1262853471968=&quot;4&quot; jquery1262853132078=&quot;21&quot; jquery1239384988140=&quot;4&quot; jquery1239381485531=&quot;10&quot;&gt;收件人-地址&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1262853471968=&quot;5&quot; jquery1262853132078=&quot;22&quot; jquery1239384988140=&quot;5&quot; jquery1239381485531=&quot;11&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FILTER: alpha(opacity=80); WIDTH: 336px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 25px; FONT-SIZE: 10pt; TOP: 202px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 46px&quot; id=printid16 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid16\');&quot; ondblclick=&quot;javascript:delch(\'printid16\');&quot; onmouseout=&quot;javascript:outch(\'printid16\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1262853471968=&quot;21&quot; jquery1262853132078=&quot;9&quot; jquery1239384988140=&quot;20&quot;&gt;公司名称&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1262853471968=&quot;22&quot; jquery1262853132078=&quot;10&quot; jquery1239384988140=&quot;21&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 2px; FONT-SIZE: 12pt; TOP: 236px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 660px&quot; id=printid5 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid5\');&quot; ondblclick=&quot;javascript:delch(\'printid5\');&quot; onmouseout=&quot;javascript:outch(\'printid5\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1262853471968=&quot;15&quot; jquery1262853132078=&quot;34&quot; jquery1239384988140=&quot;54&quot;&gt;收件人-邮编&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1262853471968=&quot;16&quot; jquery1262853132078=&quot;35&quot; jquery1239384988140=&quot;55&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 2px; FONT-SIZE: 12pt; TOP: 89px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 290px&quot; id=printid9 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid9\');&quot; ondblclick=&quot;javascript:delch(\'printid9\');&quot; onmouseout=&quot;javascript:outch(\'printid9\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1262853471968=&quot;2&quot; jquery1262853132078=&quot;2&quot; jquery1239384988140=&quot;61&quot;&gt;发件人-省&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1262853471968=&quot;3&quot; jquery1262853132078=&quot;3&quot; jquery1239384988140=&quot;62&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;\r\n&lt;DIV style=&quot;FILTER: alpha(opacity=80); WIDTH: 77px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 8px; FONT-SIZE: 10pt; TOP: 96px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 558px&quot; id=printid3 class=jqDnR onmouseover=&quot;javascript:cheach(\'printid3\');&quot; ondblclick=&quot;javascript:delch(\'printid3\');&quot; onmouseout=&quot;javascript:outch(\'printid3\');&quot;&gt;\r\n&lt;DIV class=&quot;jqHandle jqDrag&quot; jquery1262853471968=&quot;9&quot; jquery1262853132078=&quot;32&quot;&gt;收件人-城市&lt;/DIV&gt;\r\n&lt;DIV class=&quot;jqHandle jqResize&quot; jquery1262853471968=&quot;10&quot; jquery1262853132078=&quot;33&quot;&gt;&lt;/DIV&gt;&lt;/DIV&gt;', 'exp05.jpg', 'print', '2', '1', '1278303008', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('6', 'cn', '申通快递', 'shengtong', '', '&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 224px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 467px&quot; id=&quot;printid1&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid1\');&quot; ondblclick=&quot;javascript:delch(\'printid1\');&quot; onmouseout=&quot;javascript:outch(\'printid1\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380179187=&quot;18&quot; jquery1239380233093=&quot;2&quot; jquery1239380474421=&quot;24&quot; jquery1239381485531=&quot;13&quot; jquery1239384988140=&quot;40&quot; jquery1262853132078=&quot;25&quot; jquery1262853471968=&quot;11&quot; jquery1262853620828=&quot;21&quot;&gt;收件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380179187=&quot;19&quot; jquery1239380233093=&quot;3&quot; jquery1239380474421=&quot;25&quot; jquery1239381485531=&quot;14&quot; jquery1239384988140=&quot;41&quot; jquery1262853132078=&quot;26&quot; jquery1262853471968=&quot;12&quot; jquery1262853620828=&quot;22&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 103px; ZOOM: 1; FONT-FAMILY: Arial; LETTER-SPACING: 0px; HEIGHT: 17px; FONT-SIZE: 10pt; TOP: 265px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 459px&quot; id=&quot;printid7&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid7\');&quot; ondblclick=&quot;javascript:delch(\'printid7\');&quot; onmouseout=&quot;javascript:outch(\'printid7\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380179187=&quot;20&quot; jquery1239384988140=&quot;42&quot; jquery1262853132078=&quot;36&quot; jquery1262853471968=&quot;13&quot; jquery1262853620828=&quot;23&quot;&gt;收件人-手机&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380179187=&quot;21&quot; jquery1239384988140=&quot;43&quot; jquery1262853132078=&quot;37&quot; jquery1262853471968=&quot;14&quot; jquery1262853620828=&quot;24&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 87px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 15px; FONT-SIZE: 10pt; TOP: 226px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 129px&quot; id=&quot;printid8&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid8\');&quot; ondblclick=&quot;javascript:delch(\'printid8\');&quot; onmouseout=&quot;javascript:outch(\'printid8\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380233093=&quot;23&quot; jquery1239380474421=&quot;4&quot; jquery1239384988140=&quot;15&quot; jquery1239380719593=&quot;20&quot; jquery1262853132078=&quot;7&quot; jquery1262853471968=&quot;25&quot; jquery1262853620828=&quot;8&quot;&gt;发件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380233093=&quot;24&quot; jquery1239380474421=&quot;5&quot; jquery1239384988140=&quot;16&quot; jquery1239380719593=&quot;21&quot; jquery1262853132078=&quot;8&quot; jquery1262853471968=&quot;26&quot; jquery1262853620828=&quot;9&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 249px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 39px; FONT-SIZE: 10pt; TOP: 142px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 111px&quot; id=&quot;printid11&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid11\');&quot; ondblclick=&quot;javascript:delch(\'printid11\');&quot; onmouseout=&quot;javascript:outch(\'printid11\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380233093=&quot;27&quot; jquery1239380474421=&quot;20&quot; jquery1239384988140=&quot;6&quot; jquery1239380719593=&quot;2&quot; jquery1239380517343=&quot;4&quot; jquery1239380553687=&quot;2&quot; jquery1239381308796=&quot;4&quot; jquery1262853132078=&quot;4&quot; jquery1262853471968=&quot;23&quot; jquery1262853620828=&quot;6&quot;&gt;发件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380233093=&quot;28&quot; jquery1239380474421=&quot;21&quot; jquery1239384988140=&quot;7&quot; jquery1239380719593=&quot;3&quot; jquery1239380517343=&quot;5&quot; jquery1239380553687=&quot;3&quot; jquery1239381308796=&quot;5&quot; jquery1262853132078=&quot;5&quot; jquery1262853471968=&quot;24&quot; jquery1262853620828=&quot;7&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: Arial; LETTER-SPACING: 4px; FONT-SIZE: 10pt; TOP: 263px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 265px&quot; id=&quot;printid12&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid12\');&quot; ondblclick=&quot;javascript:delch(\'printid12\');&quot; onmouseout=&quot;javascript:outch(\'printid12\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380233093=&quot;29&quot; jquery1239384988140=&quot;22&quot; jquery1239380719593=&quot;18&quot; jquery1262853132078=&quot;19&quot; jquery1262853471968=&quot;17&quot; jquery1262853620828=&quot;15&quot;&gt;发件人-邮编&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380233093=&quot;30&quot; jquery1239384988140=&quot;23&quot; jquery1239380719593=&quot;19&quot; jquery1262853132078=&quot;20&quot; jquery1262853471968=&quot;18&quot; jquery1262853620828=&quot;16&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 263px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 125px&quot; id=&quot;printid14&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid14\');&quot; ondblclick=&quot;javascript:delch(\'printid14\');&quot; onmouseout=&quot;javascript:outch(\'printid14\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239380474421=&quot;13&quot; jquery1239384988140=&quot;29&quot; jquery1239380553687=&quot;8&quot; jquery1239380461312=&quot;8&quot; jquery1262853132078=&quot;11&quot; jquery1262853471968=&quot;19&quot; jquery1262853620828=&quot;11&quot;&gt;发件人-手机&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239380474421=&quot;14&quot; jquery1239384988140=&quot;30&quot; jquery1239380553687=&quot;9&quot; jquery1239380461312=&quot;9&quot; jquery1262853132078=&quot;12&quot; jquery1262853471968=&quot;20&quot; jquery1262853620828=&quot;12&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 306px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 42px; FONT-SIZE: 12pt; TOP: 144px; FONT-WEIGHT: 700; TEXT-DECORATION: none; LEFT: 392px&quot; id=&quot;printid4&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid4\');&quot; ondblclick=&quot;javascript:delch(\'printid4\');&quot; onmouseout=&quot;javascript:outch(\'printid4\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239381485531=&quot;10&quot; jquery1239384988140=&quot;4&quot; jquery1262853132078=&quot;21&quot; jquery1262853471968=&quot;4&quot; jquery1262853620828=&quot;2&quot;&gt;收件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239381485531=&quot;11&quot; jquery1239384988140=&quot;5&quot; jquery1262853132078=&quot;22&quot; jquery1262853471968=&quot;5&quot; jquery1262853620828=&quot;3&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 241px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 23px; FONT-SIZE: 10pt; TOP: 190px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 118px&quot; id=&quot;printid16&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid16\');&quot; ondblclick=&quot;javascript:delch(\'printid16\');&quot; onmouseout=&quot;javascript:outch(\'printid16\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;20&quot; jquery1262853132078=&quot;9&quot; jquery1262853471968=&quot;21&quot; jquery1262853620828=&quot;4&quot;&gt;公司名称&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;21&quot; jquery1262853132078=&quot;10&quot; jquery1262853471968=&quot;22&quot; jquery1262853620828=&quot;5&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 2px; FONT-SIZE: 12pt; TOP: 264px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 604px&quot; id=&quot;printid5&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid5\');&quot; ondblclick=&quot;javascript:delch(\'printid5\');&quot; onmouseout=&quot;javascript:outch(\'printid5\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1239384988140=&quot;54&quot; jquery1262853132078=&quot;34&quot; jquery1262853471968=&quot;15&quot; jquery1262853620828=&quot;25&quot;&gt;收件人-邮编&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1239384988140=&quot;55&quot; jquery1262853132078=&quot;35&quot; jquery1262853471968=&quot;16&quot; jquery1262853620828=&quot;26&quot;&gt;&lt;/div&gt;&lt;/div&gt;', 'exp06.jpg', 'print', '2', '1', '1278303008', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('7', 'cn', '顺丰速递', 'shunfeng01', '', '&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 279px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 307px&quot; id=&quot;printid1&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid1\');&quot; ondblclick=&quot;javascript:delch(\'printid1\');&quot; onmouseout=&quot;javascript:outch(\'printid1\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;93&quot;&gt;收件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;94&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 83px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 700px&quot; id=&quot;printid3&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid3\');&quot; ondblclick=&quot;javascript:delch(\'printid3\');&quot; onmouseout=&quot;javascript:outch(\'printid3\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;95&quot;&gt;收件人-城市&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;96&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 345px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 67px; FONT-SIZE: 12pt; TOP: 340px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 39px&quot; id=&quot;printid5&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid5\');&quot; ondblclick=&quot;javascript:delch(\'printid5\');&quot; onmouseout=&quot;javascript:outch(\'printid5\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;97&quot;&gt;收件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;98&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 426px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 124px&quot; id=&quot;printid7&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid7\');&quot; ondblclick=&quot;javascript:delch(\'printid7\');&quot; onmouseout=&quot;javascript:outch(\'printid7\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;104&quot;&gt;收件人-电话&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;105&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 154px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 17px; FONT-SIZE: 10pt; TOP: 424px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 232px&quot; id=&quot;printid8&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid8\');&quot; ondblclick=&quot;javascript:delch(\'printid8\');&quot; onmouseout=&quot;javascript:outch(\'printid8\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;106&quot;&gt;收件人-手机&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;107&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 136px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 307px&quot; id=&quot;printid9&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid9\');&quot; ondblclick=&quot;javascript:delch(\'printid9\');&quot; onmouseout=&quot;javascript:outch(\'printid9\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;108&quot;&gt;发件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;109&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 83px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 613px&quot; id=&quot;printid11&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid11\');&quot; ondblclick=&quot;javascript:delch(\'printid11\');&quot; onmouseout=&quot;javascript:outch(\'printid11\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;115&quot;&gt;发件人-城市&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;116&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 297px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 53px; FONT-SIZE: 12pt; TOP: 169px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 88px&quot; id=&quot;printid12&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid12\');&quot; ondblclick=&quot;javascript:delch(\'printid12\');&quot; onmouseout=&quot;javascript:outch(\'printid12\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;117&quot;&gt;发件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;118&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 237px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 124px&quot; id=&quot;printid14&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid14\');&quot; ondblclick=&quot;javascript:delch(\'printid14\');&quot; onmouseout=&quot;javascript:outch(\'printid14\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;124&quot;&gt;发件人-电话&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;125&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 153px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 13px; FONT-SIZE: 10pt; TOP: 238px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 231px&quot; id=&quot;printid15&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid15\');&quot; ondblclick=&quot;javascript:delch(\'printid15\');&quot; onmouseout=&quot;javascript:outch(\'printid15\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;126&quot;&gt;发件人-手机&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;127&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 177px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 19px; FONT-SIZE: 10pt; TOP: 138px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 91px&quot; id=&quot;printid17&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid17\');&quot; ondblclick=&quot;javascript:delch(\'printid17\');&quot; onmouseout=&quot;javascript:outch(\'printid17\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;128&quot;&gt;公司名称&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;129&quot;&gt;&lt;/div&gt;&lt;/div&gt;', 'exp07.jpg', 'print', '2', '1', '1278303008', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('8', 'cn', '速尔物流', 'shure', '', '&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 100px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 487px&quot; id=&quot;printid1&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid1\');&quot; ondblclick=&quot;javascript:delch(\'printid1\');&quot; onmouseout=&quot;javascript:outch(\'printid1\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854139296=&quot;22&quot; jquery1262853793937=&quot;93&quot;&gt;收件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854139296=&quot;23&quot; jquery1262853793937=&quot;94&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 64px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 687px&quot; id=&quot;printid3&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid3\');&quot; ondblclick=&quot;javascript:delch(\'printid3\');&quot; onmouseout=&quot;javascript:outch(\'printid3\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854139296=&quot;11&quot; jquery1262853793937=&quot;95&quot;&gt;收件人-城市&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854139296=&quot;12&quot; jquery1262853793937=&quot;96&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 338px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 51px; FONT-SIZE: 12pt; TOP: 148px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 444px&quot; id=&quot;printid5&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid5\');&quot; ondblclick=&quot;javascript:delch(\'printid5\');&quot; onmouseout=&quot;javascript:outch(\'printid5\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854139296=&quot;20&quot; jquery1262853793937=&quot;97&quot;&gt;收件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854139296=&quot;21&quot; jquery1262853793937=&quot;98&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 108px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 15px; FONT-SIZE: 10pt; TOP: 103px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 651px&quot; id=&quot;printid8&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid8\');&quot; ondblclick=&quot;javascript:delch(\'printid8\');&quot; onmouseout=&quot;javascript:outch(\'printid8\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854139296=&quot;26&quot; jquery1262853793937=&quot;106&quot;&gt;收件人-手机&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854139296=&quot;27&quot; jquery1262853793937=&quot;107&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 103px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 101px&quot; id=&quot;printid9&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid9\');&quot; ondblclick=&quot;javascript:delch(\'printid9\');&quot; onmouseout=&quot;javascript:outch(\'printid9\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854139296=&quot;2&quot; jquery1262853793937=&quot;108&quot;&gt;发件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854139296=&quot;3&quot; jquery1262853793937=&quot;109&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 37px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 689px&quot; id=&quot;printid11&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid11\');&quot; ondblclick=&quot;javascript:delch(\'printid11\');&quot; onmouseout=&quot;javascript:outch(\'printid11\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854139296=&quot;8&quot; jquery1262853793937=&quot;115&quot;&gt;发件人-城市&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854139296=&quot;9&quot; jquery1262853793937=&quot;116&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 311px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 44px; FONT-SIZE: 12pt; TOP: 151px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 81px&quot; id=&quot;printid12&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid12\');&quot; ondblclick=&quot;javascript:delch(\'printid12\');&quot; onmouseout=&quot;javascript:outch(\'printid12\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854139296=&quot;6&quot; jquery1262853793937=&quot;117&quot;&gt;发件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854139296=&quot;7&quot; jquery1262853793937=&quot;118&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 100px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 261px&quot; id=&quot;printid14&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid14\');&quot; ondblclick=&quot;javascript:delch(\'printid14\');&quot; onmouseout=&quot;javascript:outch(\'printid14\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854139296=&quot;13&quot; jquery1262853793937=&quot;124&quot;&gt;发件人-电话&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854139296=&quot;14&quot; jquery1262853793937=&quot;125&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 288px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 20px; FONT-SIZE: 10pt; TOP: 126px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 91px&quot; id=&quot;printid17&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid17\');&quot; ondblclick=&quot;javascript:delch(\'printid17\');&quot; onmouseout=&quot;javascript:outch(\'printid17\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854139296=&quot;4&quot; jquery1262853793937=&quot;128&quot;&gt;公司名称&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854139296=&quot;5&quot; jquery1262853793937=&quot;129&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 230px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 88px&quot; id=&quot;printid16&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid16\');&quot; ondblclick=&quot;javascript:delch(\'printid16\');&quot; onmouseout=&quot;javascript:outch(\'printid16\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854139296=&quot;31&quot;&gt;内件品名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854139296=&quot;32&quot;&gt;&lt;/div&gt;&lt;/div&gt;', 'exp08.jpg', 'print', '2', '1', '1278303008', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('9', 'cn', '圆通物流', 'yuantong', '', '&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 118px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 493px&quot; id=&quot;printid1&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid1\');&quot; ondblclick=&quot;javascript:delch(\'printid1\');&quot; onmouseout=&quot;javascript:outch(\'printid1\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;93&quot; jquery1262854139296=&quot;22&quot; jquery1262854267125=&quot;6&quot;&gt;收件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;94&quot; jquery1262854139296=&quot;23&quot; jquery1262854267125=&quot;7&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 181px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 631px&quot; id=&quot;printid3&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid3\');&quot; ondblclick=&quot;javascript:delch(\'printid3\');&quot; onmouseout=&quot;javascript:outch(\'printid3\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;95&quot; jquery1262854139296=&quot;11&quot; jquery1262854267125=&quot;11&quot;&gt;收件人-城市&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;96&quot; jquery1262854139296=&quot;12&quot; jquery1262854267125=&quot;12&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 405px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 41px; FONT-SIZE: 12pt; TOP: 206px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 430px&quot; id=&quot;printid5&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid5\');&quot; ondblclick=&quot;javascript:delch(\'printid5\');&quot; onmouseout=&quot;javascript:outch(\'printid5\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;97&quot; jquery1262854139296=&quot;20&quot; jquery1262854267125=&quot;4&quot;&gt;收件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;98&quot; jquery1262854139296=&quot;21&quot; jquery1262854267125=&quot;5&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 108px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 15px; FONT-SIZE: 10pt; TOP: 119px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 688px&quot; id=&quot;printid8&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid8\');&quot; ondblclick=&quot;javascript:delch(\'printid8\');&quot; onmouseout=&quot;javascript:outch(\'printid8\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;106&quot; jquery1262854139296=&quot;26&quot; jquery1262854267125=&quot;9&quot;&gt;收件人-手机&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;107&quot; jquery1262854139296=&quot;27&quot; jquery1262854267125=&quot;10&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 102px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 85px&quot; id=&quot;printid9&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid9\');&quot; ondblclick=&quot;javascript:delch(\'printid9\');&quot; onmouseout=&quot;javascript:outch(\'printid9\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;108&quot; jquery1262854139296=&quot;2&quot; jquery1262854267125=&quot;27&quot;&gt;发件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;109&quot; jquery1262854139296=&quot;3&quot; jquery1262854267125=&quot;28&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 170px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 197px&quot; id=&quot;printid11&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid11\');&quot; ondblclick=&quot;javascript:delch(\'printid11\');&quot; onmouseout=&quot;javascript:outch(\'printid11\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;115&quot; jquery1262854139296=&quot;8&quot; jquery1262854267125=&quot;13&quot;&gt;发件人-城市&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;116&quot; jquery1262854139296=&quot;9&quot; jquery1262854267125=&quot;14&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 368px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 38px; FONT-SIZE: 12pt; TOP: 201px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 33px&quot; id=&quot;printid12&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid12\');&quot; ondblclick=&quot;javascript:delch(\'printid12\');&quot; onmouseout=&quot;javascript:outch(\'printid12\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;117&quot; jquery1262854139296=&quot;6&quot; jquery1262854267125=&quot;21&quot;&gt;发件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;118&quot; jquery1262854139296=&quot;7&quot; jquery1262854267125=&quot;22&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 244px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 129px&quot; id=&quot;printid14&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid14\');&quot; ondblclick=&quot;javascript:delch(\'printid14\');&quot; onmouseout=&quot;javascript:outch(\'printid14\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;124&quot; jquery1262854139296=&quot;13&quot; jquery1262854267125=&quot;2&quot;&gt;发件人-电话&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;125&quot; jquery1262854139296=&quot;14&quot; jquery1262854267125=&quot;3&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 288px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 20px; FONT-SIZE: 10pt; TOP: 130px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 108px&quot; id=&quot;printid17&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid17\');&quot; ondblclick=&quot;javascript:delch(\'printid17\');&quot; onmouseout=&quot;javascript:outch(\'printid17\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262853793937=&quot;128&quot; jquery1262854139296=&quot;4&quot; jquery1262854267125=&quot;25&quot;&gt;公司名称&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262853793937=&quot;129&quot; jquery1262854139296=&quot;5&quot; jquery1262854267125=&quot;26&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 349px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 36px&quot; id=&quot;printid16&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid16\');&quot; ondblclick=&quot;javascript:delch(\'printid16\');&quot; onmouseout=&quot;javascript:outch(\'printid16\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854139296=&quot;31&quot; jquery1262854267125=&quot;23&quot;&gt;内件品名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854139296=&quot;32&quot; jquery1262854267125=&quot;24&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 179px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 498px&quot; id=&quot;printid2&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid2\');&quot; ondblclick=&quot;javascript:delch(\'printid2\');&quot; onmouseout=&quot;javascript:outch(\'printid2\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854267125=&quot;15&quot;&gt;收件人-省&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854267125=&quot;16&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 182px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 733px&quot; id=&quot;printid4&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid4\');&quot; ondblclick=&quot;javascript:delch(\'printid4\');&quot; onmouseout=&quot;javascript:outch(\'printid4\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854267125=&quot;17&quot;&gt;收件人-区&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854267125=&quot;18&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 247px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 732px&quot; id=&quot;printid6&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid6\');&quot; ondblclick=&quot;javascript:delch(\'printid6\');&quot; onmouseout=&quot;javascript:outch(\'printid6\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854267125=&quot;19&quot;&gt;收件人-邮编&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854267125=&quot;20&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 245px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 304px&quot; id=&quot;printid13&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid13\');&quot; ondblclick=&quot;javascript:delch(\'printid13\');&quot; onmouseout=&quot;javascript:outch(\'printid13\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854267125=&quot;29&quot;&gt;发件人-邮编&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854267125=&quot;30&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 169px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 72px&quot; id=&quot;printid10&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid10\');&quot; ondblclick=&quot;javascript:delch(\'printid10\');&quot; onmouseout=&quot;javascript:outch(\'printid10\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854267125=&quot;31&quot;&gt;发件人-省&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854267125=&quot;32&quot;&gt;&lt;/div&gt;&lt;/div&gt;', 'exp12.jpg', 'print', '2', '1', '1278303008', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('10', 'cn', '宅急送', 'zaijishong', '', '&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 98px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 441px&quot; id=&quot;printid1&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid1\');&quot; ondblclick=&quot;javascript:delch(\'printid1\');&quot; onmouseout=&quot;javascript:outch(\'printid1\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854442656=&quot;33&quot; jquery1262854267125=&quot;6&quot; jquery1262854139296=&quot;22&quot; jquery1262853793937=&quot;93&quot;&gt;收件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854442656=&quot;34&quot; jquery1262854267125=&quot;7&quot; jquery1262854139296=&quot;23&quot; jquery1262853793937=&quot;94&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 129px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 417px&quot; id=&quot;printid3&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid3\');&quot; ondblclick=&quot;javascript:delch(\'printid3\');&quot; onmouseout=&quot;javascript:outch(\'printid3\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854442656=&quot;7&quot; jquery1262854267125=&quot;11&quot; jquery1262854139296=&quot;11&quot; jquery1262853793937=&quot;95&quot;&gt;收件人-城市&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854442656=&quot;8&quot; jquery1262854267125=&quot;12&quot; jquery1262854139296=&quot;12&quot; jquery1262853793937=&quot;96&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 314px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 30px; FONT-SIZE: 12pt; TOP: 155px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 377px&quot; id=&quot;printid5&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid5\');&quot; ondblclick=&quot;javascript:delch(\'printid5\');&quot; onmouseout=&quot;javascript:outch(\'printid5\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854442656=&quot;9&quot; jquery1262854267125=&quot;4&quot; jquery1262854139296=&quot;20&quot; jquery1262853793937=&quot;97&quot;&gt;收件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854442656=&quot;10&quot; jquery1262854267125=&quot;5&quot; jquery1262854139296=&quot;21&quot; jquery1262853793937=&quot;98&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 108px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 15px; FONT-SIZE: 10pt; TOP: 214px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 579px&quot; id=&quot;printid8&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid8\');&quot; ondblclick=&quot;javascript:delch(\'printid8\');&quot; onmouseout=&quot;javascript:outch(\'printid8\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854442656=&quot;4&quot; jquery1262854267125=&quot;9&quot; jquery1262854139296=&quot;26&quot; jquery1262853793937=&quot;106&quot;&gt;收件人-手机&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854442656=&quot;5&quot; jquery1262854267125=&quot;10&quot; jquery1262854139296=&quot;27&quot; jquery1262853793937=&quot;107&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 104px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 89px&quot; id=&quot;printid9&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid9\');&quot; ondblclick=&quot;javascript:delch(\'printid9\');&quot; onmouseout=&quot;javascript:outch(\'printid9\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854442656=&quot;17&quot; jquery1262854267125=&quot;27&quot; jquery1262854139296=&quot;2&quot; jquery1262853793937=&quot;108&quot;&gt;发件人-姓名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854442656=&quot;18&quot; jquery1262854267125=&quot;28&quot; jquery1262854139296=&quot;3&quot; jquery1262853793937=&quot;109&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 101px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 231px&quot; id=&quot;printid11&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid11\');&quot; ondblclick=&quot;javascript:delch(\'printid11\');&quot; onmouseout=&quot;javascript:outch(\'printid11\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854442656=&quot;19&quot; jquery1262854267125=&quot;13&quot; jquery1262854139296=&quot;8&quot; jquery1262853793937=&quot;115&quot;&gt;发件人-城市&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854442656=&quot;20&quot; jquery1262854267125=&quot;14&quot; jquery1262854139296=&quot;9&quot; jquery1262853793937=&quot;116&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 288px; ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; HEIGHT: 44px; FONT-SIZE: 12pt; TOP: 133px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 66px&quot; id=&quot;printid12&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid12\');&quot; ondblclick=&quot;javascript:delch(\'printid12\');&quot; onmouseout=&quot;javascript:outch(\'printid12\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854442656=&quot;13&quot; jquery1262854267125=&quot;21&quot; jquery1262854139296=&quot;6&quot; jquery1262853793937=&quot;117&quot;&gt;发件人-地址&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854442656=&quot;14&quot; jquery1262854267125=&quot;22&quot; jquery1262854139296=&quot;7&quot; jquery1262853793937=&quot;118&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 214px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 63px&quot; id=&quot;printid14&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid14\');&quot; ondblclick=&quot;javascript:delch(\'printid14\');&quot; onmouseout=&quot;javascript:outch(\'printid14\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854442656=&quot;24&quot; jquery1262854267125=&quot;2&quot; jquery1262854139296=&quot;13&quot; jquery1262853793937=&quot;124&quot;&gt;发件人-电话&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854442656=&quot;25&quot; jquery1262854267125=&quot;3&quot; jquery1262854139296=&quot;14&quot; jquery1262853793937=&quot;125&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 288px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 20px; FONT-SIZE: 10pt; TOP: 186px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 68px&quot; id=&quot;printid17&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid17\');&quot; ondblclick=&quot;javascript:delch(\'printid17\');&quot; onmouseout=&quot;javascript:outch(\'printid17\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854442656=&quot;2&quot; jquery1262854267125=&quot;25&quot; jquery1262854139296=&quot;4&quot; jquery1262853793937=&quot;128&quot;&gt;公司名称&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854442656=&quot;3&quot; jquery1262854267125=&quot;26&quot; jquery1262854139296=&quot;5&quot; jquery1262853793937=&quot;129&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 236px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 52px&quot; id=&quot;printid16&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid16\');&quot; ondblclick=&quot;javascript:delch(\'printid16\');&quot; onmouseout=&quot;javascript:outch(\'printid16\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854442656=&quot;44&quot; jquery1262854267125=&quot;23&quot; jquery1262854139296=&quot;31&quot;&gt;内件品名&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854442656=&quot;45&quot; jquery1262854267125=&quot;24&quot; jquery1262854139296=&quot;32&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 103px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 580px&quot; id=&quot;printid2&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid2\');&quot; ondblclick=&quot;javascript:delch(\'printid2\');&quot; onmouseout=&quot;javascript:outch(\'printid2\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854442656=&quot;31&quot; jquery1262854267125=&quot;15&quot;&gt;收件人-省&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854442656=&quot;32&quot; jquery1262854267125=&quot;16&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); ZOOM: 1; FONT-FAMILY: 黑体; LETTER-SPACING: 0px; FONT-SIZE: 12pt; TOP: 134px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 532px&quot; id=&quot;printid4&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid4\');&quot; ondblclick=&quot;javascript:delch(\'printid4\');&quot; onmouseout=&quot;javascript:outch(\'printid4\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854442656=&quot;35&quot; jquery1262854267125=&quot;17&quot;&gt;收件人-区&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854442656=&quot;36&quot; jquery1262854267125=&quot;18&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=80); WIDTH: 122px; ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; HEIGHT: 13px; FONT-SIZE: 10pt; TOP: 211px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 233px&quot; id=&quot;printid15&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid15\');&quot; ondblclick=&quot;javascript:delch(\'printid15\');&quot; onmouseout=&quot;javascript:outch(\'printid15\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854442656=&quot;29&quot;&gt;发件人-手机&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854442656=&quot;30&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;FILTER: alpha(opacity=100); ZOOM: 1; FONT-FAMILY: 宋体; LETTER-SPACING: 0px; FONT-SIZE: 10pt; TOP: 213px; FONT-WEIGHT: normal; TEXT-DECORATION: none; LEFT: 412px&quot; id=&quot;printid7&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'printid7\');&quot; ondblclick=&quot;javascript:delch(\'printid7\');&quot; onmouseout=&quot;javascript:outch(\'printid7\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot; jquery1262854442656=&quot;42&quot;&gt;收件人-电话&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot; jquery1262854442656=&quot;43&quot;&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;div style=&quot;WIDTH: 30px; FONT-FAMILY: 黑体; LETTER-SPACING: 9px; HEIGHT: 21px; FONT-SIZE: 14pt; TOP: 367px; FONT-WEIGHT: 700; TEXT-DECORATION: underline; LEFT: 330px; opacity: 0.8&quot; id=&quot;221817&quot; class=&quot;jqDnR&quot; onmouseover=&quot;javascript:cheach(\'221817\');&quot; ondblclick=&quot;javascript:delch(\'221817\');&quot; onmouseout=&quot;javascript:outch(\'221817\');&quot;&gt;\n&lt;div class=&quot;jqHandle jqDrag&quot;&gt;√&lt;/div&gt;\n&lt;div class=&quot;jqHandle jqResize&quot;&gt;&lt;/div&gt;&lt;/div&gt;', 'exp14.jpg', 'print', '2', '1', '1278303008', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('11', 'cn', '订单确认信', 'orderen', '[%consignee%]：感谢您的支持，请确认（[%ordersn%]）订单！', '&lt;p&gt;&lt;strong&gt;尊敬的[%consignee%]：&lt;/strong&gt;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;感谢您在ECISP网站购物！以下是您的购物信息，请您确认查看。订单成功提交后的30分钟内您可以自助修改订单信息。&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;以下为您的订购信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人姓名：[%consignee%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮箱：[%email%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人地址：[%address%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮编：[%zipcode%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人电话：[%tel%]&amp;nbsp;[%mobile%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;订单信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单号：[%ordersn%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单总额：[%orderamount%]&amp;nbsp;&amp;nbsp;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单时间：[%time%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;备注：&lt;/strong&gt;[%content%]&amp;nbsp;&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;重要说明：&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;1、此订单确认信仅确认我们已收到了您的订单，只有当我们向您发出送货确认的电子邮件通知您我们已将产品发出时，我们和您之间的订购合同才成立。如果您在一份订单里订购了多种产品，而我们只给您发出了其中一部分产品的发货确认电子邮件，那么只有这部分产品的订购合同成立；直到我们向您发出其他产品的发货确认电子邮件，您关于其他产品的订购合同才成立。&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2、针对变更订单（包括退订缺货）的用户，规定&amp;ldquo;在您已经成功提交订单后，如您要求退订部分商品后继续发货，因此造成订单金额减少，而不能满足我们根据原订单金额所提供的全部或部分优惠条件的，我们将根据您变更后的订单金额调整或取消该优惠后为您发货，请您谅解。&amp;nbsp;再次感谢您的购物。&lt;/p&gt;', '', 'mailorder', '3', '1', '1278303008', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('12', 'cn', '新订单提醒', 'orderwarn', '管理员，您有新订单了！订单号：[%ordersn%]', '&lt;p&gt;&lt;strong&gt;管理员：&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;很高兴的提醒您拥有新的订单，以下是您的订单信息：&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;订购信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人姓名：[%consignee%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮箱：[%email%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人地址：[%address%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮编：[%zipcode%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人电话：[%tel%]&amp;nbsp;[%mobile%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;订单信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单号：[%ordersn%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单总额：[%orderamount%]&amp;nbsp;&amp;nbsp;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单时间：[%time%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;备注：&lt;/strong&gt;[%content%]&lt;/p&gt;', '', 'mailorder', '3', '1', '1279076237', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('13', 'cn', '表单-提交感谢信', 'formnewremind', '感谢您的提交，我们会尽快答复您！', '&lt;p&gt;您好，感谢您对我们的支持，以下是您提交的内容：&lt;br /&gt; 提交主题：[%formgroupname%]&lt;br /&gt; 提交时间：[%f_time%]&lt;br /&gt; 提交内容：&lt;br /&gt;-------------------------------------------&lt;br /&gt;[%attrvalue%]&lt;/p&gt;\n&lt;p&gt;---------------------------------&lt;/p&gt;', '', 'mailform', '3', '1', '1279517549', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('14', 'cn', '表单-回复通知', 'formreremind', '回复：[%formgroupname%]', '&lt;p&gt;&lt;strong&gt;[%recontent%]&lt;br /&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;-------------------------------------------------------------------------&lt;br /&gt; 以下是您的留言：&lt;br /&gt;[%attrvalue%]&lt;br /&gt; -------------------------------------------------------------------------&lt;br /&gt; 欢迎您对我们的提出宝贵建议和意见，再次感谢您的支持！&lt;/p&gt;', '', 'mailform', '3', '1', '1279592547', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('15', 'cn', '会员-注册邮件通知', 'memberreg', '[%m_username%]，欢迎您成为我们的会员！', '&lt;p&gt;&lt;strong&gt;[%m_username%]您好！&lt;br /&gt;&lt;br /&gt;&lt;/strong&gt;欢迎您成为我们的会员：&lt;/p&gt;\n&lt;p&gt;用户名：[%m_username%]&lt;br /&gt;密码：*****&lt;br /&gt;&lt;br /&gt;（请保存好您的密码）&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;ECISP.CN&lt;/p&gt;\n&lt;p&gt;[%nowtime%]&lt;/p&gt;', '', 'mailmember', '3', '1', '1279682538', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('16', 'cn', '会员-邮件激活验证通知', 'memberat', '[%m_username%]您好，请对您的邮箱进行验证！', '&lt;p&gt;[%m_username%] &lt;strong&gt;您好！&lt;br /&gt;&lt;br /&gt;&lt;/strong&gt;感谢您注册ECISP.CN，请点击下面的链接即可完成注册：&lt;br /&gt;&lt;br /&gt;&lt;a href=&quot;[%checklink%]&quot; target=&quot;_blank&quot;&gt;[%checklink%]&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;（如果链接无法点击，请将它拷贝到浏览器的地址栏中）&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;[%nowtime%]&lt;/p&gt;', '', 'mailmember', '3', '1', '1279682675', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('17', 'cn', '会员-密码找回通知', 'memberpw', '[%m_username%]您好，您的密码已经成功找回，请妥善保管！', '&lt;p&gt;&lt;strong&gt;[%m_username%]您好！&lt;br /&gt;&lt;br /&gt;&lt;/strong&gt;以下是您的新密码，请登陆网站后更改您的密码：&lt;/p&gt;\n&lt;p&gt;用户名：[%m_username%]&lt;br /&gt;密码：[%newpassword%]&lt;br /&gt;&lt;br /&gt;（请保存好您的密码）&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;ECISP.CN&lt;/p&gt;\n&lt;p&gt;[%nowtime%]&lt;/p&gt;', '', 'mailmember', '3', '1', '1279703622', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('18', 'cn', '订单取消', 'orderce', '[%consignee%]：您好，您已成功取消（[%ordersn%]）订单！', '&lt;p&gt;&lt;strong&gt;尊敬的[%consignee%]：&lt;/strong&gt;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;您已成功取消订单！&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;以下为您的订购信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人姓名：[%consignee%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮箱：[%email%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人地址：[%address%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮编：[%zipcode%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人电话：[%tel%]&amp;nbsp;[%mobile%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;订单信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单号：[%ordersn%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单总额：[%orderamount%]&amp;nbsp;&amp;nbsp;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单时间：[%time%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;备注：&lt;/strong&gt;[%content%]&amp;nbsp;&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;重要说明：&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;1、此订单确认信仅确认我们已收到了您的订单，只有当我们向您发出送货确认的电子邮件通知您我们已将产品发出时，我们和您之间的订购合同才成立。如果您在一份订单里订购了多种产品，而我们只给您发出了其中一部分产品的发货确认电子邮件，那么只有这部分产品的订购合同成立；直到我们向您发出其他产品的发货确认电子邮件，您关于其他产品的订购合同才成立。&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2、针对变更订单（包括退订缺货）的用户，规定&amp;ldquo;在您已经成功提交订单后，如您要求退订部分商品后继续发货，因此造成订单金额减少，而不能满足我们根据原订单金额所提供的全部或部分优惠条件的，我们将根据您变更后的订单金额调整或取消该优惠后为您发货，请您谅解。&amp;nbsp;再次感谢您的购物。&lt;/p&gt;', '', 'mailorder', '3', '1', '1280140049', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('19', 'cn', '论坛留言-留言回复提醒', 'forumre', '[%b_username%]您好，您的留言有新的回复！', '&lt;p&gt;[%b_username%]您好&lt;br /&gt; 您的留言：&lt;strong&gt;[%b_title%]有新回复，请即查查看！&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;br /&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;a href=&quot;[%forumlink%]&quot; target=&quot;_blank&quot;&gt;点击查看详细留言内容&lt;/a&gt;（如无法查看链接地址，请将此[%forumlink%]链接复制到浏览器！）&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', '', 'mailbbs', '3', '1', '1280201783', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('20', 'cn', '支付成功通知', 'orderpal', '[%consignee%]，您的订单（[%ordersn%]）已支付成功！', '&lt;p&gt;&lt;strong&gt;尊敬的[%consignee%]：&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-family: Verdana; font-size: x-small;&quot;&gt;感谢您的购物，我们已经收到您的订单款项。我们将立即配货发货，发货后我们将会邮件通知您，您也可以进入会员中心查看订单状态。如有其他问题，请联系我们，希望您能购物愉快、分享快乐。&lt;/span&gt;&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;支付方式：[%payname%]&amp;nbsp;&amp;nbsp; 支付单号：[%paysn%] &amp;nbsp; &amp;nbsp;&amp;nbsp;支付时间：[%paytime%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;以下为您的订购信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人姓名：[%consignee%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮箱：[%email%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人地址：[%address%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮编：[%zipcode%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人电话：[%tel%]&amp;nbsp;[%mobile%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;订单信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单号：[%ordersn%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单总额：[%orderamount%]&amp;nbsp;&amp;nbsp;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单时间：[%addtime%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;重要说明：&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;1、此订单确认信仅确认我们已收到了您的订单，只有当我们向您发出送货确认的电子邮件通知您我们已将产品发出时，我们和您之间的订购合同才成立。如果您在一份订单里订购了多种产品，而我们只给您发出了其中一部分产品的发货确认电子邮件，那么只有这部分产品的订购合同成立；直到我们向您发出其他产品的发货确认电子邮件，您关于其他产品的订购合同才成立。&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2、针对变更订单（包括退订缺货）的用户，规定&amp;ldquo;在您已经成功提交订单后，如您要求退订部分商品后继续发货，因此造成订单金额减少，而不能满足我们根据原订单金额所提供的全部或部分优惠条件的，我们将根据您变更后的订单金额调整或取消该优惠后为您发货，请您谅解。&amp;nbsp;再次感谢您的购物。&lt;/p&gt;', '', 'mailorder', '3', '1', '1280310704', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('21', 'cn', '管理员询价提醒', 'enquirywarn', '您的网站有新的询价信息，请注意查收！询价编号：[%enquirysn%]', '&lt;p&gt;恭喜，您网站有新的询价信息，请注意查收！&lt;/p&gt;\n&lt;p&gt;询价编号：[%enquirysn%]&lt;/p&gt;\n&lt;p&gt;询价人：[%linkman%]&lt;/p&gt;\n&lt;p&gt;询价时间：[%entime%]&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;尔创互联&lt;/p&gt;\n&lt;p&gt;ECISP.CN&lt;/p&gt;', '', 'mailenquiry', '3', '1', '1294631090', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('22', 'cn', '表单-管理员提醒', 'formremind', '您的网站有新的反馈表单，请注意查收！', '&lt;p&gt;管理员，您好，您的网站有新的表单信息，请注意查收！&lt;/p&gt;\n&lt;p&gt;表单类型或主题：[%formgroupname%]&lt;/p&gt;\n&lt;p&gt;表单内容：&lt;/p&gt;\n&lt;p&gt;---------------------------------------------------------&lt;/p&gt;\n&lt;p&gt;[%attrvalue%]&lt;/p&gt;\n&lt;p&gt;--------------------------------------------------------&lt;/p&gt;\n&lt;p&gt;提交时间：[%f_time%]&lt;/p&gt;', '', 'mailform', '3', '1', '1294631316', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('23', 'cn', '论坛留言-新留言管理员提醒', 'forumnew', '有新留言信息，请注意查收！', '&lt;p&gt;网站论坛有新留言信息，请注意查收！&lt;/p&gt;\n&lt;p&gt;留言主题：[%b_title%]&lt;/p&gt;\n&lt;p&gt;姓名：[%b_username%]&lt;/p&gt;\n&lt;p&gt;邮箱：[%b_email%]&lt;/p&gt;\n&lt;p&gt;留言提交时间：[%b_time%]&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;a href=&quot;[%forumlink%]&quot; target=&quot;_blank&quot;&gt;点击查看详细留言内容&lt;/a&gt;（如无法查看链接地址，请将此[%forumlink%]链接复制到浏览器！）&lt;/p&gt;', '', 'mailbbs', '3', '1', '1314176815', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('24', 'cn', '内容留言提醒', 'bbsrequest', '您有最新的内容留言，请注意回复！', '&lt;p&gt;所属内容标题：[%d_title%]&lt;/p&gt;\n&lt;p&gt;留言提交时间：[%d_time%]&lt;/p&gt;\n&lt;p&gt;留言内容：[%d_content%]&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;a href=&quot;[%d_link%]&quot; target=&quot;_blank&quot;&gt;点击本链接地址查看&lt;/a&gt;（[%d_link%]），如果无法点击，可将地址复制到浏览器中！&lt;/p&gt;', '', 'maildocbbs', '3', '1', '1314263985', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('25', 'cn', '询价会员确认信', 'enquiryre', '询价编号：[%enquirysn%] 已成功提交，我们会尽快与您联系。', '&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: medium;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;div style=&quot;color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;&quot;&gt;\n&lt;p&gt;&lt;strong&gt;尊敬的[%linkman%]：&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt;您要询价（询价编号：[%enquirysn%]）我们已经收到，感谢您的支持，我们会尽快与您联系！&lt;/p&gt;\n&lt;/div&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', '', 'mailenquiry', '3', '1', '1314295180', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('26', 'cn', '支付成功提醒', 'orderpayadmin', '网站有新订单支付成功（[%ordersn%]），请注意处理！', '&lt;p&gt;您的网站有订单已支付成功，请您及时处理！&lt;/p&gt;\n&lt;p&gt;订单号：[%paysn%]&lt;/p&gt;\n&lt;p&gt;支付方式：[%payname%]&lt;/p&gt;', '', 'mailorder', '3', '1', '1314296832', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('89', 'en', '订单确认信', 'orderen', '[%consignee%]：感谢您的支持，请确认（[%ordersn%]）订单！', '&lt;p&gt;&lt;strong&gt;尊敬的[%consignee%]：&lt;/strong&gt;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;感谢您在ECISP网站购物！以下是您的购物信息，请您确认查看。订单成功提交后的30分钟内您可以自助修改订单信息。&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;以下为您的订购信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人姓名：[%consignee%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮箱：[%email%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人地址：[%address%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮编：[%zipcode%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人电话：[%tel%]&amp;nbsp;[%mobile%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;订单信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单号：[%ordersn%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单总额：[%orderamount%]&amp;nbsp;&amp;nbsp;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单时间：[%time%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;备注：&lt;/strong&gt;[%content%]&amp;nbsp;&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;重要说明：&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;1、此订单确认信仅确认我们已收到了您的订单，只有当我们向您发出送货确认的电子邮件通知您我们已将产品发出时，我们和您之间的订购合同才成立。如果您在一份订单里订购了多种产品，而我们只给您发出了其中一部分产品的发货确认电子邮件，那么只有这部分产品的订购合同成立；直到我们向您发出其他产品的发货确认电子邮件，您关于其他产品的订购合同才成立。&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2、针对变更订单（包括退订缺货）的用户，规定&amp;ldquo;在您已经成功提交订单后，如您要求退订部分商品后继续发货，因此造成订单金额减少，而不能满足我们根据原订单金额所提供的全部或部分优惠条件的，我们将根据您变更后的订单金额调整或取消该优惠后为您发货，请您谅解。&amp;nbsp;再次感谢您的购物。&lt;/p&gt;', '', 'mailorder', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('90', 'en', '新订单提醒', 'orderwarn', '管理员，您有新订单了！订单号：[%ordersn%]', '&lt;p&gt;&lt;strong&gt;管理员：&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;很高兴的提醒您拥有新的订单，以下是您的订单信息：&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;订购信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人姓名：[%consignee%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮箱：[%email%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人地址：[%address%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮编：[%zipcode%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人电话：[%tel%]&amp;nbsp;[%mobile%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;订单信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单号：[%ordersn%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单总额：[%orderamount%]&amp;nbsp;&amp;nbsp;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单时间：[%time%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;备注：&lt;/strong&gt;[%content%]&lt;/p&gt;', '', 'mailorder', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('91', 'en', '表单-提交感谢信', 'formnewremind', '感谢您的提交，我们会尽快答复您！', '&lt;p&gt;您好，感谢您对我们的支持，以下是您提交的内容：&lt;br /&gt; 提交主题：[%formgroupname%]&lt;br /&gt; 提交时间：[%f_time%]&lt;br /&gt; 提交内容：&lt;br /&gt;-------------------------------------------&lt;br /&gt;[%attrvalue%]&lt;/p&gt;\n&lt;p&gt;---------------------------------&lt;/p&gt;', '', 'mailform', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('92', 'en', '表单-回复通知', 'formreremind', '回复：[%formgroupname%]', '&lt;p&gt;&lt;strong&gt;[%recontent%]&lt;br /&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;-------------------------------------------------------------------------&lt;br /&gt; 以下是您的留言：&lt;br /&gt;[%attrvalue%]&lt;br /&gt; -------------------------------------------------------------------------&lt;br /&gt; 欢迎您对我们的提出宝贵建议和意见，再次感谢您的支持！&lt;/p&gt;', '', 'mailform', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('93', 'en', '会员-注册邮件通知', 'memberreg', '[%m_username%]，欢迎您成为我们的会员！', '&lt;p&gt;&lt;strong&gt;[%m_username%]您好！&lt;br /&gt;&lt;br /&gt;&lt;/strong&gt;欢迎您成为我们的会员：&lt;/p&gt;\n&lt;p&gt;用户名：[%m_username%]&lt;br /&gt;密码：*****&lt;br /&gt;&lt;br /&gt;（请保存好您的密码）&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;ECISP.CN&lt;/p&gt;\n&lt;p&gt;[%nowtime%]&lt;/p&gt;', '', 'mailmember', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('94', 'en', '会员-邮件激活验证通知', 'memberat', '[%m_username%]您好，请对您的邮箱进行验证！', '&lt;p&gt;[%m_username%] &lt;strong&gt;您好！&lt;br /&gt;&lt;br /&gt;&lt;/strong&gt;感谢您注册ECISP.CN，请点击下面的链接即可完成注册：&lt;br /&gt;&lt;br /&gt;&lt;a href=&quot;[%checklink%]&quot; target=&quot;_blank&quot;&gt;[%checklink%]&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;（如果链接无法点击，请将它拷贝到浏览器的地址栏中）&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;[%nowtime%]&lt;/p&gt;', '', 'mailmember', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('95', 'en', '会员-密码找回通知', 'memberpw', '[%m_username%]您好，您的密码已经成功找回，请妥善保管！', '&lt;p&gt;&lt;strong&gt;[%m_username%]您好！&lt;br /&gt;&lt;br /&gt;&lt;/strong&gt;以下是您的新密码，请登陆网站后更改您的密码：&lt;/p&gt;\n&lt;p&gt;用户名：[%m_username%]&lt;br /&gt;密码：[%newpassword%]&lt;br /&gt;&lt;br /&gt;（请保存好您的密码）&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;ECISP.CN&lt;/p&gt;\n&lt;p&gt;[%nowtime%]&lt;/p&gt;', '', 'mailmember', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('96', 'en', '订单取消', 'orderce', '[%consignee%]：您好，您已成功取消（[%ordersn%]）订单！', '&lt;p&gt;&lt;strong&gt;EE尊敬的[%consignee%]：&lt;/strong&gt;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;您已成功取消订单！&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;以下为您的订购信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人姓名：[%consignee%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮箱：[%email%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人地址：[%address%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮编：[%zipcode%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人电话：[%tel%]&amp;nbsp;[%mobile%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;订单信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单号：[%ordersn%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单总额：[%orderamount%]&amp;nbsp;&amp;nbsp;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单时间：[%time%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;备注：&lt;/strong&gt;[%content%]&amp;nbsp;&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;重要说明：&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;1、此订单确认信仅确认我们已收到了您的订单，只有当我们向您发出送货确认的电子邮件通知您我们已将产品发出时，我们和您之间的订购合同才成立。如果您在一份订单里订购了多种产品，而我们只给您发出了其中一部分产品的发货确认电子邮件，那么只有这部分产品的订购合同成立；直到我们向您发出其他产品的发货确认电子邮件，您关于其他产品的订购合同才成立。&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2、针对变更订单（包括退订缺货）的用户，规定&amp;ldquo;在您已经成功提交订单后，如您要求退订部分商品后继续发货，因此造成订单金额减少，而不能满足我们根据原订单金额所提供的全部或部分优惠条件的，我们将根据您变更后的订单金额调整或取消该优惠后为您发货，请您谅解。&amp;nbsp;再次感谢您的购物。&lt;/p&gt;', '', 'mailorder', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('97', 'en', '论坛留言-留言回复提醒', 'forumre', '[%b_username%]您好，您的留言有新的回复！', '&lt;p&gt;[%b_username%]您好&lt;br /&gt; 您的留言：&lt;strong&gt;[%b_title%]有新回复，请即查查看！&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;br /&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;a href=&quot;[%forumlink%]&quot; target=&quot;_blank&quot;&gt;点击查看详细留言内容&lt;/a&gt;（如无法查看链接地址，请将此[%forumlink%]链接复制到浏览器！）&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', '', 'mailbbs', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('98', 'en', '支付成功通知', 'orderpal', '[%consignee%]，您的订单（[%ordersn%]）已支付成功！', '&lt;p&gt;&lt;strong&gt;尊敬的[%consignee%]：&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-family: Verdana; font-size: x-small;&quot;&gt;感谢您的购物，我们已经收到您的订单款项。我们将立即配货发货，发货后我们将会邮件通知您，您也可以进入会员中心查看订单状态。如有其他问题，请联系我们，希望您能购物愉快、分享快乐。&lt;/span&gt;&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;支付方式：[%payname%]&amp;nbsp;&amp;nbsp; 支付单号：[%paysn%] &amp;nbsp; &amp;nbsp;&amp;nbsp;支付时间：[%paytime%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;以下为您的订购信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人姓名：[%consignee%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮箱：[%email%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人地址：[%address%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人邮编：[%zipcode%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;收货人电话：[%tel%]&amp;nbsp;[%mobile%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&lt;strong&gt;订单信息：&lt;/strong&gt;&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单号：[%ordersn%]&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单总额：[%orderamount%]&amp;nbsp;&amp;nbsp;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;订单时间：[%addtime%]&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;重要说明：&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;1、此订单确认信仅确认我们已收到了您的订单，只有当我们向您发出送货确认的电子邮件通知您我们已将产品发出时，我们和您之间的订购合同才成立。如果您在一份订单里订购了多种产品，而我们只给您发出了其中一部分产品的发货确认电子邮件，那么只有这部分产品的订购合同成立；直到我们向您发出其他产品的发货确认电子邮件，您关于其他产品的订购合同才成立。&amp;nbsp;&amp;nbsp; &lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2、针对变更订单（包括退订缺货）的用户，规定&amp;ldquo;在您已经成功提交订单后，如您要求退订部分商品后继续发货，因此造成订单金额减少，而不能满足我们根据原订单金额所提供的全部或部分优惠条件的，我们将根据您变更后的订单金额调整或取消该优惠后为您发货，请您谅解。&amp;nbsp;再次感谢您的购物。&lt;/p&gt;', '', 'mailorder', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('99', 'en', '管理员询价提醒', 'enquirywarn', '您的网站有新的询价信息，请注意查收！询价编号：[%enquirysn%]', '&lt;p&gt;恭喜，您网站有新的询价信息，请注意查收！&lt;/p&gt;\n&lt;p&gt;询价编号：[%enquirysn%]&lt;/p&gt;\n&lt;p&gt;询价人：[%linkman%]&lt;/p&gt;\n&lt;p&gt;询价时间：[%entime%]&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;尔创互联&lt;/p&gt;\n&lt;p&gt;ECISP.CN&lt;/p&gt;', '', 'mailenquiry', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('100', 'en', '表单-管理员提醒', 'formremind', '您的网站有新的反馈表单，请注意查收！', '&lt;p&gt;管理员，您好，您的网站有新的表单信息，请注意查收！&lt;/p&gt;\n&lt;p&gt;表单类型或主题：[%formgroupname%]&lt;/p&gt;\n&lt;p&gt;表单内容：&lt;/p&gt;\n&lt;p&gt;---------------------------------------------------------&lt;/p&gt;\n&lt;p&gt;[%attrvalue%]&lt;/p&gt;\n&lt;p&gt;--------------------------------------------------------&lt;/p&gt;\n&lt;p&gt;提交时间：[%f_time%]&lt;/p&gt;', '', 'mailform', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('101', 'en', '论坛留言-新留言管理员提醒', 'forumnew', '有新留言信息，请注意查收！', '&lt;p&gt;网站论坛有新留言信息，请注意查收！&lt;/p&gt;\n&lt;p&gt;留言主题：[%b_title%]&lt;/p&gt;\n&lt;p&gt;姓名：[%b_username%]&lt;/p&gt;\n&lt;p&gt;邮箱：[%b_email%]&lt;/p&gt;\n&lt;p&gt;留言提交时间：[%b_time%]&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;a href=&quot;[%forumlink%]&quot; target=&quot;_blank&quot;&gt;点击查看详细留言内容&lt;/a&gt;（如无法查看链接地址，请将此[%forumlink%]链接复制到浏览器！）&lt;/p&gt;', '', 'mailbbs', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('102', 'en', '内容留言提醒', 'bbsrequest', '您有最新的内容留言，请注意回复！', '&lt;p&gt;所属内容标题：[%d_title%]&lt;/p&gt;\n&lt;p&gt;留言提交时间：[%d_time%]&lt;/p&gt;\n&lt;p&gt;留言内容：[%d_content%]&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;a href=&quot;[%d_link%]&quot; target=&quot;_blank&quot;&gt;点击本链接地址查看&lt;/a&gt;（[%d_link%]），如果无法点击，可将地址复制到浏览器中！&lt;/p&gt;', '', 'maildocbbs', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('103', 'en', '询价会员确认信', 'enquiryre', '询价编号：[%enquirysn%] 已成功提交，我们会尽快与您联系。', '&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: medium;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;div style=&quot;color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;&quot;&gt;\n&lt;p&gt;&lt;strong&gt;尊敬的[%linkman%]：&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt;您要询价（询价编号：[%enquirysn%]）我们已经收到，感谢您的支持，我们会尽快与您联系！&lt;/p&gt;\n&lt;/div&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', '', 'mailenquiry', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('104', 'en', '支付成功提醒', 'orderpayadmin', '网站有新订单支付成功（[%ordersn%]），请注意处理！', '&lt;p&gt;您的网站有订单已支付成功，请您及时处理！&lt;/p&gt;\n&lt;p&gt;订单号：[%paysn%]&lt;/p&gt;\n&lt;p&gt;支付方式：[%payname%]&lt;/p&gt;', '', 'mailorder', '3', '1', '1373136443', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('43', 'cn', '会员手机验证', 'mobliecode', '', '请输入以下验证码：[%idcode%]', '', '', '4', '1', '1373039897', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('56', 'cn', '最新订单管理员通知', 'orderto', '', '您有新订单，订单号为：[%ordersn%]', '', '', '4', '1', '1373039943', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('57', 'cn', '订单支付管理员通知', 'orderpay', '', '订单已支付成功，请注意处理，订单号为：[%ordersn%]', '', '', '4', '1', '1373040004', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('60', 'cn', '客户询盘通知', 'enqueryto', '', '您有新的询价请求，请注意处理，询盘编号：[%enquirysn%]', '', '', '4', '1', '1373040044', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('58', 'cn', '订单已处理', 'orderre', '', '您的订单（[%ordersn%]）已发货，请注意查收！物流单号：[%shippingsn%]', '', '', '4', '1', '1373040150', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('59', 'cn', '订单已撤销', 'orderdel', '', '您的订单已撤销，订单号为：[%ordersn%]', '', '', '4', '1', '1373040179', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('44', 'cn', '会员密码修改提醒', 'memberedit', '', '会员登陆密码已修改，新密码为：[%password%]，请确定是否本人操作', '', '', '4', '1', '1373040248', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('55', 'cn', '会员密码找回', 'memberpass', '', '您的会员登陆密码已经重置，重置密码为：[%password%]', '', '', '4', '1', '1373040299', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('144', 'cn', '在线留言短信提醒', 'smsmessage', '', '您的网站有新的留言，请注意处理!', '', '', '4', '0', '1390489979', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('111', 'en', '订单已撤销', 'orderdel', '', '您的订单已撤销，订单号为：[%ordersn%]', '', '', '4', '1', '1373136461', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('112', 'en', '客户询盘通知', 'enqueryto', '', '您有新的询价请求，请注意处理，询盘编号：[%enquirysn%]', '', '', '4', '1', '1373136461', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('110', 'en', '订单已处理', 'orderre', '', '您的订单已发货，请注意查收！订单号：[%ordersn%]', '', '', '4', '1', '1373136461', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('109', 'en', '订单支付通知', 'orderpay', '', '订单已支付成功，请注意处理，订单号为：[%ordersn%]', '', '', '4', '1', '1373136461', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('108', 'en', '最新订单通知', 'orderto', '', '您有新订单，订单号为：[%ordersn%]', '', '', '4', '1', '1373136461', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('107', 'en', '会员密码找回', 'memberpass', '', '请输入随机验证码，并及时修改新的密码！验证码：[%idcode%]', '', '', '4', '1', '1373136461', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('106', 'en', '会员信息修改', 'memberedit', '', '您的会员登陆密码已修改，请确定是否本人操作，如有泄漏请及时更新！', '', '', '4', '1', '1373136461', '1');
INSERT INTO `yct_templates` ( `tmid`, `lng`, `templatename`, `templatecode`, `title`, `templatecontent`, `pic`, `typeclass`, `styleclass`, `lockin`, `addtime`, `isclass` ) VALUES  ('105', 'en', '会员手机验证', 'mobliecode', '', '请输入以下验证码：[%idcode%]', '', '', '4', '1', '1373136461', '1');
DROP TABLE IF EXISTS `yct_typelist`;
CREATE TABLE `yct_typelist` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '50',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `topid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `upid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `exmid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linkid` int(11) unsigned NOT NULL DEFAULT '0',
  `gotoid` int(11) unsigned NOT NULL DEFAULT '0',
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `typename` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `headtitle` varchar(200) NOT NULL,
  `keywords` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(180) NOT NULL,
  `typepic` varchar(200) NOT NULL,
  `dirname` varchar(50) NOT NULL DEFAULT '',
  `purview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isaccessory` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ispart` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `styleid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pageclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `indextemplates` varchar(100) NOT NULL,
  `template` varchar(100) NOT NULL,
  `readtemplate` varchar(100) NOT NULL,
  `filenamestyle` varchar(100) NOT NULL DEFAULT '',
  `readnamestyle` varchar(100) NOT NULL,
  `isline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gotoline` int(11) unsigned NOT NULL DEFAULT '0',
  `typeurl` varchar(200) NOT NULL,
  `dirpath` varchar(150) NOT NULL,
  `iswap` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `waptempalte` varchar(100) NOT NULL,
  `wapreadtemplate` varchar(100) NOT NULL,
  `pagemax` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(15) unsigned NOT NULL DEFAULT '0',
  `isorderby` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordertype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yct_typelist` ( `tid`, `pid`, `mid`, `topid`, `upid`, `exmid`, `linkid`, `gotoid`, `lng`, `typename`, `content`, `headtitle`, `keywords`, `description`, `typepic`, `dirname`, `purview`, `ismenu`, `isaccessory`, `isclass`, `ispart`, `styleid`, `pageclass`, `indextemplates`, `template`, `readtemplate`, `filenamestyle`, `readnamestyle`, `isline`, `gotoline`, `typeurl`, `dirpath`, `iswap`, `waptempalte`, `wapreadtemplate`, `pagemax`, `addtime`, `isorderby`, `ordertype` ) VALUES  ('1', '50', '3', '0', '0', '0', '0', '0', 'cn', '品味好茶', '', '', '', '', 'upfile/2017/07/20170713170422_649.jpg', 'pinweihaocha', '0', '1', '0', '1', '1', '2', '1', 'article_index', 'goods_list', 'goods_read', '{tid}_{pageid}', '{did}', '1', '0', 'http://', '', '1', 'goods_list', 'goods_read', '0', '1499828886', '1', '1');
INSERT INTO `yct_typelist` ( `tid`, `pid`, `mid`, `topid`, `upid`, `exmid`, `linkid`, `gotoid`, `lng`, `typename`, `content`, `headtitle`, `keywords`, `description`, `typepic`, `dirname`, `purview`, `ismenu`, `isaccessory`, `isclass`, `ispart`, `styleid`, `pageclass`, `indextemplates`, `template`, `readtemplate`, `filenamestyle`, `readnamestyle`, `isline`, `gotoline`, `typeurl`, `dirpath`, `iswap`, `waptempalte`, `wapreadtemplate`, `pagemax`, `addtime`, `isorderby`, `ordertype` ) VALUES  ('2', '50', '2', '0', '0', '0', '0', '0', 'cn', '新闻资讯', '', '', '', '', 'upfile/2017/07/20170713102943_179.jpg', 'xinwenzixun', '0', '1', '0', '1', '1', '2', '1', 'article_index', 'article_list', 'article_read', '{tid}_{pageid}', '{did}', '1', '0', 'http://', '', '1', 'article_list', 'article_read', '0', '1499828906', '1', '1');
INSERT INTO `yct_typelist` ( `tid`, `pid`, `mid`, `topid`, `upid`, `exmid`, `linkid`, `gotoid`, `lng`, `typename`, `content`, `headtitle`, `keywords`, `description`, `typepic`, `dirname`, `purview`, `ismenu`, `isaccessory`, `isclass`, `ispart`, `styleid`, `pageclass`, `indextemplates`, `template`, `readtemplate`, `filenamestyle`, `readnamestyle`, `isline`, `gotoline`, `typeurl`, `dirpath`, `iswap`, `waptempalte`, `wapreadtemplate`, `pagemax`, `addtime`, `isorderby`, `ordertype` ) VALUES  ('3', '50', '1', '0', '0', '0', '1', '15', 'cn', '品牌文化', '', '', '', '', 'upfile/2017/07/20170713141633_954.jpg', 'wenhua', '0', '1', '0', '1', '1', '4', '1', 'article_index', 'article_list', 'base_read', '{tid}_{pageid}', '{did}', '1', '0', 'http://', '', '1', 'article_list', 'base_read', '0', '1499828937', '1', '1');
INSERT INTO `yct_typelist` ( `tid`, `pid`, `mid`, `topid`, `upid`, `exmid`, `linkid`, `gotoid`, `lng`, `typename`, `content`, `headtitle`, `keywords`, `description`, `typepic`, `dirname`, `purview`, `ismenu`, `isaccessory`, `isclass`, `ispart`, `styleid`, `pageclass`, `indextemplates`, `template`, `readtemplate`, `filenamestyle`, `readnamestyle`, `isline`, `gotoline`, `typeurl`, `dirpath`, `iswap`, `waptempalte`, `wapreadtemplate`, `pagemax`, `addtime`, `isorderby`, `ordertype` ) VALUES  ('4', '50', '4', '0', '0', '0', '0', '0', 'cn', '合作伙伴', '&lt;p&gt;元长泰茶叶多年来长期与各地宾馆行业合作，在原叶茶包供应领域属于领军企业。另外更深入涉及宾馆及企事业单位的商务礼品、会务礼品、会务订制、大堂吧及歺厅消耗茶品等领域，例如：&lt;/p&gt;', '', '', '', 'upfile/2017/07/20170713154203_810.jpg', 'hezuohuoban', '0', '1', '0', '1', '1', '2', '1', 'article_index', 'partner', 'article_read', '{tid}_{pageid}', '{did}', '1', '0', 'http://', '', '1', 'goods_list', 'goods_read', '0', '1499829005', '1', '1');
INSERT INTO `yct_typelist` ( `tid`, `pid`, `mid`, `topid`, `upid`, `exmid`, `linkid`, `gotoid`, `lng`, `typename`, `content`, `headtitle`, `keywords`, `description`, `typepic`, `dirname`, `purview`, `ismenu`, `isaccessory`, `isclass`, `ispart`, `styleid`, `pageclass`, `indextemplates`, `template`, `readtemplate`, `filenamestyle`, `readnamestyle`, `isline`, `gotoline`, `typeurl`, `dirpath`, `iswap`, `waptempalte`, `wapreadtemplate`, `pagemax`, `addtime`, `isorderby`, `ordertype` ) VALUES  ('5', '50', '9', '0', '0', '0', '2', '0', 'cn', '招商加盟', '', '', '', '', 'upfile/2017/07/20170713102943_179.jpg', 'zhaoshangjiameng', '0', '1', '0', '1', '1', '4', '1', 'article_index', 'article_list', 'base_read', '{tid}_{pageid}', '{did}', '1', '0', 'http://', '', '1', 'article_list', 'base_read', '0', '1499829086', '1', '1');
INSERT INTO `yct_typelist` ( `tid`, `pid`, `mid`, `topid`, `upid`, `exmid`, `linkid`, `gotoid`, `lng`, `typename`, `content`, `headtitle`, `keywords`, `description`, `typepic`, `dirname`, `purview`, `ismenu`, `isaccessory`, `isclass`, `ispart`, `styleid`, `pageclass`, `indextemplates`, `template`, `readtemplate`, `filenamestyle`, `readnamestyle`, `isline`, `gotoline`, `typeurl`, `dirpath`, `iswap`, `waptempalte`, `wapreadtemplate`, `pagemax`, `addtime`, `isorderby`, `ordertype` ) VALUES  ('6', '50', '3', '1', '1', '0', '0', '0', 'cn', '西湖龙井', '', '', '', '', 'upfile/2017/07/20170713170422_649.jpg', 'xihulongjing', '0', '0', '0', '1', '1', '2', '1', 'article_index', 'goods_list', 'goods_read', '{tid}_{pageid}', '{did}', '1', '0', 'http://', 'pinweihaocha', '1', 'goods_list', 'goods_read', '0', '1499833560', '1', '1');
INSERT INTO `yct_typelist` ( `tid`, `pid`, `mid`, `topid`, `upid`, `exmid`, `linkid`, `gotoid`, `lng`, `typename`, `content`, `headtitle`, `keywords`, `description`, `typepic`, `dirname`, `purview`, `ismenu`, `isaccessory`, `isclass`, `ispart`, `styleid`, `pageclass`, `indextemplates`, `template`, `readtemplate`, `filenamestyle`, `readnamestyle`, `isline`, `gotoline`, `typeurl`, `dirpath`, `iswap`, `waptempalte`, `wapreadtemplate`, `pagemax`, `addtime`, `isorderby`, `ordertype` ) VALUES  ('7', '50', '3', '1', '1', '0', '0', '0', 'cn', '杭白菊', '', '', '', '', 'upfile/2017/07/20170713170422_649.jpg', 'hangbaiju', '0', '0', '0', '1', '1', '2', '1', 'article_index', 'goods_list', 'goods_read', '{tid}_{pageid}', '{did}', '1', '0', 'http://', 'pinweihaocha', '1', 'goods_list', 'goods_read', '0', '1499833568', '1', '1');
INSERT INTO `yct_typelist` ( `tid`, `pid`, `mid`, `topid`, `upid`, `exmid`, `linkid`, `gotoid`, `lng`, `typename`, `content`, `headtitle`, `keywords`, `description`, `typepic`, `dirname`, `purview`, `ismenu`, `isaccessory`, `isclass`, `ispart`, `styleid`, `pageclass`, `indextemplates`, `template`, `readtemplate`, `filenamestyle`, `readnamestyle`, `isline`, `gotoline`, `typeurl`, `dirpath`, `iswap`, `waptempalte`, `wapreadtemplate`, `pagemax`, `addtime`, `isorderby`, `ordertype` ) VALUES  ('8', '50', '3', '1', '1', '0', '0', '0', 'cn', '九曲红梅', '', '', '', '', 'upfile/2017/07/20170713170422_649.jpg', 'jiuquhongmei', '0', '0', '0', '1', '1', '2', '1', 'article_index', 'goods_list', 'goods_read', '{tid}_{pageid}', '{did}', '1', '0', 'http://', 'pinweihaocha', '1', 'goods_list', 'goods_read', '0', '1499833579', '1', '1');
INSERT INTO `yct_typelist` ( `tid`, `pid`, `mid`, `topid`, `upid`, `exmid`, `linkid`, `gotoid`, `lng`, `typename`, `content`, `headtitle`, `keywords`, `description`, `typepic`, `dirname`, `purview`, `ismenu`, `isaccessory`, `isclass`, `ispart`, `styleid`, `pageclass`, `indextemplates`, `template`, `readtemplate`, `filenamestyle`, `readnamestyle`, `isline`, `gotoline`, `typeurl`, `dirpath`, `iswap`, `waptempalte`, `wapreadtemplate`, `pagemax`, `addtime`, `isorderby`, `ordertype` ) VALUES  ('9', '50', '3', '1', '1', '0', '0', '0', 'cn', '梅占金骏眉', '', '', '', '', 'upfile/2017/07/20170713170422_649.jpg', 'meizhanjinjunmei', '0', '0', '0', '1', '1', '2', '1', 'article_index', 'goods_list', 'goods_read', '{tid}_{pageid}', '{did}', '1', '0', 'http://', 'pinweihaocha', '1', 'goods_list', 'goods_read', '0', '1499833589', '1', '1');
INSERT INTO `yct_typelist` ( `tid`, `pid`, `mid`, `topid`, `upid`, `exmid`, `linkid`, `gotoid`, `lng`, `typename`, `content`, `headtitle`, `keywords`, `description`, `typepic`, `dirname`, `purview`, `ismenu`, `isaccessory`, `isclass`, `ispart`, `styleid`, `pageclass`, `indextemplates`, `template`, `readtemplate`, `filenamestyle`, `readnamestyle`, `isline`, `gotoline`, `typeurl`, `dirpath`, `iswap`, `waptempalte`, `wapreadtemplate`, `pagemax`, `addtime`, `isorderby`, `ordertype` ) VALUES  ('10', '50', '3', '1', '1', '0', '0', '0', 'cn', '原味茶包', '', '', '', '', 'upfile/2017/07/20170713170422_649.jpg', 'yuanweichabao', '0', '0', '0', '1', '1', '2', '1', 'article_index', 'goods_list', 'goods_read', '{tid}_{pageid}', '{did}', '1', '0', 'http://', 'pinweihaocha', '1', 'goods_list', 'goods_read', '0', '1499833598', '1', '1');
INSERT INTO `yct_typelist` ( `tid`, `pid`, `mid`, `topid`, `upid`, `exmid`, `linkid`, `gotoid`, `lng`, `typename`, `content`, `headtitle`, `keywords`, `description`, `typepic`, `dirname`, `purview`, `ismenu`, `isaccessory`, `isclass`, `ispart`, `styleid`, `pageclass`, `indextemplates`, `template`, `readtemplate`, `filenamestyle`, `readnamestyle`, `isline`, `gotoline`, `typeurl`, `dirpath`, `iswap`, `waptempalte`, `wapreadtemplate`, `pagemax`, `addtime`, `isorderby`, `ordertype` ) VALUES  ('17', '50', '10', '3', '3', '1', '52', '0', 'cn', '联系我们', '', '', '', '', 'upfile/2017/07/20170713141633_954.jpg', 'lianxiwomen28', '0', '0', '0', '1', '1', '4', '1', 'article_index', 'article_list', 'contact', '{tid}_{pageid}', '{did}', '1', '0', 'http://', 'wenhua', '1', 'article_list', 'contact', '0', '1499934051', '1', '1');
INSERT INTO `yct_typelist` ( `tid`, `pid`, `mid`, `topid`, `upid`, `exmid`, `linkid`, `gotoid`, `lng`, `typename`, `content`, `headtitle`, `keywords`, `description`, `typepic`, `dirname`, `purview`, `ismenu`, `isaccessory`, `isclass`, `ispart`, `styleid`, `pageclass`, `indextemplates`, `template`, `readtemplate`, `filenamestyle`, `readnamestyle`, `isline`, `gotoline`, `typeurl`, `dirpath`, `iswap`, `waptempalte`, `wapreadtemplate`, `pagemax`, `addtime`, `isorderby`, `ordertype` ) VALUES  ('12', '50', '2', '2', '2', '0', '0', '0', 'cn', '新闻资讯', '', '', '', '', '', 'xinwenzixun', '0', '0', '0', '1', '1', '2', '1', 'article_index', 'article_list', 'article_read', '{tid}_{pageid}', '{did}', '1', '0', 'http://', 'xinwenzixun', '1', 'article_list', 'article_read', '0', '1499913966', '1', '1');
INSERT INTO `yct_typelist` ( `tid`, `pid`, `mid`, `topid`, `upid`, `exmid`, `linkid`, `gotoid`, `lng`, `typename`, `content`, `headtitle`, `keywords`, `description`, `typepic`, `dirname`, `purview`, `ismenu`, `isaccessory`, `isclass`, `ispart`, `styleid`, `pageclass`, `indextemplates`, `template`, `readtemplate`, `filenamestyle`, `readnamestyle`, `isline`, `gotoline`, `typeurl`, `dirpath`, `iswap`, `waptempalte`, `wapreadtemplate`, `pagemax`, `addtime`, `isorderby`, `ordertype` ) VALUES  ('13', '2', '8', '3', '3', '1', '0', '0', 'cn', '荣誉资质', '', '', '', '', 'upfile/2017/07/20170713141633_954.jpg', 'rongyuzizhi', '0', '0', '0', '1', '1', '2', '1', 'article_index', 'honor', 'base_read', '{tid}_{pageid}', '{did}', '1', '0', 'http://', 'wenhua', '1', 'goods_list', 'goods_read', '0', '1499926621', '1', '1');
INSERT INTO `yct_typelist` ( `tid`, `pid`, `mid`, `topid`, `upid`, `exmid`, `linkid`, `gotoid`, `lng`, `typename`, `content`, `headtitle`, `keywords`, `description`, `typepic`, `dirname`, `purview`, `ismenu`, `isaccessory`, `isclass`, `ispart`, `styleid`, `pageclass`, `indextemplates`, `template`, `readtemplate`, `filenamestyle`, `readnamestyle`, `isline`, `gotoline`, `typeurl`, `dirpath`, `iswap`, `waptempalte`, `wapreadtemplate`, `pagemax`, `addtime`, `isorderby`, `ordertype` ) VALUES  ('14', '3', '7', '3', '3', '1', '0', '0', 'cn', '品牌展示', '&lt;p&gt;元长泰茶叶自有生产实验基地位于核心产区狮峰及白鹤峰区域，&lt;/p&gt;\n&lt;p&gt;基地山清水秀，阳光充足，拥有稀少的西湖龙井群体种，并坚持以传统的环保技术养护管理，&lt;/p&gt;\n&lt;p&gt;每年抽样质检都达到国家甚至国际高标准，公司唯一的目标是给广大茶友们提供安全放心，且口味纯正的西湖龙井茶。&lt;/p&gt;', '', '', '', 'upfile/2017/07/20170713141633_954.jpg', 'pinpaizhanshi', '0', '0', '0', '1', '1', '2', '1', 'article_index', 'brand', 'base_read', '{tid}_{pageid}', '{did}', '1', '0', 'http://', 'wenhua', '1', 'goods_list', 'goods_read', '0', '1499926650', '1', '1');
INSERT INTO `yct_typelist` ( `tid`, `pid`, `mid`, `topid`, `upid`, `exmid`, `linkid`, `gotoid`, `lng`, `typename`, `content`, `headtitle`, `keywords`, `description`, `typepic`, `dirname`, `purview`, `ismenu`, `isaccessory`, `isclass`, `ispart`, `styleid`, `pageclass`, `indextemplates`, `template`, `readtemplate`, `filenamestyle`, `readnamestyle`, `isline`, `gotoline`, `typeurl`, `dirpath`, `iswap`, `waptempalte`, `wapreadtemplate`, `pagemax`, `addtime`, `isorderby`, `ordertype` ) VALUES  ('15', '1', '1', '3', '3', '0', '29', '0', 'cn', '品牌文化', '', '', '', '', 'upfile/2017/07/20170713141633_954.jpg', 'pinpaiwenhua', '0', '0', '0', '1', '1', '4', '1', 'article_index', 'article_list', 'base_read', '{tid}_{pageid}', '{did}', '1', '0', 'http://', 'wenhua', '1', 'article_list', 'base_read', '0', '1499927207', '1', '1');
-- END EasySitePM SQL Dump Program 