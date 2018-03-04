-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 02 月 13 日 17:40
-- 服务器版本: 5.5.40
-- PHP 版本: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `tgs_admin`
--

CREATE TABLE IF NOT EXISTS `tgs_admin` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `logins` mediumint(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tgs_admin`
--

INSERT INTO `tgs_admin` (`id`, `username`, `password`, `logins`) VALUES
(1, 'admin', '25d55ad283aa400af464c76d713c07ad', 13),
(3, '谢春贵', 'e10adc3949ba59abbe56e057f20f883e', 3),
(4, 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', 3);

-- --------------------------------------------------------

--
-- 表的结构 `tgs_agent`
--

CREATE TABLE IF NOT EXISTS `tgs_agent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `idcard` varchar(100) DEFAULT NULL,
  `weixin` varchar(100) DEFAULT NULL,
  `qq` varchar(100) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `jietime` int(11) DEFAULT NULL COMMENT '有效截止时间',
  `plug` int(11) DEFAULT NULL,
  `pluglist` int(11) DEFAULT NULL,
  `config` int(100) DEFAULT NULL,
  `quyu` varchar(100) DEFAULT NULL,
  `shuyu` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `about` varchar(250) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `danwei` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `wangwang` varchar(100) DEFAULT NULL,
  `paipai` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `dizhi` varchar(100) DEFAULT NULL,
  `passwordtime` varchar(100) DEFAULT NULL COMMENT '重设密码时间',
  `hits` int(8) DEFAULT '0',
  `query_time` datetime DEFAULT NULL,
  `sjdl` varchar(100) DEFAULT NULL COMMENT '上级代理ID',
  `shzt` varchar(50) DEFAULT NULL COMMENT '审核状态，2是待审核，1是审核通过',
  `hmd` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `sqdengji` varchar(50) DEFAULT NULL,
  `dkpic` varchar(50) DEFAULT NULL,
  `sqtime` varchar(50) DEFAULT NULL,
  `applytime` int(11) DEFAULT NULL COMMENT '申请时间',
  `agent_img` varchar(100) NOT NULL COMMENT '代理商头像',
  `agent_bid` varchar(1000) NOT NULL COMMENT '代理所有的品牌ID',
  `agent_num_login` int(11) NOT NULL DEFAULT '0' COMMENT '代理商登录次数',
  `login_time` varchar(100) NOT NULL COMMENT '代理商最新一次登录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=82 ;

--
-- 转存表中的数据 `tgs_agent`
--

INSERT INTO `tgs_agent` (`id`, `agentid`, `name`, `phone`, `idcard`, `weixin`, `qq`, `addtime`, `jietime`, `plug`, `pluglist`, `config`, `quyu`, `shuyu`, `url`, `about`, `tel`, `fax`, `danwei`, `email`, `wangwang`, `paipai`, `zip`, `dizhi`, `passwordtime`, `hits`, `query_time`, `sjdl`, `shzt`, `hmd`, `password`, `sqdengji`, `dkpic`, `sqtime`, `applytime`, `agent_img`, `agent_bid`, `agent_num_login`, `login_time`) VALUES
(9, 'NF5516955214', '阿斯顿', '13425333333', '440509199003253333', 'xiaoboss', '123456', 1480411082, 1511884800, 1, 1, 1, '区域', '', '', '', '', '', '', '', '', '', '', '', '备注', 0, NULL, '', '1', '2', '12345678', '', '', '16-11-28 02:52:26', 1480411082, 'xx.png', '', 33, '2017-02-08 13:45:03'),
(7, 'NF1704869180', 'Boss', '15360806016', '', 'Boss', '', 1480411082, 1511884800, 1, 1, 0, '', '', '', '', '', '', '', '', '', '', '', '', '2016-12-05 18:00:39', 0, '0000-00-00 00:00:00', '', '1', '2', '12345678', '董事', '', '2016-11-28 17:50:43', 1480411082, 'nike.jpg', '', 3, '2017-02-13 10:01:20'),
(62, 'NF1828839546', '李丹', '13881825793', NULL, 'lidan', NULL, 1480411082, 1512748800, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1', '2', '123456', NULL, NULL, NULL, 1481275108, '', '', 46, '2017-02-07 14:24:08'),
(70, 'NF4618202946', 'll', '13247671918', NULL, 'll', NULL, 1481280378, 1512748800, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1', '2', '12345678', NULL, NULL, NULL, 1481280378, '', '', 2, '2016-12-09 18:46:52'),
(71, 'NF0724720860', '徐继建', '13719067255', NULL, '13719067255', NULL, 1481598444, 1513094400, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1', '2', '123456789', NULL, NULL, NULL, 1481598444, '', '', 3, '2016-12-13 14:45:14'),
(72, 'NF4647317455', '陈平', '18617367226', NULL, 'cp168', NULL, 1481611607, 1513094400, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1', '2', 'cq5858', NULL, NULL, NULL, 1481611607, '', '', 7, '2017-01-16 10:13:18'),
(73, 'NF4849931068', '罗丽友', '17876835106', NULL, '18512505682', NULL, 1481611729, 1513094400, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1', '2', '090503ll', NULL, NULL, NULL, 1481611729, '', '', 10, '2017-01-04 10:21:21'),
(74, 'NF4930808968', '柴春玲', '18676831043', NULL, 'bouke001', NULL, 1481611770, 1513094400, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1', '2', 'cq5858123', NULL, NULL, NULL, 1481611770, '', '', 4, '2017-01-16 10:12:01'),
(75, 'NF3656933507', '徐芳', '17816893063', NULL, 'xufang1314kl', NULL, 1481618216, 1513094400, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1', '2', 'ouboer123', NULL, NULL, NULL, 1481618216, '', '', 2, '2016-12-13 16:37:19'),
(76, 'NF1209572723', '3123', '13425339305', NULL, '123', NULL, 1483078329, 1514563200, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1', '2', '321321', NULL, NULL, NULL, 1483078329, '', '', 2, '2017-02-13 09:43:44'),
(77, 'NF1232695434', 'ces', '13247671916', NULL, 'ces', NULL, 1483078352, 1514563200, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1', '2', 'ces', NULL, NULL, NULL, 1483078352, '', '', 3, '2017-02-13 09:42:40'),
(78, 'NF1521740799', '林美珍', '17859922862', NULL, '17859922862', NULL, 1483078521, 1514563200, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1', '2', '22862lmz', NULL, NULL, NULL, 1483078521, '', '', 0, ''),
(79, 'NF4329432544', '丹丹', '13881925793', NULL, 'cycy02', NULL, 1483497809, 1514995200, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1', '2', '831123', NULL, NULL, NULL, 1483497809, '', '', 2, '2017-01-04 10:43:58'),
(80, 'NF0956419922', 'ceshiceshi', '13425333334', NULL, 'ceshi', NULL, 1484532596, 1516032000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1', '2', 'ceshi', NULL, NULL, NULL, 1484532596, '', '', 0, ''),
(81, 'NF11209871', 'chaiceshi', '13425333335', NULL, 'chaiceshi', NULL, 1484532680, 1516032000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1', '2', 'chaiceshi', NULL, NULL, NULL, 1484532680, '', '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `tgs_agentbrand`
--

CREATE TABLE IF NOT EXISTS `tgs_agentbrand` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `agent_id` int(11) NOT NULL COMMENT '代理商id',
  `brand_id` int(11) NOT NULL COMMENT '品牌id',
  `brandname` varchar(100) NOT NULL COMMENT '品牌名称',
  `sjdl` int(11) NOT NULL COMMENT '上级代理ID',
  `dengjiname` varchar(100) NOT NULL COMMENT '等级名称',
  `shenqdengji` varchar(100) NOT NULL COMMENT '申请等级',
  `dkimg` varchar(100) NOT NULL COMMENT '打款图片路径',
  `shenqtime` varchar(100) NOT NULL COMMENT '申请升级时间',
  `checked` int(11) NOT NULL DEFAULT '0' COMMENT '默认为状态0，1,审核中，2.是审核通过，3.是审核不通过',
  `sqtime` varchar(100) NOT NULL COMMENT '代理品牌的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='代理商代理品牌的记录表' AUTO_INCREMENT=58 ;

--
-- 转存表中的数据 `tgs_agentbrand`
--

INSERT INTO `tgs_agentbrand` (`id`, `agent_id`, `brand_id`, `brandname`, `sjdl`, `dengjiname`, `shenqdengji`, `dkimg`, `shenqtime`, `checked`, `sqtime`) VALUES
(6, 7, 1, '纳米品牌1', 1, '黑鹰王者', '', '', '', 2, '2016-11-21 16:59'),
(7, 7, 2, '倩蒂品牌', 1, '董事', '', '', '', 2, '2016-11-21 16:59'),
(8, 7, 3, 'FEATURES', 1, '王者', '', '', '', 2, '2016-11-21 16:59'),
(9, 9, 1, '纳米品牌1', 7, '黑鹰使者', ' ', '', '', 2, '2016-11-21 16:59'),
(10, 9, 2, '倩蒂品牌', 7, '大区', '', '', '', 2, '2016-11-21 16:59'),
(11, 9, 3, 'FEATURES', 7, '使者', '', '', '', 2, '2016-11-21 16:59'),
(12, 62, 4, '纳米品牌', 1, '黑鹰王者', '', '', '', 2, '2016-12-09 17:18:28'),
(13, 71, 4, '纳米品牌', 62, '幼鹰', '', '', '', 0, '2016-12-13 11:07:24'),
(14, 72, 4, '纳米品牌', 62, '幼鹰', '', '', '', 0, '2016-12-13 14:46:47'),
(15, 73, 4, '纳米品牌', 62, '幼鹰', '', '', '', 0, '2016-12-13 14:48:49'),
(16, 74, 4, '纳米品牌', 72, '幼鹰', '', '', '', 0, '2016-12-13 14:49:30'),
(17, 75, 4, '纳米品牌', 62, '幼鹰', '', '', '', 0, '2016-12-13 16:36:56'),
(52, 76, 1, '纳米品牌1', 9, '幼鹰', '', '', '', 0, '2016-12-30 14:12:09'),
(53, 77, 1, '纳米品牌1', 7, '幼鹰', '', '', '', 0, '2016-12-30 14:12:32'),
(54, 78, 4, '纳米品牌', 73, '幼鹰', '', '', '', 0, '2016-12-30 14:15:21'),
(55, 79, 4, '纳米品牌', 62, '幼鹰', '', '', '', 0, '2017-01-04 10:43:29'),
(56, 80, 4, '纳米品牌', 72, '幼鹰', '', '', '', 0, '2017-01-16 10:09:56'),
(57, 81, 4, '纳米品牌', 74, '幼鹰', '', '', '', 0, '2017-01-16 10:11:20');

-- --------------------------------------------------------

--
-- 表的结构 `tgs_app`
--

CREATE TABLE IF NOT EXISTS `tgs_app` (
  `appid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'app应用id',
  `apptitle` varchar(50) NOT NULL COMMENT 'app名称',
  `appimg` varchar(100) NOT NULL COMMENT 'applogo图片',
  `number` int(11) NOT NULL COMMENT '开通app人数',
  `content` text NOT NULL COMMENT 'app应用详情',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `listarray` text NOT NULL COMMENT '每个APP表单类型序列化',
  `apptable` varchar(250) NOT NULL COMMENT '表名',
  PRIMARY KEY (`appid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='app应用软件' AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `tgs_app`
--

INSERT INTO `tgs_app` (`appid`, `apptitle`, `appimg`, `number`, `content`, `addtime`, `listarray`, `apptable`) VALUES
(1, '投票系统', 'focusWe.jpg', 20, 'focusWe.jpg', 2147483647, '[{"name":"\\u6548\\u679c\\u6f14\\u793a","template":"app\\/sksapp\\/template\\/xiaoguo.html","img":"xiaobai","reimg":"xiaobai2"},{"name":"\\u57fa\\u7840\\u914d\\u7f6e","template":"app\\/sksapp\\/template\\/configbasic.html","img":"basic","reimg":"basic2"},{"name":"\\u5956\\u54c1\\u914d\\u7f6e","template":"app\\/sksapp\\/template\\/configgift.html","img":"gift","reimg":"gift2"}]', 'toupapp'),
(2, '砸金蛋', 'jindan.jpg', 50, 'jindan.jpg', 2147483647, '[{"name":"\\u57fa\\u7840\\u914d\\u7f6e","template":"app\\/jindanapp\\/template\\/configbasic.html","img":"basic","reimg":"basic2"},{"name":"\\u5956\\u54c1\\u914d\\u7f6e","template":"app\\/jindanapp\\/template\\/configgift.html","img":"gift","reimg":"gift2"},{"name":"\\u6548\\u679c\\u6f14\\u793a","template":"app\\/jindanapp\\/template\\/xiaoguo.html","img":"xiaobai","reimg":"xiaobai2"}]', 'jindanapp'),
(12, '细菌大战漱口水', 'logo.png', 100, 'logo.png', 2147483647, '[{"name":"\\u6548\\u679c\\u6f14\\u793a","template":"app\\/sksapp\\/template\\/xiaoguo.html","img":"xiaobai","reimg":"xiaobai2"},{"name":"\\u57fa\\u7840\\u914d\\u7f6e","template":"app\\/sksapp\\/template\\/configbasic.html","img":"basic","reimg":"basic2"},{"name":"\\u5956\\u54c1\\u914d\\u7f6e","template":"app\\/sksapp\\/template\\/configgift.html","img":"gift","reimg":"gift2"}]', 'sksapp');

-- --------------------------------------------------------

--
-- 表的结构 `tgs_apply`
--

CREATE TABLE IF NOT EXISTS `tgs_apply` (
  `aid` int(11) NOT NULL AUTO_INCREMENT COMMENT '申请品牌的id',
  `b_name` varchar(100) NOT NULL COMMENT '申请的品牌名称',
  `a_name` varchar(100) NOT NULL COMMENT '申请人姓名',
  `a_phone` varchar(100) NOT NULL COMMENT '申请人电话',
  `a_qq` varchar(100) NOT NULL COMMENT 'qq号',
  `a_weixin` varchar(101) NOT NULL COMMENT '申请人微信号',
  `content` text NOT NULL COMMENT '申请的品牌内容介绍',
  `applytime` varchar(100) NOT NULL COMMENT '申请时间',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='品牌申请表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tgs_apply`
--

INSERT INTO `tgs_apply` (`aid`, `b_name`, `a_name`, `a_phone`, `a_qq`, `a_weixin`, `content`, `applytime`) VALUES
(1, 'sada ', 'dd', '535635', '', 'dddd', '', '2016-12-01 15:46:59');

-- --------------------------------------------------------

--
-- 表的结构 `tgs_brand`
--

CREATE TABLE IF NOT EXISTS `tgs_brand` (
  `bid` int(11) NOT NULL AUTO_INCREMENT COMMENT '品牌ID',
  `brand_name` varchar(100) NOT NULL COMMENT '品牌名',
  `brand_adminid` int(11) NOT NULL COMMENT '品牌主ID(代理商的ID)',
  `brand_pic` varchar(100) NOT NULL COMMENT '授权证书',
  `brand_accredit` text NOT NULL COMMENT '授权文本',
  `brand_time` varchar(100) NOT NULL COMMENT '品牌添加时间',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='品牌表' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tgs_brand`
--

INSERT INTO `tgs_brand` (`bid`, `brand_name`, `brand_adminid`, `brand_pic`, `brand_accredit`, `brand_time`) VALUES
(1, '纳米品牌1', 7, 'zs.png', '兹授权 {{name}}  \r\n手机号码{{phone}}\r\n微信号{{weixin}}\r\n\r\n全作为荷兰纳米品牌 {{dengji}} 级别代理 权代理\r\n本公司纳米漱口水销售及推广业务。\r\n特此授权\r\n\r\n授权期限：{{addtime}} 至 {{jietime}}\r\n授权编号：{{agentid}}\r\n\r\n                   签发日期：{{addtime}}', '11111111'),
(2, '倩蒂品牌', 7, 'zs.png', '兹授权 {{name}}  \r\n手机号码{{phone}}\r\n微信号{{weixin}}\r\n\r\n全作为荷兰纳米品牌 {{dengji}} 级别代理 权代理\r\n本公司纳米漱口水销售及推广业务。\r\n特此授权\r\n\r\n授权期限：{{addtime}} 至 {{jietime}}\r\n授权编号：{{agentid}}\r\n\r\n                   签发日期：{{addtime}}', '11111111'),
(3, 'FEATURES', 7, 'zs.png', '兹授权 {{name}}  \n手机号码{{phone}}\n微信号{{weixin}}\n\n全作为荷兰纳米品牌 {{dengji}} 级别代理 权代理\n本公司纳米漱口水销售及推广业务。\n特此授权\n\n授权期限：{{addtime}} 至 {{jietime}}\n授权编号：{{agentid}}\n\n                   签发日期：{{addtime}}', '11111111'),
(4, '纳米品牌', 62, 'zs.png', '兹授权 {{name}}  \r\n手机号码{{phone}}\r\n微信号{{weixin}}\r\n\r\n全作为荷兰纳米品牌 {{dengji}} 级别代理 权代理\r\n本公司纳米漱口水销售及推广业务。\r\n特此授权\r\n\r\n授权期限：{{addtime}} 至 {{jietime}}\r\n授权编号：{{agentid}}\r\n\r\n                   签发日期：{{addtime}}', '222222222');

-- --------------------------------------------------------

--
-- 表的结构 `tgs_check`
--

CREATE TABLE IF NOT EXISTS `tgs_check` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '提交申请id',
  `appid` int(11) NOT NULL COMMENT 'app应用ID',
  `ins_id` int(11) NOT NULL COMMENT '安装app应用的id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `tel` varchar(12) NOT NULL COMMENT '电话',
  `reason` text NOT NULL COMMENT '审核未通过的原因',
  `url` varchar(100) NOT NULL COMMENT 'app应用的url',
  `adminurl` varchar(100) NOT NULL COMMENT 'app应用的后台url',
  `checked` int(11) NOT NULL COMMENT '0是审核中，1是已通过，2，未通过。3.是活动已经结束',
  `checktime` int(11) NOT NULL COMMENT '审核时间',
  `apptable` varchar(100) NOT NULL COMMENT 'app信息表名',
  `tableid` int(11) NOT NULL COMMENT '每个app表对应的id',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提交申请应用表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tgs_code`
--

CREATE TABLE IF NOT EXISTS `tgs_code` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) DEFAULT NULL,
  `riqi` varchar(30) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `fwprpic` varchar(100) DEFAULT NULL,
  `zd1` varchar(250) DEFAULT NULL,
  `zd2` varchar(250) DEFAULT NULL,
  `hits` int(8) DEFAULT '0',
  `query_time` datetime DEFAULT NULL,
  `query_ip` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tgs_config`
--

CREATE TABLE IF NOT EXISTS `tgs_config` (
  `id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) NOT NULL,
  `code` varchar(30) NOT NULL,
  `code_name` varchar(100) NOT NULL,
  `code_value` text,
  `store_range` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- 转存表中的数据 `tgs_config`
--

INSERT INTO `tgs_config` (`id`, `parentid`, `code`, `code_name`, `code_value`, `store_range`, `type`) VALUES
(1, 1, 'site_url', '网站地址', '/', NULL, 'text'),
(2, 1, 'site_name', '网站名称', '微营销管理系统', NULL, 'text'),
(3, 1, 'timezone', 'timezone', '8', NULL, 'text'),
(4, 1, 'time_format', '时间格式', 'Y-m-d H:i:s', NULL, 'text'),
(5, 1, 'site_lang', '语言', 'zh_cn', NULL, 'text'),
(6, 1, 'text_type', 'txttype', '1', NULL, 'text'),
(7, 1, 'site_themes', '防伪主题', '2001', NULL, 'text'),
(8, 1, 'agent_themes', '代理主题', '1004', NULL, 'text'),
(9, 1, 'fw1_themes', '高级防伪主题', '3001', NULL, 'text'),
(10, 1, 'yzm_status', '验证码状态', '0', NULL, 'checkbox'),
(11, 1, 'page_title', '网页标题', '', NULL, 'text'),
(12, 1, 'page_keywords', '微营销管理系统', '', NULL, 'text'),
(13, 1, 'page_desc', '网页描述', '', NULL, 'text'),
(14, 1, 'site_close', '关闭站点', '', NULL, 'text'),
(15, 1, 'site_close_reason', '关闭理由', '', NULL, 'text'),
(16, 1, 'notices', '提示', '请刮开防伪标签上灰色涂层，在输入框内依次输入16位防伪码，然后点查询键即可。<br>查询显示结果如下：<br>1、如果错误，提示为“您输入的防伪码不存在，谨防假冒”。<br>2、如果查询过，提示为“该商品已经被查询过,本次是第*次查询,谨防假冒”。<br /><br />\r\n <p style="text-align:center"><a href="index.php">代理查询</a>     <a href="fw1.php">高级防伪查询</a>     <a href="mblogin/" target="_blank">代理登录</a></p>', NULL, 'text'),
(17, 1, 'notice_1', '提示', '尊敬的顾客您好，您购买的是本公司生产的产品{{product}},有效服务期限为{{riqi}}，{{zd1}},{{zd2}},属于正品，请放心使用。', NULL, 'text'),
(18, 1, 'notice_2', '提示', '该商品已经被查询过,本次是第<font color="#FF0000" size="+1">{{hits}}</font>次查询,上次一次查询时间：{{query_time}},查询IP：{{query_ip}} 谨防假冒', NULL, 'text'),
(19, 1, 'notice_3', '提示', '您输入的防伪码{{bianhao}}不存在，谨防假冒。', NULL, 'text'),
(20, 1, 'agents', '提示', '请输入代理商微信号或手机号，然后点查询键即可。<br><br />\n <p style="text-align:center"><a href="fw.php">防伪查询</a>     <a href="fw1.php">高级防伪查询</a>     <a href="mblogin/" target="_blank">代理登录</a></p>', NULL, 'text'),
(21, 1, 'agent_1', '提示', '兹授权 {{name}}  手机号码{{phone}}\n微信号{{weixin}}为 我司产品{{dengji}}。\n全权代理本公司产品销售及推广业务。\n特此授权\n\n授权期限：{{addtime}} 至 {{jietime}}\n授权编号：{{agentid}}\n\n                   签发日期：{{addtime}}\n', NULL, 'text'),
(22, 1, 'dldj', '代理等级', '董事,总代,大区', NULL, 'text'),
(23, 1, 'site_logo', '网站LOGO', 'editor/attached/logo-a.png', NULL, 'text'),
(24, 1, 'copyrighta', '底部版权', 'Copyright  2016 版权所有 售后QQ715457186</br>\n忆天网络微营销查询管理系统V5.1.0', NULL, 'text'),
(25, 1, 'agent_2', '提示', '您查询的用户{{name}}因违返公司相关规定，已经加入黑名单！谨防假冒', NULL, 'text'),
(26, 1, 'agent_3', '提示', '您输入的代理商信息{{keyword}}不存在，谨防假冒。', NULL, 'text'),
(27, 1, 'list_num', 'list', '100', NULL, 'text'),
(28, 1, 'agentqz', '代理编号前缀', 'NF', NULL, 'text'),
(29, 1, 'agent_logo', '代理页面LOGO', 'editor/attached/agent_logo.png', NULL, 'text'),
(30, 1, 'fw_logo', '防伪页面LOGO', 'editor/attached/fw_logo.png', NULL, 'text'),
(31, 1, 'bgpic', '自定义背景图', 'editor/attached/bg.jpg', NULL, 'text'),
(32, 1, 'mbgpic', '手机端背景图', 'editor/attached/bg.jpg', NULL, 'text');

-- --------------------------------------------------------

--
-- 表的结构 `tgs_configbasic`
--

CREATE TABLE IF NOT EXISTS `tgs_configbasic` (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '基础配置ID',
  `appid` int(11) NOT NULL COMMENT 'APP应用id',
  `cuid` int(11) NOT NULL COMMENT '用户ID',
  `install_id` int(11) NOT NULL COMMENT '安装id',
  `activityname` varchar(100) NOT NULL COMMENT '活动名',
  `starttime` int(11) NOT NULL COMMENT '活动开始时间',
  `overtime` int(11) NOT NULL COMMENT '活动结束时间',
  `code` varchar(100) NOT NULL COMMENT '用户二维码url',
  `time` int(11) NOT NULL COMMENT '添加活动时间',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础配置信息表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tgs_dengji`
--

CREATE TABLE IF NOT EXISTS `tgs_dengji` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `djname` varchar(50) DEFAULT NULL,
  `checkper` varchar(50) DEFAULT NULL,
  `editper` varchar(50) DEFAULT NULL,
  `jibie` varchar(50) DEFAULT NULL,
  `delper` varchar(50) DEFAULT NULL,
  `sjcheckper` varchar(50) DEFAULT NULL,
  `d_bid` int(11) NOT NULL COMMENT '每个品牌对应的代理等级',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `tgs_dengji`
--

INSERT INTO `tgs_dengji` (`id`, `djname`, `checkper`, `editper`, `jibie`, `delper`, `sjcheckper`, `d_bid`) VALUES
(1, '黑鹰王者', '1', '1', '9', '1', NULL, 4),
(2, '黑鹰使者', '1', '1', '8', '1', NULL, 4),
(3, '黑鹰', '1', '1', '7', '1', NULL, 4),
(4, '幼鹰', '1', '1', '6', '1', NULL, 4),
(8, '董事', '1', '1', '9', '1', NULL, 2),
(9, '大区', '1', '1', '8', '1', NULL, 2),
(10, '总代', '1', '1', '7', '1', NULL, 2),
(11, '一代', '1', '1', '6', '1', NULL, 2),
(12, '王者', '1', '1', '9', '1', NULL, 3),
(13, '使者', '1', '1', '8', '1', NULL, 3),
(14, '护卫', '1', '1', '7', '1', NULL, 3),
(15, '士兵', '1', '1', '6', '1', NULL, 3),
(16, '黑鹰王者', '1', '1', '9', '1', NULL, 1),
(17, '黑鹰使者', '1', '1', '8', '1', NULL, 1),
(18, '黑鹰', '1', '1', '7', '1', NULL, 1),
(19, '幼鹰', '1', '1', '6', '1', NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tgs_ggkwxuser`
--

CREATE TABLE IF NOT EXISTS `tgs_ggkwxuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wxid` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `live` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  `number` int(11) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=320 ;

--
-- 转存表中的数据 `tgs_ggkwxuser`
--

INSERT INTO `tgs_ggkwxuser` (`id`, `wxid`, `name`, `sex`, `live`, `pic`, `number`) VALUES
(318, 'oaCAixG4iAvvmNZBgGL95fAzZeM8', '陶志锋', '1', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrGeZpib4x0HEno6nac5Eybt97gIFCtzibHmZgwBdNsGmvtJcPibwWhwqvWM38jnQqdCREUTwaXaB8gwJj8zhXgWKe4/0', 4),
(319, 'oaCAixNXJSH0SWOXgOagoyQNO8so', '♚sunnyday', '1', '吉安', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrE1zlWtibQGsUtxM6nCT8Hu2kuNQJGTGHaqiaRgV1AS6Q3Xb6yhEgN63rWO2u7ZImcdTPNWkhK48qmJOicBPfQwOMH/0', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tgs_gonggao`
--

CREATE TABLE IF NOT EXISTS `tgs_gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(11) DEFAULT NULL COMMENT '发公告的人ID',
  `g_bid` varchar(11) NOT NULL COMMENT '品牌ID',
  `content` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `times` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0是默认为未查看，1是已查看',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- 转存表中的数据 `tgs_gonggao`
--

INSERT INTO `tgs_gonggao` (`id`, `uid`, `g_bid`, `content`, `times`, `status`) VALUES
(64, '7', '1', '测试', '2016-11-07 10:22:52', 1),
(65, '7', '2', 'Boss发发文了~~~', '2016-11-07 10:42:05', 1),
(90, '7', '1', 'dd', '2016-11-23 12:53:53', 0),
(67, '9', '3', '的是的是~', '2016-11-07 10:42:33', 1),
(91, '7', '3', 'ddddddd', '2016-11-23 12:55:08', 0),
(82, '7', '2', '柔柔弱弱若若若若', '2016-11-09 10:40:52', 0),
(83, '7', '1', '吞吞吐吐拖', '2016-11-09 10:42:52', 0),
(84, '7', '1', '顶顶顶顶', '2016-11-09 10:44:52', 0),
(85, '9', '3', '你好', '2016-11-09 10:47:22', 0),
(86, '9', '2', 'ces', '2016-11-10 07:40:23', 0),
(87, '9', '2', '测试', '2016-11-12 11:11:13', 0),
(92, '7', '2', 'ddddddad sd sa', '2016-11-24 14:42:14', 0),
(94, '7', '3', 'dd', '2016-11-28 16:55:27', 0),
(95, '7', '1', '今晚聚餐！！！', '2016-11-28 16:58:27', 0),
(96, '7', '2', '是的撒大概', '2016-11-28 16:58:38', 0),
(97, '7', '2', 'ddddd', '2016-12-01 15:46:27', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tgs_goods`
--

CREATE TABLE IF NOT EXISTS `tgs_goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `adminid` int(11) DEFAULT NULL COMMENT '品牌主的ID（代理商ID）',
  `goods_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `goods_pic` varchar(100) DEFAULT NULL COMMENT '商品图片',
  `goods_format` int(11) DEFAULT NULL COMMENT '商品拆分比例',
  `g_bid` int(11) DEFAULT NULL COMMENT '品牌ID',
  `allbuy` int(11) DEFAULT NULL COMMENT '商品所有零售的数据',
  `alluser` int(11) DEFAULT NULL COMMENT '商品所有代理销售数据',
  `allagent` int(11) DEFAULT NULL COMMENT '代理总数',
  `introduct` text NOT NULL COMMENT '产品介绍',
  `goods_time` varchar(100) DEFAULT NULL COMMENT '商品添加时间',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='商品表' AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `tgs_goods`
--

INSERT INTO `tgs_goods` (`gid`, `adminid`, `goods_name`, `goods_pic`, `goods_format`, `g_bid`, `allbuy`, `alluser`, `allagent`, `introduct`, `goods_time`) VALUES
(1, 62, '纳米漱口水（小瓶）', 'product1.png', 30, 4, 10, 10, 10, '益生菌深层洁净漱口水', '1477477193'),
(2, 62, '纳米漱口水（大瓶）', 'product2.png', 30, 4, 10, 10, 2, '益生菌深层洁净漱口水', '1477477193'),
(3, 7, '倩蒂燕窝面膜', 'product6.jpg', 10, 2, 20, 30, 10, '保护肌肤免受紫外线的伤害，绽放亮白健康光彩', '1477477193'),
(4, 7, '水解稻米蛋白肽收紧水', 'product4.jpg', 10, 3, 20, 30, 10, '水解稻米蛋白肽收紧水', '1477477193'),
(5, 7, '蛋蛋白晳霜', 'product3.jpg', 10, 3, 20, 30, 10, '蛋蛋白晳霜', '1477477193'),
(6, 7, '鳕鱼胶原肽精华液', 'product5.jpg', 10, 3, 20, 30, 10, '鳕鱼胶原肽精华液', '1477477193'),
(8, 7, '倩蒂燕窝面膜2', 'product6.jpg', 10, 2, 20, 30, 10, '保护肌肤免受紫外线的伤害，绽放亮白健康光彩', '1477477193'),
(9, 7, '倩蒂燕窝面膜3', 'product6.jpg', 10, 2, 20, 30, 10, '保护肌肤免受紫外线的伤害，绽放亮白健康光彩', '1477477193'),
(10, 7, '倩蒂燕窝面膜4', 'product6.jpg', 10, 2, 20, 30, 10, '保护肌肤免受紫外线的伤害，绽放亮白健康光彩', '1477477193'),
(11, 7, '倩蒂燕窝面膜5', 'product6.jpg', 10, 2, 20, 30, 10, '保护肌肤免受紫外线的伤害，绽放亮白健康光彩', '1477477193'),
(12, 7, '倩蒂燕窝面膜6', 'product6.jpg', 10, 2, 20, 30, 10, '保护肌肤免受紫外线的伤害，绽放亮白健康光彩', '1477477193'),
(13, 7, '纳米漱口水（大瓶）', 'product2.png', 30, 1, 10, 10, 2, '益生菌深层洁净漱口水', '1477477193'),
(14, 7, '纳米漱口水（小瓶）', 'product1.png', 30, 1, 10, 10, 10, '益生菌深层洁净漱口水', '1477477193');

-- --------------------------------------------------------

--
-- 表的结构 `tgs_hisagent`
--

CREATE TABLE IF NOT EXISTS `tgs_hisagent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(50) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `addip` varchar(40) DEFAULT NULL,
  `results` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1739 ;

--
-- 转存表中的数据 `tgs_hisagent`
--

INSERT INTO `tgs_hisagent` (`id`, `keyword`, `addtime`, `addip`, `results`) VALUES
(1550, 'Boss', '2016-11-28 15:31:57', '127.0.0.1', 1),
(1551, '{{brand.weixin}}', '2016-11-29 17:19:01', '127.0.0.1', 3),
(1552, 'Boss', '2016-11-29 17:19:01', '127.0.0.1', 1),
(1553, 'Boss', '2016-11-29 17:19:01', '127.0.0.1', 1),
(1554, 'Boss', '2016-11-29 17:19:01', '127.0.0.1', 1),
(1555, '{{brand.weixin}}', '2016-11-29 17:20:30', '127.0.0.1', 3),
(1556, 'Boss', '2016-11-29 17:20:30', '127.0.0.1', 1),
(1557, 'Boss', '2016-11-29 17:20:30', '127.0.0.1', 1),
(1558, 'Boss', '2016-11-29 17:20:30', '127.0.0.1', 1),
(1559, '{{brand.weixin}}', '2016-11-29 17:51:22', '127.0.0.1', 3),
(1560, 'Boss', '2016-11-29 17:51:22', '127.0.0.1', 1),
(1561, 'Boss', '2016-11-29 17:51:22', '127.0.0.1', 1),
(1562, 'Boss', '2016-11-29 17:51:22', '127.0.0.1', 1),
(1563, '{{brand.weixin}}', '2016-11-29 17:51:23', '127.0.0.1', 3),
(1564, 'Boss', '2016-11-29 17:51:23', '127.0.0.1', 1),
(1565, 'Boss', '2016-11-29 17:51:23', '127.0.0.1', 1),
(1566, 'Boss', '2016-11-29 17:51:23', '127.0.0.1', 1),
(1567, '{{brand.weixin}}', '2016-11-29 17:52:44', '127.0.0.1', 3),
(1568, 'Boss', '2016-11-29 17:52:44', '127.0.0.1', 1),
(1569, 'Boss', '2016-11-29 17:52:44', '127.0.0.1', 1),
(1570, 'Boss', '2016-11-29 17:52:44', '127.0.0.1', 1),
(1571, '{{brand.weixin}}', '2016-11-29 17:56:49', '127.0.0.1', 3),
(1572, 'Boss', '2016-11-29 17:56:49', '127.0.0.1', 1),
(1573, 'Boss', '2016-11-29 17:56:49', '127.0.0.1', 1),
(1574, 'Boss', '2016-11-29 17:56:50', '127.0.0.1', 1),
(1575, '{{brand.weixin}}', '2016-11-29 18:09:19', '127.0.0.1', 3),
(1576, 'ccc', '2016-11-29 18:09:19', '127.0.0.1', 1),
(1577, '{{brand.weixin}}', '2016-11-29 18:10:05', '127.0.0.1', 3),
(1578, 'ccc', '2016-11-29 18:10:05', '127.0.0.1', 1),
(1579, '{{brand.weixin}}', '2016-11-30 09:27:10', '127.0.0.1', 3),
(1580, 'Boss', '2016-11-30 09:27:10', '127.0.0.1', 1),
(1581, 'Boss', '2016-11-30 09:27:10', '127.0.0.1', 1),
(1582, 'Boss', '2016-11-30 09:27:11', '127.0.0.1', 1),
(1583, '{{brand.weixin}}', '2016-11-30 09:29:02', '127.0.0.1', 3),
(1584, 'Boss', '2016-11-30 09:29:02', '127.0.0.1', 1),
(1585, 'Boss', '2016-11-30 09:29:02', '127.0.0.1', 1),
(1586, 'Boss', '2016-11-30 09:29:02', '127.0.0.1', 1),
(1587, '{{brand.weixin}}', '2016-11-30 09:29:07', '127.0.0.1', 3),
(1588, 'Boss', '2016-11-30 09:29:07', '127.0.0.1', 1),
(1589, 'Boss', '2016-11-30 09:29:08', '127.0.0.1', 1),
(1590, 'Boss', '2016-11-30 09:29:08', '127.0.0.1', 1),
(1591, '{{brand.weixin}}', '2016-11-30 09:30:24', '127.0.0.1', 3),
(1592, 'Boss', '2016-11-30 09:30:24', '127.0.0.1', 1),
(1593, 'Boss', '2016-11-30 09:30:24', '127.0.0.1', 1),
(1594, 'Boss', '2016-11-30 09:30:24', '127.0.0.1', 1),
(1595, '{{brand.weixin}}', '2016-12-09 08:39:04', '119.129.224.111', 3),
(1596, 'Boss', '2016-12-09 08:39:04', '119.129.224.111', 1),
(1597, 'Boss', '2016-12-09 08:39:05', '119.129.224.111', 1),
(1598, 'Boss', '2016-12-09 08:39:05', '119.129.224.111', 1),
(1599, '{{brand.weixin}}', '2016-12-09 15:14:55', '119.129.224.111', 3),
(1600, 'Boss', '2016-12-09 15:14:56', '119.129.224.111', 1),
(1601, 'Boss', '2016-12-09 15:14:56', '119.129.224.111', 1),
(1602, 'Boss', '2016-12-09 15:14:58', '119.129.224.111', 1),
(1603, '{{brand.weixin}}', '2016-12-09 15:15:03', '119.129.224.111', 3),
(1604, 'Boss', '2016-12-09 15:15:03', '119.129.224.111', 1),
(1605, 'Boss', '2016-12-09 15:15:04', '119.129.224.111', 1),
(1606, 'Boss', '2016-12-09 15:15:05', '119.129.224.111', 1),
(1607, '{{brand.weixin}}', '2016-12-09 15:15:18', '119.129.224.111', 3),
(1608, 'Boss', '2016-12-09 15:15:18', '119.129.224.111', 1),
(1609, 'Boss', '2016-12-09 15:15:19', '119.129.224.111', 1),
(1610, 'Boss', '2016-12-09 15:15:19', '119.129.224.111', 1),
(1611, '{{brand.weixin}}', '2016-12-09 15:15:26', '119.129.224.111', 3),
(1612, 'Boss', '2016-12-09 15:15:26', '119.129.224.111', 1),
(1613, 'Boss', '2016-12-09 15:15:26', '119.129.224.111', 1),
(1614, 'Boss', '2016-12-09 15:15:28', '119.129.224.111', 1),
(1615, '{{brand.weixin}}', '2016-12-09 15:59:05', '119.129.224.111', 3),
(1616, 'Boss', '2016-12-09 15:59:05', '119.129.224.111', 1),
(1617, 'Boss', '2016-12-09 15:59:06', '119.129.224.111', 1),
(1618, 'Boss', '2016-12-09 15:59:06', '119.129.224.111', 1),
(1619, '{{brand.weixin}}', '2016-12-09 16:24:22', '119.129.224.111', 3),
(1620, 'Boss', '2016-12-09 16:24:22', '119.129.224.111', 1),
(1621, 'Boss', '2016-12-09 16:24:43', '119.129.224.111', 1),
(1622, 'Boss', '2016-12-09 16:24:43', '119.129.224.111', 1),
(1623, '{{brand.weixin}}', '2016-12-09 16:45:33', '119.129.224.111', 3),
(1624, 'Boss', '2016-12-09 16:45:33', '119.129.224.111', 1),
(1625, 'Boss', '2016-12-09 16:45:34', '119.129.224.111', 1),
(1626, 'Boss', '2016-12-09 16:45:36', '119.129.224.111', 1),
(1627, '{{brand.weixin}}', '2016-12-09 16:45:39', '119.129.224.111', 3),
(1628, 'Boss', '2016-12-09 16:45:39', '119.129.224.111', 1),
(1629, 'Boss', '2016-12-09 16:45:40', '119.129.224.111', 1),
(1630, 'Boss', '2016-12-09 16:45:43', '119.129.224.111', 1),
(1631, '{{brand.weixin}}', '2016-12-09 16:45:46', '119.129.224.111', 3),
(1632, 'Boss', '2016-12-09 16:45:46', '119.129.224.111', 1),
(1633, 'Boss', '2016-12-09 16:45:46', '119.129.224.111', 1),
(1634, 'Boss', '2016-12-09 16:45:47', '119.129.224.111', 1),
(1635, '{{brand.weixin}}', '2016-12-09 16:47:09', '119.129.224.111', 3),
(1636, 'Boss', '2016-12-09 16:47:09', '119.129.224.111', 1),
(1637, 'Boss', '2016-12-09 16:47:09', '119.129.224.111', 1),
(1638, 'Boss', '2016-12-09 16:47:09', '119.129.224.111', 1),
(1639, '{{brand.weixin}}', '2016-12-09 16:56:22', '119.129.224.111', 3),
(1640, '{{brand.weixin}}', '2016-12-09 16:56:22', '119.129.224.111', 3),
(1641, 'Boss', '2016-12-09 16:56:22', '119.129.224.111', 1),
(1642, 'Boss', '2016-12-09 16:56:38', '119.129.224.111', 1),
(1643, 'Boss', '2016-12-09 16:56:38', '119.129.224.111', 1),
(1644, '{{brand.weixin}}', '2016-12-09 16:56:38', '119.129.224.111', 3),
(1645, '{{brand.weixin}}', '2016-12-09 17:07:02', '119.129.224.111', 3),
(1646, 'Boss', '2016-12-09 17:07:03', '119.129.224.111', 1),
(1647, 'Boss', '2016-12-09 17:07:04', '119.129.224.111', 1),
(1648, 'Boss', '2016-12-09 17:07:04', '119.129.224.111', 1),
(1649, '{{brand.weixin}}', '2016-12-09 18:17:04', '119.129.224.111', 3),
(1650, 'lidan', '2016-12-09 18:17:04', '119.129.224.111', 1),
(1651, '{{brand.weixin}}', '2016-12-10 11:25:46', '119.129.225.12', 3),
(1652, 'Boss', '2016-12-10 11:25:46', '119.129.225.12', 1),
(1653, 'Boss', '2016-12-10 11:25:47', '119.129.225.12', 1),
(1654, 'Boss', '2016-12-10 11:25:48', '119.129.225.12', 1),
(1655, '{{brand.weixin}}', '2016-12-12 13:08:24', '117.136.79.20', 3),
(1656, 'lidan', '2016-12-12 13:08:24', '117.136.79.20', 1),
(1657, '{{brand.weixin}}', '2016-12-12 13:16:39', '117.136.79.20', 3),
(1658, 'lidan', '2016-12-12 13:16:39', '117.136.79.20', 1),
(1659, '{{brand.weixin}}', '2016-12-13 14:47:57', '112.96.128.140', 3),
(1660, '{{brand.weixin}}', '2016-12-13 14:47:57', '112.96.128.140', 3),
(1661, 'cp168', '2016-12-13 14:47:57', '112.96.128.140', 1),
(1662, '{{brand.weixin}}', '2016-12-13 22:46:56', '42.199.55.218', 3),
(1663, '{{brand.weixin}}', '2016-12-13 22:46:57', '42.199.55.218', 3),
(1664, 'Boss', '2016-12-13 22:46:57', '42.199.55.218', 1),
(1665, 'Boss', '2016-12-13 22:46:57', '42.199.55.218', 1),
(1666, 'Boss', '2016-12-13 22:46:58', '42.199.55.218', 1),
(1667, '{{brand.weixin}}', '2016-12-13 22:47:36', '42.199.55.218', 3),
(1668, '{{brand.weixin}}', '2016-12-13 22:47:36', '42.199.55.218', 3),
(1669, 'Boss', '2016-12-13 22:47:36', '42.199.55.218', 1),
(1670, 'Boss', '2016-12-13 22:47:37', '42.199.55.218', 1),
(1671, 'Boss', '2016-12-13 22:47:37', '42.199.55.218', 1),
(1672, '{{brand.weixin}}', '2016-12-14 10:35:28', '119.129.224.188', 3),
(1673, 'Boss', '2016-12-14 10:35:28', '119.129.224.188', 1),
(1674, 'Boss', '2016-12-14 10:35:28', '119.129.224.188', 1),
(1675, 'Boss', '2016-12-14 10:35:29', '119.129.224.188', 1),
(1676, '{{brand.weixin}}', '2016-12-14 10:35:29', '119.129.224.188', 3),
(1677, 'Boss', '2016-12-14 10:35:29', '119.129.224.188', 1),
(1678, 'Boss', '2016-12-14 10:35:30', '119.129.224.188', 1),
(1679, 'Boss', '2016-12-14 10:35:31', '119.129.224.188', 1),
(1680, '{{brand.weixin}}', '2016-12-14 10:44:15', '119.129.224.188', 3),
(1681, 'Boss', '2016-12-14 10:44:15', '119.129.224.188', 1),
(1682, 'Boss', '2016-12-14 10:44:20', '119.129.224.188', 1),
(1683, 'Boss', '2016-12-14 10:44:21', '119.129.224.188', 1),
(1684, '{{brand.weixin}}', '2016-12-15 09:44:19', '121.33.20.164', 3),
(1685, '{{brand.weixin}}', '2016-12-22 14:29:17', '121.33.21.40', 3),
(1686, 'xiaoboss', '2016-12-22 14:29:17', '121.33.21.40', 1),
(1687, 'xiaoboss', '2016-12-22 14:29:18', '121.33.21.40', 1),
(1688, 'xiaoboss', '2016-12-22 14:29:19', '121.33.21.40', 1),
(1689, '{{brand.weixin}}', '2016-12-22 14:30:39', '121.33.21.40', 3),
(1690, 'xiaoboss', '2016-12-22 14:30:39', '121.33.21.40', 1),
(1691, 'xiaoboss', '2016-12-22 14:30:40', '121.33.21.40', 1),
(1692, 'xiaoboss', '2016-12-22 14:30:42', '121.33.21.40', 1),
(1693, '{{brand.weixin}}', '2016-12-22 14:41:24', '121.33.21.40', 3),
(1694, 'xiaoboss', '2016-12-22 14:41:24', '121.33.21.40', 1),
(1695, 'xiaoboss', '2016-12-22 14:41:25', '121.33.21.40', 1),
(1696, 'xiaoboss', '2016-12-22 14:41:26', '121.33.21.40', 1),
(1697, '{{brand.weixin}}', '2016-12-22 18:24:49', '121.33.21.40', 3),
(1698, 'xiaoboss', '2016-12-22 18:24:49', '121.33.21.40', 1),
(1699, '{{brand.weixin}}', '2016-12-22 18:24:50', '121.33.21.40', 3),
(1700, 'Boss', '2016-12-22 18:24:50', '121.33.21.40', 1),
(1701, 'xiaoboss', '2016-12-22 18:24:50', '121.33.21.40', 1),
(1702, 'Boss', '2016-12-22 18:24:51', '121.33.21.40', 1),
(1703, 'xiaoboss', '2016-12-22 18:24:52', '121.33.21.40', 1),
(1704, 'Boss', '2016-12-22 18:24:53', '121.33.21.40', 1),
(1705, '{{brand.weixin}}', '2016-12-23 17:46:14', '121.33.21.40', 3),
(1706, 'xiaoboss', '2016-12-23 17:46:15', '121.33.21.40', 1),
(1707, 'xiaoboss', '2016-12-23 17:46:16', '121.33.21.40', 1),
(1708, 'xiaoboss', '2016-12-23 17:46:17', '121.33.21.40', 1),
(1709, '{{brand.weixin}}', '2016-12-23 17:46:44', '121.33.21.40', 3),
(1710, 'xiaoboss', '2016-12-23 17:46:44', '121.33.21.40', 1),
(1711, 'xiaoboss', '2016-12-23 17:46:45', '121.33.21.40', 1),
(1712, 'xiaoboss', '2016-12-23 17:46:46', '121.33.21.40', 1),
(1713, '{{brand.weixin}}', '2016-12-23 18:00:24', '121.33.21.40', 3),
(1714, 'xiaoboss', '2016-12-23 18:00:24', '121.33.21.40', 1),
(1715, 'xiaoboss', '2016-12-23 18:00:25', '121.33.21.40', 1),
(1716, 'xiaoboss', '2016-12-23 18:00:26', '121.33.21.40', 1),
(1717, '{{brand.weixin}}', '2016-12-23 18:03:08', '121.33.21.40', 3),
(1718, 'xiaoboss', '2016-12-23 18:03:08', '121.33.21.40', 1),
(1719, 'xiaoboss', '2016-12-23 18:03:09', '121.33.21.40', 1),
(1720, 'xiaoboss', '2016-12-23 18:03:10', '121.33.21.40', 1),
(1721, '{{brand.weixin}}', '2016-12-24 09:49:56', '116.23.26.220', 3),
(1722, 'Boss', '2016-12-24 09:49:57', '116.23.26.220', 1),
(1723, 'Boss', '2016-12-24 09:49:58', '116.23.26.220', 1),
(1724, 'Boss', '2016-12-24 09:49:59', '116.23.26.220', 1),
(1725, '{{brand.weixin}}', '2016-12-28 13:42:01', '116.22.164.28', 3),
(1726, 'lidan', '2016-12-28 13:42:01', '116.22.164.28', 1),
(1727, '{{brand.weixin}}', '2016-12-30 14:21:55', '119.129.225.216', 3),
(1728, '{{brand.weixin}}', '2016-12-30 14:21:55', '119.129.225.216', 3),
(1729, '18512505682', '2016-12-30 14:21:55', '119.129.225.216', 1),
(1730, '{{brand.weixin}}', '2017-01-04 10:26:46', '121.33.20.21', 3),
(1731, '{{brand.weixin}}', '2017-01-04 10:26:46', '121.33.20.21', 3),
(1732, '18512505682', '2017-01-04 10:26:46', '121.33.20.21', 1),
(1733, '{{brand.weixin}}', '2017-01-04 10:55:48', '121.33.20.21', 3),
(1734, '{{brand.weixin}}', '2017-01-04 10:55:48', '121.33.20.21', 3),
(1735, 'lidan', '2017-01-04 10:55:48', '121.33.20.21', 1),
(1736, 'lidan', '2017-01-04 10:55:56', '121.33.20.21', 1),
(1737, '{{brand.weixin}}', '2017-02-06 09:33:51', '127.0.0.1', 3),
(1738, 'lidan', '2017-02-06 09:33:51', '127.0.0.1', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tgs_history`
--

CREATE TABLE IF NOT EXISTS `tgs_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(50) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `addip` varchar(40) DEFAULT NULL,
  `results` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tgs_history`
--

INSERT INTO `tgs_history` (`id`, `keyword`, `addtime`, `addip`, `results`) VALUES
(1, '1427626006', '2016-10-10 11:15:47', '::1', 3);

-- --------------------------------------------------------

--
-- 表的结构 `tgs_install`
--

CREATE TABLE IF NOT EXISTS `tgs_install` (
  `in_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '安装id',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `appid` int(11) NOT NULL COMMENT 'app应用id',
  `apptitle` varchar(100) NOT NULL COMMENT 'app应该名称',
  `status` int(11) NOT NULL COMMENT '0是默认状态，1是安装配置中，2是安装成',
  PRIMARY KEY (`in_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='安装app表' AUTO_INCREMENT=80 ;

--
-- 转存表中的数据 `tgs_install`
--

INSERT INTO `tgs_install` (`in_id`, `uid`, `appid`, `apptitle`, `status`) VALUES
(79, 9, 12, '细菌大战漱口水', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tgs_jiangpin`
--

CREATE TABLE IF NOT EXISTS `tgs_jiangpin` (
  `jid` int(11) NOT NULL AUTO_INCREMENT COMMENT '奖品配置ID',
  `randomname` varchar(100) NOT NULL COMMENT '随机奖品名称',
  ` probability` varchar(50) NOT NULL COMMENT '随机奖品的几率',
  `ranking` text NOT NULL COMMENT '排名的奖品',
  `addtime` int(11) NOT NULL COMMENT '添加奖品配置时间',
  PRIMARY KEY (`jid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖品配置' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tgs_jieyi`
--

CREATE TABLE IF NOT EXISTS `tgs_jieyi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '代理商微信名',
  `content` text NOT NULL COMMENT '反馈内容',
  `time` varchar(100) NOT NULL DEFAULT '' COMMENT '反馈时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `tgs_jieyi`
--

INSERT INTO `tgs_jieyi` (`id`, `username`, `content`, `time`) VALUES
(30, 'Boss', '100', '2016-12-01 15:45:47'),
(29, 'Boss', '5', '2016-12-01 15:45:29');

-- --------------------------------------------------------

--
-- 表的结构 `tgs_jindanapp`
--

CREATE TABLE IF NOT EXISTS `tgs_jindanapp` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '基础配置ID',
  `appid` int(11) NOT NULL COMMENT 'APP应用id',
  `cuid` int(11) NOT NULL COMMENT '用户ID',
  `install_id` int(11) NOT NULL COMMENT '安装id',
  `name` varchar(100) NOT NULL COMMENT '活动名',
  `starttime` int(11) NOT NULL COMMENT '活动开始时间',
  `endtime` int(11) NOT NULL COMMENT '活动结束时间',
  `code` varchar(100) NOT NULL COMMENT '用户二维码url',
  `randomname` varchar(100) NOT NULL COMMENT '随机奖名称',
  `odds` int(11) NOT NULL COMMENT '随机几率',
  `ranking` text NOT NULL COMMENT '排名和奖品',
  `time` int(11) NOT NULL COMMENT '添加活动时间',
  `number` int(11) NOT NULL COMMENT '活动状态表，1代表进行中，2表示已结束',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投票APP信息表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tgs_module`
--

CREATE TABLE IF NOT EXISTS `tgs_module` (
  `mid` int(11) NOT NULL AUTO_INCREMENT COMMENT '模块id',
  `m_name` varchar(100) NOT NULL COMMENT '模块名称',
  `m_url` varchar(100) NOT NULL COMMENT '链接url',
  `check` int(11) NOT NULL COMMENT '新手指导，0表示新手，1表示已跳过新手操作',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='功能模块' AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `tgs_module`
--

INSERT INTO `tgs_module` (`mid`, `m_name`, `m_url`, `check`) VALUES
(1, '库存管理', 'sales', 0),
(2, '下线邀请', 'next_inviter', 0),
(3, '操作教程', 'audit', 0),
(4, '数据分析', 'data', 0),
(5, '个人中心', 'personal', 0),
(6, '授权证书', 'gives', 0),
(7, '公告系统', 'notice', 0),
(8, '下线管理', 'next_management', 0),
(9, '意见反馈', 'opinion', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tgs_order`
--

CREATE TABLE IF NOT EXISTS `tgs_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_bid` int(11) NOT NULL COMMENT '品牌ID',
  `order_gid` int(11) NOT NULL COMMENT '商品ID',
  `order_agentid` varchar(100) NOT NULL COMMENT '发货人ID',
  `order_number` varchar(100) NOT NULL COMMENT '订单号',
  `order_big` int(11) NOT NULL COMMENT '大规格数量',
  `order_small` int(11) NOT NULL COMMENT '小规格数量',
  `order_toagentid` varchar(100) NOT NULL COMMENT '收货人ID',
  `order_mode` int(11) NOT NULL DEFAULT '1' COMMENT '1是代理发货，2是零售发货',
  `order_inspected` int(11) NOT NULL DEFAULT '0' COMMENT '0是没收货，1是发货中，2是一验收',
  `order_time` int(11) NOT NULL COMMENT '订单生成时间',
  `shou_time` int(11) NOT NULL COMMENT '收货时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='订单表' AUTO_INCREMENT=107 ;

--
-- 转存表中的数据 `tgs_order`
--

INSERT INTO `tgs_order` (`order_id`, `order_bid`, `order_gid`, `order_agentid`, `order_number`, `order_big`, `order_small`, `order_toagentid`, `order_mode`, `order_inspected`, `order_time`, `shou_time`) VALUES
(17, 1, 2, '7', 'DL43461457533', 10, 50, '9', 1, 2, 1480390631, 1480390631),
(20, 2, 4, '9', 'DL54461640150', 600, 400, '0', 1, 0, 1480390631, 0),
(30, 1, 13, '9', 'LS15146910444', 0, 1, '0', 0, 2, 1480390631, 0),
(31, 1, 1, '9', 'LS31196809227', 0, 1, '0', 0, 2, 1480390631, 0),
(32, 2, 2, '9', 'LS52289536597', 0, 1, '0', 0, 2, 1480390631, 0),
(33, 2, 3, '9', 'LS52542613296', 0, 5, '0', 0, 2, 1480390631, 0),
(34, 1, 2, '9', 'LS53147064708', 0, 5, '0', 0, 2, 1480390631, 0),
(35, 1, 2, '9', 'LS53204455628', 0, 5, '0', 0, 2, 1480390631, 0),
(36, 1, 2, '9', 'LS53267889992', 0, 6, '0', 0, 2, 1480390631, 0),
(41, 3, 6, '9', 'LS53595066283', 0, 6, '0', 0, 2, 1480390631, 0),
(42, 1, 1, '7', 'LS42452607809', 0, 7, '0', 0, 2, 1480390631, 0),
(43, 1, 1, '7', 'LS42477943954', 0, 7, '0', 0, 2, 1480390631, 0),
(44, 2, 4, '7', 'LS42543190721', 0, 100, '0', 0, 2, 1480390631, 0),
(45, 1, 2, '7', 'DL43461457533', 10, 50, '9', 1, 2, 1480390631, 1480390631),
(46, 1, 2, '7', 'DL43461457533', 10, 50, '9', 1, 2, 1480390631, 1480390631),
(47, 2, 4, '7', 'LS42543190721', 0, 100, '0', 0, 2, 1480390631, 0),
(48, 1, 2, '7', 'DL43461457533', 10, 50, '9', 1, 2, 1480390631, 1480390631),
(49, 2, 4, '7', 'LS42543190721', 0, 100, '0', 0, 2, 1480390631, 0),
(50, 1, 2, '7', 'DL43461457533', 10, 50, '9', 1, 2, 1480390631, 1480390631),
(51, 2, 4, '7', 'LS37114079723', 0, 20, '0', 0, 2, 1480390631, 0),
(52, 2, 4, '7', 'DL38477362566', 1, 20, '9', 1, 2, 1480390727, 1480390949),
(53, 2, 4, '7', 'DL41093286145', 1, 10, '9', 1, 2, 1480390869, 1480390949),
(54, 2, 4, '7', 'DL4716551458', 5, 2, '9', 1, 0, 1480391236, 1481090215),
(69, 2, 8, '7', 'DL28191702039', 0, 55, '9', 1, 0, 1480490899, 1481090217),
(70, 2, 8, '7', 'DL30062542261', 5, 0, '9', 1, 2, 1480491006, 1481090219),
(71, 2, 8, '7', 'DL33479475318', 5, 5, '9', 1, 2, 1480491227, 1481090220),
(72, 2, 8, '7', 'DL34204752266', 5, 5, '9', 1, 2, 1480491260, 1481090219),
(73, 1, 1, '7', 'LS28389806102', 0, 5, '0', 0, 2, 1480577318, 0),
(74, 2, 8, '7', 'DL44404136124', 0, 5, '9', 1, 2, 1480578280, 1481090220),
(75, 1, 1, '7', 'LS45072113309', 0, 5, '0', 0, 2, 1480578307, 0),
(76, 1, 1, '7', 'LS45162117882', 0, 5, '0', 0, 2, 1480578316, 0),
(77, 2, 8, '7', 'DL20477976880', 0, 5, '9', 1, 2, 1480735247, 1481090221),
(78, 3, 5, '7', 'DL22204505626', 0, 5, '9', 1, 2, 1480735340, 1481090221),
(79, 1, 1, '7', 'LS22282279463', 0, 99, '0', 0, 2, 1481268148, 0),
(80, 1, 1, '7', 'DL22566381798', 10, 20, '9', 1, 0, 1481268176, 1481334519),
(81, 4, 1, '62', 'DL09116467162', 5, 0, '71', 1, 2, 1481598551, 1481598573),
(82, 4, 2, '62', 'DL09224084600', 5, 0, '71', 1, 2, 1481598562, 1481598573),
(83, 4, 1, '71', 'LS09504830923', 0, 1, '0', 0, 2, 1481598590, 0),
(84, 4, 2, '71', 'LS10118255227', 0, 1, '0', 0, 2, 1481598611, 0),
(85, 4, 1, '71', 'LS10596418078', 0, 1, '0', 0, 2, 1481598659, 0),
(86, 4, 2, '71', 'LS11177480551', 0, 1, '0', 0, 2, 1481598677, 0),
(87, 1, 13, '7', 'DL15554180025', 0, 16, '9', 1, 1, 1481598955, 0),
(88, 1, 13, '7', 'DL16091150224', 0, 1, '9', 1, 1, 1481598969, 0),
(89, 1, 13, '7', 'LS16157177815', 0, 1, '0', 0, 2, 1481598975, 0),
(90, 3, 5, '7', 'LS4011659992', 0, 15, '0', 0, 2, 1481600411, 0),
(91, 1, 13, '7', 'LS44225036406', 0, 18, '0', 0, 2, 1481600662, 0),
(92, 4, 1, '62', 'DL49464157464', 2, 2, '72', 1, 2, 1481611786, 1481611955),
(93, 4, 1, '62', 'DL50005672365', 2, 2, '73', 1, 2, 1481611800, 1481612308),
(94, 4, 1, '72', 'DL53014166306', 1, 0, '74', 1, 2, 1481611981, 1484532644),
(95, 1, 13, '7', 'DL54248267117', 2, 2, '9', 1, 1, 1482911664, 0),
(96, 4, 1, '62', 'DL19191422778', 10, 0, '73', 1, 2, 1483078759, 1483078794),
(97, 4, 2, '62', 'DL1937802062', 10, 1, '73', 1, 2, 1483078777, 1483078793),
(98, 4, 1, '73', 'DL21299293920', 0, 1, '78', 1, 1, 1483078889, 0),
(99, 1, 14, '9', 'LS42078829907', 0, 66, '0', 0, 2, 1486532527, 0),
(100, 1, 14, '9', 'DL42274364776', 2, 6, '76', 1, 1, 1486742400, 1486742400),
(101, 1, 14, '9', 'DL42436674779', 1, 10, '76', 1, 1, 1486742400, 1486742400),
(102, 1, 14, '9', 'DL43101770940', 5, 10, '76', 1, 1, 1486532590, 0),
(103, 1, 14, '9', 'LS45193657172', 0, 10, '0', 0, 2, 1486532719, 0),
(104, 1, 14, '9', 'LS45339015878', 0, 5, '0', 0, 2, 1486532733, 0),
(105, 1, 14, '9', 'LS45405588831', 0, 6, '0', 0, 2, 1486532740, 0),
(106, 1, 14, '9', 'LS45458211325', 0, 12, '0', 0, 2, 1486532745, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tgs_phonecode`
--

CREATE TABLE IF NOT EXISTS `tgs_phonecode` (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '短信验证ID',
  `phone` varchar(30) NOT NULL COMMENT '验证的手机号码',
  `time` int(11) NOT NULL COMMENT '重设密码时间',
  `code` int(4) NOT NULL COMMENT '随机验证码',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

--
-- 转存表中的数据 `tgs_phonecode`
--

INSERT INTO `tgs_phonecode` (`pid`, `phone`, `time`, `code`) VALUES
(98, '15360806016', 1480930923, 9591);

-- --------------------------------------------------------

--
-- 表的结构 `tgs_plug`
--

CREATE TABLE IF NOT EXISTS `tgs_plug` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '插件点击记录的ID',
  `uid` int(11) NOT NULL COMMENT '点击插件的用户ID',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '默认为0',
  `ptime` int(11) NOT NULL COMMENT '点击时间',
  `pluglist` int(11) NOT NULL COMMENT '已安装模块',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应用插件模块第一次点击的记录' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tgs_product`
--

CREATE TABLE IF NOT EXISTS `tgs_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `proname` varchar(50) DEFAULT NULL,
  `jibie` varchar(50) DEFAULT NULL,
  `prpic` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tgs_prompt`
--

CREATE TABLE IF NOT EXISTS `tgs_prompt` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '奖品数据表ID',
  `wxuid` int(11) NOT NULL COMMENT '微信用户ID',
  `phone` varchar(20) NOT NULL COMMENT '中奖人联系电话',
  `name` varchar(100) NOT NULL COMMENT '中奖姓名',
  `prompt` varchar(100) NOT NULL COMMENT '奖品名称',
  `number` int(11) NOT NULL COMMENT '奖品数量',
  `time` int(11) NOT NULL COMMENT '中奖时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='中奖名单' AUTO_INCREMENT=44 ;

--
-- 转存表中的数据 `tgs_prompt`
--

INSERT INTO `tgs_prompt` (`id`, `wxuid`, `phone`, `name`, `prompt`, `number`, `time`) VALUES
(43, 318, '15360806816', '陶志锋', '漱口水一瓶', 2, 1482991349);

-- --------------------------------------------------------

--
-- 表的结构 `tgs_ranking`
--

CREATE TABLE IF NOT EXISTS `tgs_ranking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '申请的ID号',
  `appid` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT 'APP类型的ID',
  `uid` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `share` int(5) DEFAULT NULL COMMENT '分享次数',
  `fen` int(10) DEFAULT NULL,
  `time` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `more` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '游戏次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=346 ;

--
-- 转存表中的数据 `tgs_ranking`
--

INSERT INTO `tgs_ranking` (`id`, `orderid`, `appid`, `uid`, `share`, `fen`, `time`, `more`) VALUES
(33, '1', '1', '33', 0, 1495, '1481962964', '1'),
(48, '1', '1', '23', 0, 1335, '1482025572', '1'),
(35, '1', '1', '35', 0, 5618, '1481962984', '1'),
(37, '1', '1', '36', 0, 279, '1481963063', '1'),
(38, '1', '1', '34', 1, 6894, '1481963107', '1'),
(39, '1', '1', '37', 0, 2070, '1481963120', '1'),
(40, '1', '1', '38', 0, 8604, '1481963192', '1'),
(41, '1', '1', '39', 0, 26889, '1481963266', '1'),
(42, '1', '1', '40', 0, 5387, '1481969311', '1'),
(43, '1', '1', '41', 0, 16052, '1481974597', '1'),
(44, '1', '1', '42', 0, 3390, '1481977615', '1'),
(95, '1', '1', '58', 0, 402, '1482288918', '1'),
(96, '1', '1', '54', 0, 5392, '1482288927', '1'),
(97, '1', '1', '23', 0, 1335, '1482289257', '1'),
(49, '1', '1', '43', 0, 7222, '1482046529', '1'),
(98, '1', '1', '23', 0, 1335, '1482289326', '1'),
(99, '1', '1', '59', 0, 5055, '1482289448', '1'),
(100, '1', '1', '60', 0, 153, '1482289532', '1'),
(101, '1', '1', '61', 4, 6961, '1482289603', '1'),
(102, '1', '1', '62', 0, 2189, '1482290527', '1'),
(103, '1', '1', '63', 0, 1403, '1482291280', '1'),
(104, '1', '1', '64', 0, 164, '1482291830', '1'),
(105, '1', '1', '67', 0, 950, '1482292184', '1'),
(106, '1', '1', '68', 0, 451, '1482292186', '1'),
(107, '1', '1', '66', 1, 9388, '1482292216', '1'),
(108, '1', '1', '69', 0, 101, '1482292216', '1'),
(109, '1', '1', '71', 0, 1429, '1482292290', '1'),
(110, '1', '1', '72', 0, 5382, '1482292296', '1'),
(111, '1', '1', '73', 1, 12128, '1482292356', '1'),
(112, '1', '1', '75', 0, 4711, '1482292446', '1'),
(113, '1', '1', '74', 0, 4583, '1482292448', '1'),
(114, '1', '1', '76', 0, 805, '1482292465', '1'),
(115, '1', '1', '78', 0, 1028, '1482292480', '1'),
(116, '1', '1', '79', 4, 2437, '1482292494', '1'),
(117, '1', '1', '77', 0, 63, '1482292498', '1'),
(118, '1', '1', '81', 0, 4498, '1482292509', '1'),
(119, '1', '1', '82', 0, 153, '1482292513', '1'),
(120, '1', '1', '80', 0, 128, '1482292520', '1'),
(121, '1', '1', '83', 0, 228, '1482292531', '1'),
(122, '1', '1', '85', 0, 532, '1482292575', '1'),
(83, '1', '1', '44', 0, 8379, '1482148847', '1'),
(84, '1', '1', '45', 0, 85, '1482160665', '1'),
(85, '1', '1', '46', 0, 5890, '1482196183', '1'),
(86, '1', '1', '48', 0, 725, '1482229537', '1'),
(87, '1', '1', '49', 0, 280, '1482287154', '1'),
(88, '1', '1', '50', 0, 5702, '1482287173', '1'),
(89, '1', '1', '51', 0, 293, '1482287239', '1'),
(90, '1', '1', '52', 0, 330, '1482287285', '1'),
(91, '1', '1', '53', 0, 8688, '1482287500', '1'),
(92, '1', '1', '55', 0, 856, '1482287924', '1'),
(93, '1', '1', '56', 0, 3710, '1482288432', '1'),
(94, '1', '1', '57', 0, 1384, '1482288632', '1'),
(123, '1', '1', '87', 0, 179, '1482292595', '1'),
(124, '1', '1', '88', 0, 1323, '1482292598', '1'),
(125, '1', '1', '84', 0, 3813, '1482292623', '1'),
(126, '1', '1', '89', 0, 7326, '1482292636', '1'),
(127, '1', '1', '92', 2, 7143, '1482292652', '1'),
(128, '1', '1', '91', 0, 363, '1482292662', '1'),
(129, '1', '1', '90', 0, 373, '1482292667', '1'),
(130, '1', '1', '86', 0, 488, '1482292674', '1'),
(131, '1', '1', '93', 0, 407, '1482292701', '1'),
(132, '1', '1', '96', 0, 7354, '1482292759', '1'),
(133, '1', '1', '97', 0, 1088, '1482292781', '1'),
(134, '1', '1', '98', 0, 9917, '1482292810', '1'),
(135, '1', '1', '94', 0, 1964, '1482292846', '1'),
(136, '1', '1', '99', 0, 127, '1482292847', '1'),
(137, '1', '1', '101', 0, 183, '1482292885', '1'),
(138, '1', '1', '103', 0, 3611, '1482292909', '1'),
(139, '1', '1', '106', 0, 1128, '1482292925', '1'),
(140, '1', '1', '105', 2, 11531, '1482292933', '1'),
(141, '1', '1', '102', 0, 120, '1482292934', '1'),
(142, '1', '1', '104', 2, 441, '1482292940', '1'),
(143, '1', '1', '108', 0, 1647, '1482292942', '1'),
(144, '1', '1', '110', 0, 63, '1482292957', '1'),
(145, '1', '1', '113', 0, 608, '1482292966', '1'),
(146, '1', '1', '116', 0, 77, '1482292983', '1'),
(147, '1', '1', '115', 0, 2652, '1482292988', '1'),
(148, '1', '1', '109', 0, 84, '1482292988', '1'),
(149, '1', '1', '114', 0, 2561, '1482292999', '1'),
(150, '1', '1', '117', 0, 737, '1482293021', '1'),
(151, '1', '1', '118', 0, 1049, '1482293064', '1'),
(152, '1', '1', '119', 0, 172, '1482293070', '1'),
(153, '1', '1', '122', 0, 2114, '1482293126', '1'),
(154, '1', '1', '125', 0, 159, '1482293147', '1'),
(155, '1', '1', '127', 0, 4094, '1482293177', '1'),
(156, '1', '1', '120', 4, 105, '1482293179', '1'),
(157, '1', '1', '128', 0, 129, '1482293185', '1'),
(158, '1', '1', '129', 0, 1620, '1482293221', '1'),
(159, '1', '1', '130', 0, 615, '1482293244', '1'),
(160, '1', '1', '133', 0, 6438, '1482293340', '1'),
(161, '1', '1', '132', 0, 5944, '1482293342', '1'),
(162, '1', '1', '134', 0, 338, '1482293365', '1'),
(163, '1', '1', '95', 0, 557, '1482293370', '1'),
(164, '1', '1', '135', 0, 6342, '1482293421', '1'),
(165, '1', '1', '136', 0, 919, '1482293425', '1'),
(166, '1', '1', '137', 0, 8140, '1482293471', '1'),
(167, '1', '1', '126', 0, 7395, '1482293472', '1'),
(168, '1', '1', '138', 0, 118, '1482293535', '1'),
(169, '1', '1', '140', 3, 342, '1482293612', '1'),
(170, '1', '1', '0', 0, 177, '1482293634', '1'),
(171, '1', '1', '141', 0, 140, '1482293635', '1'),
(172, '1', '1', '142', 0, 376, '1482293652', '1'),
(173, '1', '1', '0', 0, 177, '1482293654', '1'),
(174, '1', '1', '0', 0, 177, '1482293667', '1'),
(175, '1', '1', '0', 0, 177, '1482293689', '1'),
(176, '1', '1', '0', 0, 177, '1482293702', '1'),
(177, '1', '1', '143', 0, 140, '1482293740', '1'),
(178, '1', '1', '111', 0, 21883, '1482293806', '1'),
(179, '1', '1', '144', 0, 5741, '1482293864', '1'),
(180, '1', '1', '145', 0, 6652, '1482293881', '1'),
(181, '1', '1', '148', 5, 2753, '1482293975', '1'),
(182, '1', '1', '149', 3, 5557, '1482294028', '1'),
(183, '1', '1', '147', 0, 7798, '1482294045', '1'),
(184, '1', '1', '152', 0, 4948, '1482294151', '1'),
(185, '1', '1', '150', 0, 4479, '1482294153', '1'),
(186, '1', '1', '151', 0, 118, '1482294159', '1'),
(187, '1', '1', '153', 0, 11, '1482294167', '1'),
(188, '1', '1', '154', 0, 3412, '1482294247', '1'),
(189, '1', '1', '155', 0, 495, '1482294251', '1'),
(190, '1', '1', '157', 0, 382, '1482294305', '1'),
(191, '1', '1', '156', 0, 839, '1482294385', '1'),
(192, '1', '1', '158', 0, 2473, '1482294474', '1'),
(193, '1', '1', '107', 0, 84, '1482294502', '1'),
(194, '1', '1', '159', 0, 1413, '1482294509', '1'),
(195, '1', '1', '160', 0, 638, '1482294546', '1'),
(196, '1', '1', '161', 0, 8397, '1482294555', '1'),
(197, '1', '1', '163', 0, 1684, '1482294678', '1'),
(198, '1', '1', '164', 0, 152, '1482294688', '1'),
(199, '1', '1', '168', 0, 5529, '1482294974', '1'),
(200, '1', '1', '169', 0, 0, '1482294976', '1'),
(201, '1', '1', '170', 0, 1431, '1482295035', '1'),
(202, '1', '1', '171', 0, 421, '1482295112', '1'),
(203, '1', '1', '172', 0, 1084, '1482295125', '1'),
(204, '1', '1', '174', 0, 5206, '1482295174', '1'),
(205, '1', '1', '175', 0, 555, '1482295284', '1'),
(206, '1', '1', '176', 0, 321, '1482295344', '1'),
(207, '1', '1', '179', 0, 179, '1482295570', '1'),
(208, '1', '1', '180', 0, 4314, '1482295586', '1'),
(209, '1', '1', '173', 0, 268, '1482295652', '1'),
(210, '1', '1', '181', 0, 0, '1482295664', '1'),
(211, '1', '1', '146', 0, 2577, '1482295715', '1'),
(212, '1', '1', '182', 0, 5372, '1482295779', '1'),
(213, '1', '1', '183', 0, 6305, '1482295890', '1'),
(214, '1', '1', '184', 0, 1275, '1482296220', '1'),
(215, '1', '1', '186', 0, 154, '1482296252', '1'),
(216, '1', '1', '188', 0, 140, '1482296306', '1'),
(217, '1', '1', '190', 0, 1840, '1482296793', '1'),
(218, '1', '1', '191', 0, 1423, '1482296953', '1'),
(219, '1', '1', '193', 0, 2386, '1482297152', '1'),
(220, '1', '1', '194', 0, 2112, '1482297210', '1'),
(221, '1', '1', '195', 0, 4430, '1482297378', '1'),
(222, '1', '1', '196', 0, 329, '1482297529', '1'),
(223, '1', '1', '197', 0, 0, '1482297590', '1'),
(224, '1', '1', '198', 0, 7589, '1482297703', '1'),
(225, '1', '1', '199', 0, 540, '1482297877', '1'),
(226, '1', '1', '200', 0, 2662, '1482298237', '1'),
(227, '1', '1', '178', 0, 1869, '1482298282', '1'),
(228, '1', '1', '203', 0, 179, '1482298523', '1'),
(229, '1', '1', '204', 0, 7157, '1482298569', '1'),
(230, '1', '1', '205', 0, 6258, '1482298798', '1'),
(231, '1', '1', '208', 0, 6142, '1482299145', '1'),
(232, '1', '1', '209', 0, 153, '1482299173', '1'),
(233, '1', '1', '201', 0, 1341, '1482299217', '1'),
(234, '1', '1', '211', 0, 6251, '1482299295', '1'),
(235, '1', '1', '212', 0, 1222, '1482299300', '1'),
(236, '1', '1', '214', 0, 5875, '1482299346', '1'),
(237, '1', '1', '215', 0, 6179, '1482299378', '1'),
(238, '1', '1', '216', 0, 6144, '1482299437', '1'),
(239, '1', '1', '218', 0, 4614, '1482299640', '1'),
(240, '1', '1', '219', 0, 259, '1482299803', '1'),
(241, '1', '1', '221', 0, 281, '1482299897', '1'),
(242, '1', '1', '220', 0, 2043, '1482299906', '1'),
(243, '1', '1', '222', 0, 1174, '1482300092', '1'),
(244, '1', '1', '223', 0, 1670, '1482300211', '1'),
(245, '1', '1', '225', 0, 1721, '1482300440', '1'),
(246, '1', '1', '226', 0, 1079, '1482300488', '1'),
(247, '1', '1', '227', 0, 169, '1482301335', '1'),
(248, '1', '1', '228', 0, 5108, '1482301451', '1'),
(249, '1', '1', '229', 0, 3518, '1482301708', '1'),
(250, '1', '1', '231', 0, 13258, '1482301819', '1'),
(251, '1', '1', '232', 0, 394, '1482301905', '1'),
(252, '1', '1', '233', 0, 5400, '1482302176', '1'),
(253, '1', '1', '234', 0, 6210, '1482302458', '1'),
(254, '1', '1', '235', 0, 5187, '1482302532', '1'),
(255, '1', '1', '237', 0, 3363, '1482303657', '1'),
(256, '1', '1', '238', 0, 4995, '1482304027', '1'),
(257, '1', '1', '239', 0, 157, '1482305653', '1'),
(258, '1', '1', '240', 0, 63, '1482306020', '1'),
(259, '1', '1', '241', 0, 4945, '1482306337', '1'),
(260, '1', '1', '242', 0, 1638, '1482306438', '1'),
(261, '1', '1', '245', 0, 1543, '1482307072', '1'),
(262, '1', '1', '246', 0, 85, '1482307670', '1'),
(263, '1', '1', '247', 0, 652, '1482308145', '1'),
(264, '1', '1', '248', 0, 11262, '1482308452', '1'),
(265, '1', '1', '249', 0, 6464, '1482309325', '1'),
(266, '1', '1', '250', 0, 205, '1482310234', '1'),
(267, '1', '1', '252', 0, 1594, '1482311686', '1'),
(268, '1', '1', '253', 0, 0, '1482312651', '1'),
(269, '1', '1', '254', 0, 3958, '1482312752', '1'),
(270, '1', '1', '255', 0, 2876, '1482315582', '1'),
(271, '1', '1', '256', 0, 519, '1482317330', '1'),
(272, '1', '1', '257', 0, 356, '1482319673', '1'),
(273, '1', '1', '258', 0, 1556, '1482321451', '1'),
(274, '1', '1', '259', 0, 8428, '1482321537', '1'),
(275, '1', '1', '261', 0, 84, '1482324441', '1'),
(276, '1', '1', '263', 0, 1771, '1482340475', '1'),
(277, '1', '1', '264', 0, 97, '1482371451', '1'),
(278, '1', '1', '265', 0, 179, '1482374109', '1'),
(279, '1', '1', '266', 0, 1469, '1482374606', '1'),
(280, '1', '1', '267', 0, 53, '1482375113', '1'),
(281, '1', '1', '268', 0, 301, '1482380030', '1'),
(282, '1', '1', '269', 0, 73, '1482382341', '1'),
(283, '1', '1', '270', 0, 0, '1482382415', '1'),
(284, '1', '1', '272', 0, 3542, '1482384989', '1'),
(285, '1', '1', '273', 0, 473, '1482387134', '1'),
(286, '1', '1', '124', 0, 636, '1482406818', '1'),
(287, '1', '1', '275', 0, 193, '1482410960', '1'),
(288, '1', '1', '206', 0, 329, '1482410984', '1'),
(289, '1', '1', '276', 0, 594, '1482411880', '1'),
(290, '1', '1', '274', 0, 106, '1482415834', '1'),
(291, '1', '1', '277', 0, 828, '1482417026', '1'),
(292, '1', '1', '278', 0, 515, '1482418629', '1'),
(293, '1', '1', '281', 0, 122, '1482418752', '1'),
(294, '1', '1', '282', 1, 4397, '1482418876', '1'),
(295, '1', '1', '283', 0, 404, '1482418936', '1'),
(296, '1', '1', '284', 2, 369, '1482419160', '1'),
(297, '1', '1', '286', 0, 232, '1482419221', '1'),
(298, '1', '1', '288', 0, 231, '1482420711', '1'),
(299, '1', '1', '289', 0, 137, '1482421048', '1'),
(300, '1', '1', '290', 0, 225, '1482421705', '1'),
(301, '1', '1', '291', 0, 96, '1482422650', '1'),
(302, '1', '1', '292', 0, 1694, '1482432226', '1'),
(303, '1', '1', '293', 0, 572, '1482448814', '1'),
(304, '1', '1', '294', 0, 33, '1482450449', '1'),
(305, '1', '1', '295', 0, 374, '1482453016', '1'),
(306, '1', '1', '296', 0, 2982, '1482457257', '1'),
(307, '1', '1', '297', 0, 75, '1482467887', '1'),
(308, '1', '1', '298', 0, 6008, '1482469799', '1'),
(309, '1', '1', '299', 0, 2385, '1482478435', '1'),
(310, '1', '1', '300', 6, 1690, '1482491376', '1'),
(311, '1', '1', '', 0, 77, '1482544785', '1'),
(312, '1', '1', '', 0, 77, '1482544836', '1'),
(313, '1', '1', '', 0, 77, '1482544857', '1'),
(314, '1', '1', '', 0, 77, '1482545016', '1'),
(315, '1', '1', '', 0, 77, '1482546290', '1'),
(316, '1', '1', '', 0, 77, '1482546325', '1'),
(317, '1', '1', '', 0, 77, '1482546334', '1'),
(318, '1', '1', '', 0, 77, '1482546865', '1'),
(319, '1', '1', '', 0, 77, '1482547378', '1'),
(320, '1', '1', '', 0, 77, '1482547402', '1'),
(321, '1', '1', '', 0, 77, '1482547851', '1'),
(322, '1', '1', '', 0, 77, '1482547961', '1'),
(323, '1', '1', '', 0, 77, '1482548018', '1'),
(324, '1', '1', '', 0, 77, '1482548102', '1'),
(325, '1', '1', '', 0, 77, '1482548139', '1'),
(326, '1', '1', '302', 0, 773, '1482552100', '1'),
(327, '1', '1', '303', 0, 117, '1482553144', '1'),
(328, '1', '1', '304', 0, 321, '1482556951', '1'),
(329, '1', '1', '305', 1, 50, '1482557640', '1'),
(330, '1', '1', '306', 0, 1700, '1482557841', '1'),
(331, '1', '1', '307', 0, 308, '1482558752', '1'),
(332, '1', '1', '308', 0, 106, '1482561339', '1'),
(333, '1', '1', '310', 0, 117, '1482568065', '1'),
(334, '1', '1', '311', 0, 1050, '1482647759', '1'),
(335, '1', '1', '312', 0, 108, '1482662446', '1'),
(336, '1', '1', '', 0, 77, '1482724943', '1'),
(337, '1', '1', '', 0, 77, '1482731659', '1'),
(338, '1', '1', '', 0, 77, '1482731898', '1'),
(339, '1', '1', '313', 0, 65, '1482763280', '1'),
(340, '1', '1', '314', 0, 3175, '1482781360', '1'),
(341, '1', '1', '315', 0, 683, '1482930220', '1'),
(342, '1', '1', '316', 0, 6495, '1482931404', '1'),
(343, '1', '1', '15', 0, 66, '1483062614', '1'),
(344, '1', '1', '318', 0, 108, '1483072230', '1'),
(345, '1', '1', '319', 0, 153, '1483072590', '1');

-- --------------------------------------------------------

--
-- 表的结构 `tgs_read`
--

CREATE TABLE IF NOT EXISTS `tgs_read` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '阅读表ID',
  `gid` int(11) NOT NULL COMMENT '公告id',
  `user_id` int(11) NOT NULL COMMENT '阅读者id',
  `read_time` varchar(100) NOT NULL COMMENT '阅读时间',
  `read_name` varchar(100) NOT NULL COMMENT '阅读人名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告阅读表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tgs_sksapp`
--

CREATE TABLE IF NOT EXISTS `tgs_sksapp` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '基础配置ID',
  `appid` int(11) NOT NULL COMMENT 'APP应用id',
  `cuid` int(11) NOT NULL COMMENT '用户ID',
  `install_id` int(11) NOT NULL COMMENT '安装id',
  `name` varchar(100) NOT NULL COMMENT '活动名',
  `starttime` int(11) NOT NULL COMMENT '活动开始时间',
  `endtime` int(11) NOT NULL COMMENT '活动结束时间',
  `code` varchar(100) NOT NULL COMMENT '用户二维码url',
  `randomname` varchar(100) NOT NULL COMMENT '随机奖名称',
  `odds` int(11) NOT NULL COMMENT '随机几率',
  `ranking` text NOT NULL COMMENT '排名和奖品',
  `time` int(11) NOT NULL COMMENT '添加活动时间',
  `number` int(11) NOT NULL COMMENT '活动状态表，1代表进行中，2表示已结束',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投票APP信息表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tgs_store`
--

CREATE TABLE IF NOT EXISTS `tgs_store` (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '库存ID',
  `goods_id` int(11) NOT NULL COMMENT '商品的ID',
  `agent_id` varchar(100) NOT NULL COMMENT '代理商的ID',
  `big` int(11) NOT NULL COMMENT '大规格数量',
  `small` int(11) NOT NULL COMMENT '小规格数量',
  `store_time` varchar(110) NOT NULL COMMENT '仓库添加时间表',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='仓库表' AUTO_INCREMENT=184 ;

--
-- 转存表中的数据 `tgs_store`
--

INSERT INTO `tgs_store` (`sid`, `goods_id`, `agent_id`, `big`, `small`, `store_time`) VALUES
(1, 13, '7', 531, 988, '1480578316'),
(2, 14, '7', 100, 1789, '2016'),
(3, 3, '7', 395, 650, '1480385989'),
(4, 4, '7', 299, 75, '1480391321'),
(5, 5, '7', 418, 30, '444'),
(6, 6, '7', 15, 1200, '444'),
(16, 13, '9', 0, 0, '2016'),
(17, 14, '9', 32, 33, '2016'),
(18, 3, '9', 600, 395, '2016'),
(19, 4, '9', 2, 30, '2016'),
(20, 5, '9', 600, 405, '2016'),
(21, 6, '9', 600, 394, '2016'),
(22, 8, '9', 609, 540, '2016'),
(67, 8, '7', 18, 235, '2016-12-01 15:46:41'),
(68, 9, '7', 50, 180, '444'),
(69, 10, '7', 50, 180, '444'),
(70, 11, '7', 50, 180, '444'),
(71, 12, '7', 50, 180, '444'),
(72, 9, '9', 594, 520, '2016'),
(73, 10, '9', 594, 520, '2016'),
(74, 11, '9', 594, 520, '2016'),
(75, 12, '9', 594, 520, '2016'),
(76, 1, '62', 9981, 9996, '2016-12-09 17:37:11'),
(77, 2, '62', 9975, 10200, '2016-12-09 17:37:24'),
(92, 13, '70', 0, 0, '2016-12-09 18:46:19'),
(93, 14, '70', 0, 0, '2016-12-09 18:46:19'),
(94, 1, '71', 3, 58, '2016-12-13 11:07:24'),
(95, 2, '71', 3, 58, '2016-12-13 11:07:24'),
(96, 1, '72', 1, 2, '2016-12-13 14:46:47'),
(97, 2, '72', 0, 0, '2016-12-13 14:46:47'),
(98, 1, '73', 11, 31, '2016-12-13 14:48:49'),
(99, 2, '73', 10, 0, '2016-12-13 14:48:49'),
(100, 1, '74', 1, 0, '2016-12-13 14:49:30'),
(101, 2, '74', 0, 0, '2016-12-13 14:49:30'),
(102, 1, '75', 0, 0, '2016-12-13 16:36:56'),
(103, 2, '75', 0, 0, '2016-12-13 16:36:56'),
(104, 13, '', 0, 0, '2016-12-30 13:52:27'),
(105, 14, '', 0, 0, '2016-12-30 13:52:27'),
(106, 13, '', 0, 0, '2016-12-30 13:53:28'),
(107, 14, '', 0, 0, '2016-12-30 13:53:28'),
(108, 13, '', 0, 0, '2016-12-30 13:54:00'),
(109, 14, '', 0, 0, '2016-12-30 13:54:00'),
(110, 13, '', 0, 0, '2016-12-30 13:54:14'),
(111, 14, '', 0, 0, '2016-12-30 13:54:14'),
(112, 13, '', 0, 0, '2016-12-30 13:55:11'),
(113, 14, '', 0, 0, '2016-12-30 13:55:11'),
(114, 13, '', 0, 0, '2016-12-30 13:59:55'),
(115, 14, '', 0, 0, '2016-12-30 13:59:55'),
(116, 13, '', 0, 0, '2016-12-30 14:00:07'),
(117, 14, '', 0, 0, '2016-12-30 14:00:07'),
(118, 13, '', 0, 0, '2016-12-30 14:00:08'),
(119, 14, '', 0, 0, '2016-12-30 14:00:08'),
(120, 13, '', 0, 0, '2016-12-30 14:00:23'),
(121, 14, '', 0, 0, '2016-12-30 14:00:23'),
(122, 13, '', 0, 0, '2016-12-30 14:00:38'),
(123, 14, '', 0, 0, '2016-12-30 14:00:38'),
(124, 13, '', 0, 0, '2016-12-30 14:00:49'),
(125, 14, '', 0, 0, '2016-12-30 14:00:49'),
(126, 13, '', 0, 0, '2016-12-30 14:00:59'),
(127, 14, '', 0, 0, '2016-12-30 14:00:59'),
(128, 13, '', 0, 0, '2016-12-30 14:01:10'),
(129, 14, '', 0, 0, '2016-12-30 14:01:10'),
(130, 13, '', 0, 0, '2016-12-30 14:01:11'),
(131, 14, '', 0, 0, '2016-12-30 14:01:11'),
(132, 13, '', 0, 0, '2016-12-30 14:01:23'),
(133, 14, '', 0, 0, '2016-12-30 14:01:23'),
(134, 13, '', 0, 0, '2016-12-30 14:01:23'),
(135, 14, '', 0, 0, '2016-12-30 14:01:23'),
(136, 13, '', 0, 0, '2016-12-30 14:01:24'),
(137, 14, '', 0, 0, '2016-12-30 14:01:24'),
(138, 13, '', 0, 0, '2016-12-30 14:01:32'),
(139, 14, '', 0, 0, '2016-12-30 14:01:32'),
(140, 13, '', 0, 0, '2016-12-30 14:01:45'),
(141, 14, '', 0, 0, '2016-12-30 14:01:45'),
(142, 13, '', 0, 0, '2016-12-30 14:02:03'),
(143, 14, '', 0, 0, '2016-12-30 14:02:03'),
(144, 13, '', 0, 0, '2016-12-30 14:02:10'),
(145, 14, '', 0, 0, '2016-12-30 14:02:10'),
(146, 13, '', 0, 0, '2016-12-30 14:02:11'),
(147, 14, '', 0, 0, '2016-12-30 14:02:11'),
(148, 13, '', 0, 0, '2016-12-30 14:02:12'),
(149, 14, '', 0, 0, '2016-12-30 14:02:12'),
(150, 13, '', 0, 0, '2016-12-30 14:02:12'),
(151, 14, '', 0, 0, '2016-12-30 14:02:12'),
(152, 13, '', 0, 0, '2016-12-30 14:02:13'),
(153, 14, '', 0, 0, '2016-12-30 14:02:13'),
(154, 13, '', 0, 0, '2016-12-30 14:02:13'),
(155, 14, '', 0, 0, '2016-12-30 14:02:13'),
(156, 13, '', 0, 0, '2016-12-30 14:02:13'),
(157, 14, '', 0, 0, '2016-12-30 14:02:13'),
(158, 13, '', 0, 0, '2016-12-30 14:02:14'),
(159, 14, '', 0, 0, '2016-12-30 14:02:14'),
(160, 13, '', 0, 0, '2016-12-30 14:02:14'),
(161, 14, '', 0, 0, '2016-12-30 14:02:14'),
(162, 13, '', 0, 0, '2016-12-30 14:02:36'),
(163, 14, '', 0, 0, '2016-12-30 14:02:36'),
(164, 13, '', 0, 0, '2016-12-30 14:02:40'),
(165, 14, '', 0, 0, '2016-12-30 14:02:40'),
(166, 13, '', 0, 0, '2016-12-30 14:02:57'),
(167, 14, '', 0, 0, '2016-12-30 14:02:57'),
(168, 13, '', 0, 0, '2016-12-30 14:03:10'),
(169, 14, '', 0, 0, '2016-12-30 14:03:10'),
(170, 13, '', 0, 0, '2016-12-30 14:03:43'),
(171, 14, '', 0, 0, '2016-12-30 14:03:43'),
(172, 13, '76', 0, 0, '2016-12-30 14:12:09'),
(173, 14, '76', 0, 0, '2016-12-30 14:12:09'),
(174, 13, '77', 0, 0, '2016-12-30 14:12:32'),
(175, 14, '77', 0, 0, '2016-12-30 14:12:32'),
(176, 1, '78', 0, 0, '2016-12-30 14:15:21'),
(177, 2, '78', 0, 0, '2016-12-30 14:15:21'),
(178, 1, '79', 0, 0, '2017-01-04 10:43:29'),
(179, 2, '79', 0, 0, '2017-01-04 10:43:29'),
(180, 1, '80', 0, 0, '2017-01-16 10:09:56'),
(181, 2, '80', 0, 0, '2017-01-16 10:09:56'),
(182, 1, '81', 0, 0, '2017-01-16 10:11:20'),
(183, 2, '81', 0, 0, '2017-01-16 10:11:20');

-- --------------------------------------------------------

--
-- 表的结构 `tgs_submit`
--

CREATE TABLE IF NOT EXISTS `tgs_submit` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '提交申请id',
  `ins_id` int(11) NOT NULL COMMENT '安装app应用的id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `tel` varchar(12) NOT NULL COMMENT '电话',
  `content` text NOT NULL COMMENT '审核未通过的原因',
  `url` varchar(100) NOT NULL COMMENT 'app应用的url',
  `adminurl` varchar(100) NOT NULL COMMENT 'app应用的后台url',
  `checked` int(11) NOT NULL DEFAULT '0' COMMENT '0，是未通过，1是审核中，2，审核通过',
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提交申请应用表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tgs_toupapp`
--

CREATE TABLE IF NOT EXISTS `tgs_toupapp` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '基础配置ID',
  `appid` int(11) NOT NULL COMMENT 'APP应用id',
  `cuid` int(11) NOT NULL COMMENT '用户ID',
  `install_id` int(11) NOT NULL COMMENT '安装id',
  `name` varchar(100) NOT NULL COMMENT '活动名',
  `starttime` int(11) NOT NULL COMMENT '活动开始时间',
  `endtime` int(11) NOT NULL COMMENT '活动结束时间',
  `code` varchar(100) NOT NULL COMMENT '用户二维码url',
  `randomname` varchar(100) NOT NULL COMMENT '随机奖名称',
  `odds` int(11) NOT NULL COMMENT '随机几率',
  `ranking` text NOT NULL COMMENT '排名和奖品',
  `time` int(11) NOT NULL COMMENT '添加活动时间',
  `number` int(11) NOT NULL COMMENT '活动状态表，1代表进行中，2表示已结束',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投票APP信息表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tgs_tuoli`
--

CREATE TABLE IF NOT EXISTS `tgs_tuoli` (
  `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT '脱离团队ID',
  `t_agentid` int(11) NOT NULL COMMENT '脱离团队的人的id',
  `t_name` varchar(100) NOT NULL COMMENT '脱离团队人名字',
  `t_weixin` varchar(100) NOT NULL COMMENT '脱离人的微信',
  `is_show` int(11) NOT NULL COMMENT '1，是脱离团队，2是不脱离',
  `addtime` varchar(100) NOT NULL COMMENT '脱离时间',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='脱离团队表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tgs_tuoli`
--

INSERT INTO `tgs_tuoli` (`tid`, `t_agentid`, `t_name`, `t_weixin`, `is_show`, `addtime`) VALUES
(1, 7, 'Boss', 'Boss', 1, '2017-02-13:09:29:27');

-- --------------------------------------------------------

--
-- 表的结构 `tgs_wx`
--

CREATE TABLE IF NOT EXISTS `tgs_wx` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `token` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `time` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tgs_wx`
--

INSERT INTO `tgs_wx` (`id`, `token`, `time`) VALUES
(1, 'FN3jGYRsfBnYHJFVtu8hxHHWom2XX6Wx2ezjfXNeOVzcyXkE08Tjol5l5fDDoOKSZ97tPyJa7-c58-g_-Lq95PJ0YOsze1el6PlY42SDRQ0', '1484055701');

-- --------------------------------------------------------

--
-- 表的结构 `tgs_wxuser`
--

CREATE TABLE IF NOT EXISTS `tgs_wxuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wxid` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `live` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=321 ;

--
-- 转存表中的数据 `tgs_wxuser`
--

INSERT INTO `tgs_wxuser` (`id`, `wxid`, `name`, `sex`, `live`, `pic`) VALUES
(33, 'oaCAixOvmrFSZCqq1rddoZrVPy24', 'A徐公子 13719067255', '1', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVp5lhBkaK1g0odthIVzP5tCvvRPD6FicCHibqiawE3iaelGwwjzWba54ru3221QOgK9UVfyCA4jXC6SINpFgChlC6B/0'),
(34, 'oaCAixNXJSH0SWOXgOagoyQNO8so', '♚sunnyday', '1', '吉安', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrE1zlWtibQGsUtxM6nCT8Hu2kuNQJGTGHaqiaRgV1AS6Q3Xb6yhEgN63rWO2u7ZImcdTPNWkhK48qmJOicBPfQwOMH/0'),
(35, 'oaCAixG4iAvvmNZBgGL95fAzZeM8', '陶志锋', '1', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrGeZpib4x0HEno6nac5Eybt97gIFCtzibHmZgwBdNsGmvtJcPibwWhwqvWM38jnQqdCREUTwaXaB8gwJj8zhXgWKe4/0'),
(36, 'oaCAixM239gJ-Aj4vrzDnGguV9bg', '柴柴', '2', '随州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvPRwsPnuY1ELic7XDQGtK0Bqu4OZx8wZyXFX2KFSr98HyabgqsG14JcYGWftloeOASRt5tGjast8ic/0'),
(37, 'oaCAixH7vQp_OV8fuxWWxmAE', '陈辉滨der', '1', '汕头', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM78Tex5CjAbCOJiaqMNGYas7Q16adzgwGTNaHHERSv6icEUoGNQ1Wu5IM4jgMFOfKVyHwibUh6TzVWaA/0'),
(38, 'oaCAixKHlF8a1kc4tOIq9rHPksJU', '二次元.', '2', '', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YPHUkoGQKjY0lZL1gOdde9ttYrG7TJhtTHia6Beicdut81BHYRJ4qEX5pDR5YumqPCAmU9wMOI4KxFbibBvd5h3nQ/0'),
(39, 'oaCAixIrvmyH5pHgJnWtvBxg9MCw', '阿明', '1', '惠州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUkibzEQzib2zyVuscb5RUPJWsskTHLtIIN2cX8eKJeJk92ZIma1N2lhE9g6PzJDpJCkC0plibgFeAOMJ/0'),
(40, 'oaCAixA-dUWUznk9_je2_RLbLUKA', 'winewinnie', '2', '广州', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHicXnc0RvmNyWwuP1Qq1dBXmbrepQC3KQibeibYxHOeETVCbQrPA3H7BKueuYgwHrLLWzVpAUiamgKkKG47yhT96WOy/0'),
(41, 'oaCAixNuiSDqk-xjoJLpLkwdNG-M', '不忘初心——', '2', '中山', 'http://wx.qlogo.cn/mmopen/9aczeqAwEqbMiaOvjYUzLoGydXucib0QSbXzpqjO0PBDszA1CEEdrR8UUN6Xq0Lq4saibkvKaWcW4DaD5txhXjhIstcrSicnCsNQ/0'),
(42, 'oaCAixEvAOEAuPFnULK4aprbq9rk', '【静能量】海恋', '2', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2swHw5jbq7a0VyLCyksGYkTRF5DafKIlCho3wodWoxz9DmGd15mt6A2GZvyQ8icfvsyKmlvtdiaBI1/0'),
(43, 'oaCAixLNkg5a0ilvHAoDyiPUZL6c', '丘梓毅-jerry', '1', '', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5ZtIoaV83fObrVia6VUqwX013M6y4AqaJ6FfujZ5ddaUFJYjpiae9BTLzkgicaYs7Gbqic8LnfVbAdlghEF6rtMbksO/0'),
(44, 'oaCAixPFn3hJp3dROdEIc34OS_do', '杨玲', '2', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KK5SNwNELHJUIt4DlHtSudViclP2Z6JBoTG2HqSITlFN6nqE2ECpeu8k1oiaBpCC60yTzpFmia6MNMV/0'),
(45, 'oaCAixMck1P4xP1uYXLuzWZLUMoo', '陈橙', '1', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvClgq6oicGWJRF7mmAf1L2tz4xx9vh2z4xpzNfuq0ANOrBmPdIxtiaOn0xB267spj3wPALgPfOcEoL/0'),
(46, 'oaCAixJ2APaLviSHxI2bCQE0PdSM', 'Justin ✨', '1', '清远', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvDNXaYbfr1vUoaH68z115YdBQ4riaJ2jCR06Cp3XQia3KIB970aWwJDvtYJOiaDm4Knx8qLDq40jszP/0'),
(47, NULL, '字段1', NULL, NULL, '字段2'),
(48, 'oaCAixLSilJbDXpoXnlt2krmGNDQ', '李丹【新品招商中】', '2', '广州', 'http://wx.qlogo.cn/mmopen/3OmzOq8UPnFJwB5IGYjkdXic2tduulPp4FETMsMniaNyWtxibGGhtfAYVQUcGDABtbHort0fuhXWviaYcTpRjFw2EfLD9VIXLSqN/0'),
(49, 'oaCAixBJhmWr3jI8SqfGalZv2Hs8', 'Ｄｌｉｎｇ', '2', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KIziaqQhFSF7KX2JCZZpdQbtD1R9UYyJD0LUP8AS4Gpt8z5RLGcz7BfBhvibXfbrPNpXJzUcOUtJAk/0'),
(50, 'oaCAixBNEB7OU0nUC35lFVYXC_jE', '陳', '1', '汕头', 'http://wx.qlogo.cn/mmopen/zHb1mhNqzQoGlP80ZvNtjWicQiadQSGbozlzCdLkbO2DrGXmc4Eibe3pZDmSuAPibibm3v1yZb6lTkhLibmgHfZZDxvySXYGqc3pxm/0'),
(51, 'oaCAixDXoiRWix3peqSNpSjVFmGs', '山夆', '1', '汕头', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFf85lrOtbZSiaWiaO7RsankcMpM7oWEgMSNOk6vFUajDlYuTFVG8sjiaeVsiavicibmEkbZgrESwJDknGicFKGIGCYYVN/0'),
(52, 'oaCAixLjJbiiu0WjPkiOZzXTE3Eg', '-', '2', '汕头', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHic5qLibp6xAVaLvNU5kgNSsib6oBDOCnXHbPorjfPmU75Zt99CnI2XVs7NfCOSkWyA6CDoOzAxZUTMg/0'),
(53, 'oaCAixF8iZBRqxfTVdUrGsPzwADM', 'A喜多多', '1', '汕头', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM63UgR1IX4cYRjKGpoj4jZMwkOkLfWXe3gS442z1IgD8kTL9VFEN1zDW0S9qqKqh0TGn98z9ejtqA5qgq9H3FgXS86st1oVwWw/0'),
(54, 'oaCAixFoD1y3_3LeieJEY439gtms', '纳米客服01', '0', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KIkg9KezeHNbic8R6l7gxF6WI66CTxhsmxKq6CO1v7V2EIYO8dRUDOuLv2WWxZiaZ7MN9U9pBKs1bs/0'),
(55, 'oaCAixGhDWGQK3C47tjW0xehEqGc', '', '1', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wULpwibb56TIfvuIsO5NNHLqDXDiaFRn1iaiazd0ONdNlKDW27gIfNeLRkWs3PCIhIr3rvobTcUG257icsBiaLPPKEIibc/0'),
(56, 'oaCAixDZ2ygKinuQotF12B114ArM', 'Frank', '1', '汕头', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLB0wOaeuLmztEibYJp6GW79wiaF3sgbtQfVLENyyv8ZicIUJp2wQVbePqBaBQb0ZJBS4BC3AE1DnL6b1zaQDqWwtoPp5KV3EGZfpE/0'),
(57, 'oaCAixBwWMSmlKaUzqChOdHgPbyg', 'H_H', '1', '汕头', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAPzNIf0axu2qucrxOOQX7vEjlzckl1kQAknFquMHyD6kicrJbkxJ9lYWPBhfZrEibBzmIrPYibLxbvpric3kh39HS6pgkoQOzI4OM/0'),
(58, 'oaCAixCngSRBY9Ky9zSUeaGAuc84', 'Young', '1', '汕头', 'http://wx.qlogo.cn/mmopen/zHb1mhNqzQrbpVNmAjC44iaflKZv1J8NWXdMjAe5aWSBXt2TibjzpHicpYm7NPk6iaMwGDLTdsjEkicEuSjYNP3lnLK4GadW1qQJy/0'),
(59, 'oaCAixFqPTeCzQcEDbwVTE2ObWPs', 'BC*', '2', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2iaJuJUic6Nn6VfvqgI7Ls1Ogzg7HwFuLYOEzJvI90mkbDXgicdFoA9F5icVkn8M6mKc3Y2FKRYBu4H1/0'),
(60, 'oaCAixLaKOZ2Mp-CPqTLSGWnZL6Q', ':Purple-', '2', '汕头', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVLY9VyzqEGHQ7ylWxBY7H5FibOrP5JpF6rNT0w11xkzfVC9xpj5QLyQejdvckH7MzBvPuOECgxvwcGA6xNG02NR/0'),
(61, 'oaCAixOzVRErTyNIZL-rUP7igqMw', '芷ぃ依賴', '2', '汕头', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KFBkcIJktqBIMX5XW2ZjyJZUFickenUMmAgonw0WxiaeBvMeP7gNj7znlfIeANURICKTklw5DjflEt/0'),
(62, 'oaCAixAVNrWFS31lL1IpedBNLw9M', 'Nami纳米品牌', '2', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YXKR7UnrDAA5wicWMtM8hhzsHRaVyia0eSrzQLrmaYic5zHQ07DIrCFalBHX5FRe4aZ32IBznA6y8AD7ibxkCeXhSy/0'),
(63, 'oaCAixO77cdB90hIYXjyB5ZjZSCc', '凯', '1', '汕头', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KKOwVOtV8ZJnTQKneLpEO3McHHhia8hqwU1BQg7qDECGlaibW7jEwvViae00uaoVDBruB1icC1X1RvRL/0'),
(64, 'oaCAixNQQzBjuPK-OEUheo2Z4WeI', '肥如如', '2', '汕头', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KHNEgXvZYicXDLKGxKOPZCSZq7Mm1chwe3ibz6g7r25FgzeOZvK0AqMuOndgicibpcMzOswoUpYdmpEia/0'),
(65, 'oaCAixB3jGpPoPg3it-WCRI2UUzo', '', '2', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KPyx0nRiam6jjpWbbxuPg7oRHbCLqKEBBPWvI105H4mVvJrALbfVTm80KqEDiaoYPI4bQZn8P30VXx/0'),
(66, 'oaCAixNdqb5MmghQqhHc2i5XDLrs', '蘑不是菇', '2', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvA2VOy97RZG0rctbU1EkZIgGUvBvjBgAvwVF9Piakec8YGWDicU7f1ibETHPrb4W29ZJrWotJsE8sme/0'),
(67, 'oaCAixJ48mm8mSJ999dsUmZmf3Kw', 'ʕ·͡ˑ·ཻʔ', '2', '', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5bEicOvics6XTNSz4ZoHtcQ7ib1sTvkJ8snkkxMED0EKZ2nnUNlsdk0icF7h4FaqDYPSsgII1DUaRq7RmRBKystZIAz/0'),
(68, 'oaCAixLaUK-2oATTnj2CdGi34Bl8', 'Star', '1', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvImFvDjyreFQT9QkaibZ9glnt6pdY839xMicvU8SwuQrLqKFt6YFRNcShrZjJSJgF5QUcSR2kibHFxo/0'),
(69, 'oaCAixBXud3uPuO49WcTPtYsfqAs', '所谓幸福', '1', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVHK5XQjEkhGHlpfxeziaCEBCaugzbSxuUJAxHvgmWkHNnp1QdlUOiaQWVRAoHh4UNsxCXXiahaMt8LR4Nic5z3eAEP/0'),
(70, 'oaCAixH1eBa8aAXM8EGuqQIjsSOg', '。。wzZ', '1', '', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHicykXSZVBYsF4ThlTAnlNRTlBjyIy3vSplzgCg94v6Y5JelvMuaoRn5PpRnQmMNduKOesb77GDudjaog1TY8xIR/0'),
(71, 'oaCAixEz8Lw9KdbAT3N9FsesnHj0', '东', '1', '东营', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YPHUkoGQKjYibqH2PtegqcCaAOJ4Xwkw8nRBMzb8Dq6QmhJibc0hYP8sw3nKHv3MIONW9sFQNNlBls1ZNAySqyiaa/0'),
(72, 'oaCAixOgVyfdI3tZjjQAd77ws8fw', ' 13', '1', '成都', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrEqib9avAgJtGtrXuA5mcITK48E8LZSuzyNgGiaX6j0ZHaXgJWUXP2k2pphJ9cuqo5exWRgvpSZqW7I6oVbJqM6f5/0'),
(73, 'oaCAixGUjAAC4FTpzw3KJaLDYlEg', 'Amor、', '1', '', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrHfGWcXIZD2htC8lX981pibEdAIM5ibK34rIrM5UNfu40Frnzal6J30fHollGcwxZWMJA8m9FWNtN8Aia4ksFhICjZ/0'),
(74, 'oaCAixIugwcbYqOgLkPYt61iYPbA', 'line', '1', '广州', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHicykXSZVBYsFz3ic1vfUJsCas5TiayicrN6GMp5DmeKLEFGnicuOWrFkXIzbtdXrJb4LXXdEyibibnp9TJhrEyQMCHXzic/0'),
(75, 'oaCAixLPrrzMf0Z9Sv2MVT9dlQm8', '莫陌', '2', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUkyqVicia0y6eMTia3PEtm2hypzJ4JUujz6RTl7rpt1nztON6FamjPeib5nYt5e9TaicaeAQnoVQYQW9xL/0'),
(76, 'oaCAixE183eg7kYmC8nUC2MctB90', 'Just、', '2', '', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM42drNRP74icspWTbNjzHNvO6LlhvPj1REic08uP9EAfAafPrRtxqGicHHUVSOia7Jz1DtzKibWVaTptyh93yovRGXmTBEoud5Lu6v4/0'),
(77, 'oaCAixKPR4hNqhXo1oSQN_vbf6uU', '', '1', '', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM63UgR1IX4cYRjKGpoj4jZMTbybkgkKQ7d14ibmEhkA2dMkmF7NftVb5dnibBYYAGFaB3Awv2MvDc1wm10hOsUcoW9RAO9BmKibOo/0'),
(78, 'oaCAixI8ypYw7Khgv253SRMSvsgc', 'H.', '2', '广州', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5VIibXNNwJf3gGr5q5VdMv1ugJnLPwwvfp7qKSMDZA74VSILhIvTyvKBjPLuxz2zM8RwYxMNTME9A/0'),
(79, 'oaCAixGkM9K90Hdwxyvap55Gcgzs', 'cc。', '1', '佛山', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvHLBYSsElM9bFP7py10JPk3uG4sGDoQwDFCibryIQbYzcpO38nq3lWw4Il3glkN75kiaJiaE5wTdzvI/0'),
(80, 'oaCAixPWjLhqwhpr8yxZTpps3FOE', '劉哈哈', '2', '', 'http://wx.qlogo.cn/mmopen/jYZmXn2RTZQ7xgpBooNo6M9H2ZOCcTBuvHib0PPjbjVorHXSUdR7cy85rzVP09cUn3JSDvdwS70HzsbsJIfad9icLicUZ6Vlicib4/0'),
(81, 'oaCAixKUKNBPQPCh1hlUWS8ktUFw', 'z、c', '1', '汕头', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KFlAnzfAmFn5VpAqLYLj8usokC7PVFNDUEXA59IhibDUKDT7fJ3Z63TSdfeMM2VGHTolXo2pKyG6Q/0'),
(82, 'oaCAixJuEahuydohzY-AsmLfUDB0', 'R', '1', '梅州', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAnMKbIa0m7ibOrs92jjJ0GqLu0yuZTQkY4Uv2I77xSQOKZr34jyqHZqK98OzUajuuUIsFsIXdsL0Q/0'),
(83, 'oaCAixHjF8eo6A3w7FZ95jP7hlXk', 'RednaxeLa', '1', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5ZtIoaV83fOboyLBukPTXbB7HhicqqWtQicPH61snexXkFMIT2RZgICVic973KbRf8OLgZSK3svPRLJuVmlKZK3CQP/0'),
(84, 'oaCAixMpd6u0yDtqJ_BHuwMY009w', '彬', '1', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrE1zlWtibQGsUkMYiaRglF8ia0Co1oibX8qB4biaeEf53j8RY8f2ZEYHgwxzG5tXBgGPkGbHd1o5cg5UuDIMmsNrKTBT/0'),
(85, 'oaCAixOXubqHjps4JWdNoX36OlnY', 'Catherine', '2', '', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrERQDWkicnvic78Vbzmg2c6SpcemhwDOcYyksoJ1F4efpodibOvHwKMF9GU47rydXsaHetGt2V2Xxa6gsMicI8jsWHz/0'),
(86, 'oaCAixAHdopvjqwLu70S3d1A9QMA', 'Doukio', '1', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrG9pNDWVfnnliaI6mqTiaygN7WV4LgDlUsjgDqBntDE2tukicuQ0XyC1tpg6RcEibDBxw1xjeHntBiaBFkavMWAI7C0W/0'),
(87, 'oaCAixPBaq4S8xelM0tUdYtscu9k', '亅Aてк', '1', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wXQKTF8yMVlfOQzdRa0TAXIOclbrAO2oZeSewZoib194JsL2FdiaTsGiaDXic3tTjpjtXwRkNE2WPQl96tWbcQEI5Ru/0'),
(88, 'oaCAixFY_CGCjNPqGMztZgEFR_Ss', '趁', '2', '', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5b7Y7RjIkVTUxzgaDuiarrbNsPtINMXSd7rnSpanTe9gz8gicRhabGLgMGNSzVq9FT4ricbibialgDK4jTKh6Dq0Lzrs/0'),
(89, 'oaCAixPwdKGfZHMTCOhOhBSnVC4U', 'cream', '2', '珠海', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUibvUCpdF8VAc4mmOkHG3NKeicIUeuyEuzMG5LfSe7RNuMiaHia4iaaNXiaJ6ibklZekaPyuLWVwJ0e2bs5NB8aBnDgs1/0'),
(90, 'oaCAixB7utL_-Z74NiTJ1-bijjm4', 'Better  MEN', '1', '广州', 'http://wx.qlogo.cn/mmopen/T7Qibr4mHkdCt29wx3bpUS0bohuN5q23SaKI2qiazahK4ZECIxP4vjlJtVMcwuVNbsyIPEM8vnMW177rL9ia8UN0y4hP43zHMbU/0'),
(91, 'oaCAixD6chme1jFB-BqMDEtdM_TU', '睡与吃喝同在', '1', '济宁', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2jLVyxtibomgZWmYh01kIrnMXic13mNka8NnmZMT7Nviay1uKicopiaSGsjfHJ9Wf8wWK24AFcRUVM12ia/0'),
(92, 'oaCAixPKYGgvIk5hNdF5GywQEYPc', '李颖', '2', '', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrHejbXlUTeIg3eNpLT8Z5nibKXAmI0hVYSxl5bYicZk6rdzIy3Nic60ibZTEiag5dGotmJMjBBNMibJ8ayRkx6pRSc68ic/0'),
(93, 'oaCAixBKk1A4YxmuEQadl7iWb54E', '罗罗', '2', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUk8iaibwBobkXXwqCFIT161rLSdTac3vVu27umnoa5tNibANBrEFS0oVl3ujKkmlhx0Ac8B2txvbk5hI/0'),
(94, 'oaCAixBsdjet05p5O58LP0A9-8vQ', 'Aaron群', '1', '吉安', 'http://wx.qlogo.cn/mmopen/T7Qibr4mHkdCt29wx3bpUS2diaPibm4I4jFBepicz7tlLpXkJia3swdEpKWK7WSibP5c1o9qgIXFC7mMPfBXvuX1GSOgcn3mt2pMcj/0'),
(95, 'oaCAixLwZDq37KgFj42FcW4l-4yI', 'QY', '2', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUqYLYblcGSFPlPXNicCLVg8GicicVib4yicDib07hibYl3ST7fnUEJk2DJIPumKjOHWHHRxlP86bI9noFHDHLk6nntmxb/0'),
(96, 'oaCAixHJPjjLDS1qK5mcZXt9qJSQ', '不偷腥的猫', '2', '广州', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBoMibL5bW10PXliaIIkicuiciaJWAedygb4HInjDlJXGYefVcFKL4xshKWicEfv9uZ8kInGkRtpmQoFchPoSevS3TSybwQtoNeYdXXQ/0'),
(97, 'oaCAixJpyCw8rR5UmyykelHHVG7Q', 'Yuman', '2', '', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5bLWEw6qyibzDuDoaVib58q87RDObI4pwfkELDGV4apw6spg2bV9ia29MKcmGqWRicperv9YX7vlqjjEX5bNsaTiaUQI/0'),
(98, 'oaCAixMR7PPHzs59s0YQVIeRd2_E', '很久', '1', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5Y7C2Q0u1tJlEAeuNFRIgISobnQJtdMCsPsB7d7E46e1Wz4iaVZEbwK3iaQccCJQyFAH7XuK1QWNSn7VmPibY9OUnF/0'),
(99, 'oaCAixG55GAwzbk834-ufyVPCoh8', '阿男', '2', '广州', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5UhDmInJFibqrPWqExmRba1ichUqz81jajIUKyorRKsJic4ZjibKqM6u4o2o5aial4LFvPMXq3PXugDDhicTmKDqQusLFNMnJ6W6ibK4/0'),
(100, 'oaCAixEfc9MYlHhJiRxmwsmeGCJI', '小妖精', '2', '', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrF5lzcpHuuSpq6ZcPsExnsE3LCU6gficX2RDrUmM0jg9hYje24FYw2pPSNucGxwibH7ibshxIo8R9kfA/0'),
(101, 'oaCAixKj3H5HpsBeVYg0mH1_N3Ho', '霜降牛肉', '2', '桂林', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wWzKhp4jNDNozhJIiaELPy3ia0TYo0OUaYs9APljS4TCO1RpMz6c3EhetTOdSFXeSj0eFL5qluUKs0oMyNPErZXicl/0'),
(102, 'oaCAixNpcJitZOs-67JiAEChvK4Y', 'SUECIA', '2', '', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrEYVHTFJeicfXicNnMKbzEQ1hShMkzwJJK5qzia8Zz0DoxX2SzXCpwjElSzAkicU89Kc3MkNeicXjbvqniaAzUhuRdmX7/0'),
(103, 'oaCAixBQ2kLzNv-cYc5sH1hRaNGM', '天马。', '1', '十堰', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM54mBOYgUTPjwdhxZ5hiaXwia221WAdMSCW01hb3sYH3FayBRfzm7bxJN7C89w2dgTVMmFzaaCUpDiaA/0'),
(104, 'oaCAixC0huyUAlAYuUUhBqP6g_lk', 'Next myself', '2', '洛阳', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2j94qvT38efHias7c5jQ84wLbKeP4K3yPWjRib2C98icMduswPngsibkh0GM1zE0OE4n0H2e3BT7fo9v/0'),
(105, 'oaCAixHddMbNQQ0Hn2dUJMnVucL4', 'Piter', '1', '广州', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEI8bCIOd0ican2eIEeowrsJbQZmu0pfoX0GgibT0UoPHJicf4SU1xaIHAyfLm5Utod0mHKmToClBrZlA/0'),
(106, 'oaCAixDAySUc01Wo1YwsI6MhMw_8', '致辰', '1', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wXLT3dtghK9eZQHQTVtnpeOcdQUoPmWAk15icyCKE7I3OmemfvHTL6ibicwQUzLYvwFwdDzwJEIPTj1yKqsnEwhcCL/0'),
(107, 'oaCAixPWoFN_lZZZAVc90Eg376R4', '梦桃', '2', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvEevFZaNehRVeBicEjiaDMiblxwbia3UQEbEEnrPNVeiapoYP74m1uEvK5TCZbSbyJALAF6exhDcA0d4m/0'),
(108, 'oaCAixOMGh4GKDcxcPCnJmHak7ig', 'JoKer.', '1', '广州', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHicjBsH1hIJkFb23Scle4CEGCEHwhiccQVaweqXuia5ZyKEhhtjfwuPR48grMceJajOmRelscV2PSN47icwyNoBHH3b/0'),
(109, 'oaCAixHbPAfr9fssGVU74nTduSQs', 'A 灵笑笑', '2', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wWjpDDXMiatIGtibZcZtzfEz3TdHShMBicibHc3NYwzpiaHsmBKRyVOb8qbrNM1rXcGgSXGbm2wC4xMgEFiaicJXBGTiacj/0'),
(110, 'oaCAixKD2RwyLjo0kURA5jvWRopo', '', '2', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrE1zlWtibQGsUiau8fiaiariaga2rJ04QqNG1bGEO7fH6fqybYibbnbBSriaRH0caa4uonyaLeNB4ZcgIPpeOlRfNCgKhF/0'),
(111, 'oaCAixGuRL2h4qNhspanIKhWGjF0', '胡桃匣子', '2', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wWoNTyroS73QKb5wndKBPME0t7qFxZHMeuMIaGKchtZ5cyk5Oa9PRmxibDIZReMJKzb1OkGx55n7H50xIt5Oo03U/0'),
(112, 'oaCAixA7nWwEpA5z6CvgDqzjLU2w', '杨育锌*', '1', '佛山', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5ZCKbJG9m9gIFaricHoTFpKjvufic4M0fd4ChvNocH96e35TeLicibzpT8CAoVXFsVutialpxJD6SMz4m5ods9qEibRy0/0'),
(113, 'oaCAixAotMlJdRHbj2J4Q7ui1Jo0', 'Overlord', '1', '广州', 'http://wx.qlogo.cn/mmopen/SCug0ESSOH9fymI9ElTanjn1gGnXP7SZbia9NKALPydxjBvK5rY2dO8H64WB4MP8VYF3ib5WR2ibs3ZUum8cicGwYZz9YrvPbqf8/0'),
(114, 'oaCAixInpDBsC57x8e7jldBA2bRw', 'Try', '1', '东莞', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4YQgEWrmrD3AN4faMJwOGTSCtVhgpUnjpoamUicdlc5I0wjoibKZWicoDiaydO7bV2L4WaVYGAvfDtGGMTThsamCRviaQwtybp2OR0/0'),
(115, 'oaCAixBX_t7QJ0EQx30iqydGBRjY', '朱万俊，', '1', '茂名', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wXOsLE0htJWnQhcZsIrdWhzVHkMkCkVWu6TOpEduJE5jSThvLcX8jlupdVd81n5AXHWekXSC5ibhfdX5sNvLHBso/0'),
(116, 'oaCAixIJco6NLdgmbs8vI-b0ro18', '', '2', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvKDyS6YDCBCN0wbYD7XaAHibdOIQ7RbmrYu2cE1pAB68ge1KECtJeqFXXbJmJFaOAJClMrT9rkZs0/0'),
(117, 'oaCAixAIN20ldQlgRN9dr4g_cXng', 'vc', '1', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wViajfLF9dH3yot1YAOASkEKRoLYXjtJ7DP6Ep9EIInoqFyn7ksUsiaBx9FWtWeibxoBNqG477hONYHqJTlmmiam906/0'),
(118, 'oaCAixLW6ssf9JaxIl386prdsKZo', '谁都不知道我整个这么长这么酷这么帅的名字要嘎哈', '1', '哈尔滨', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUkyTMyn1DQvFgohic2eVRW14YibEvTZhaM0iaicABuuwmXt6ch7U759bSELyEpW7KyDZIIuMO9yTGOb8J/0'),
(119, 'oaCAixOBhDeAvKgmckTGfdqyVyKY', '____YYYY', '2', '汕头', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5ax3ZoQiaoMK43qEdKOzuDQ3aKxxMBAo0H3dP14iasWciaIRQ7eRrVKl5SMmHibxvrCFNrHFnpOAibnaoHmvfEmKRdAb/0'),
(120, 'oaCAixFMDr-YF9Xnmdk6gEKnYM0c', 'Flower', '2', '广州', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHicJLlFNAmMI7ldsreGY4gbRkEWsrWru4nYGSezKPUW1kTCWXv9CXWicmGzEdiaicRHZhHmzLywiax3moHdoB8tRpdwQ/0'),
(121, 'oaCAixFPyi37i7tYZG92rhgNbpzg', '时光无声@', '2', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUk0XicrZ9ojrxloVq8SKptOXibSp7DpUqySZp53CJP4WsNdcGv7uyibWhe4GOegsicOFkJmMgDB9icZBBr/0'),
(122, 'oaCAixDQek8cLDGaimXWevTHnEEo', 'JoeS-Zheng', '1', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YPHUkoGQKjY6ic4qsor2XVbwDu6SRlhyDpicEibmCA8TicMgibQohBxLRXC3nicv0Yn0zJFBFV2iaVyceDdW7m5EE5lmA/0'),
(123, 'oaCAixCYLs4Zsnl8mvK1MN498_ck', '落叶', '1', '深圳', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM63UgR1IX4cYRjKGpoj4jZMWCUH8dF6hpgORXOe7iawSO0IClogOzaETqHffB1ICKwrpQ6WPicyeC9fibdhBypOq6IXx5IGSibsnZI/0'),
(124, 'oaCAixEt4qtdh5reS7LL_C2zzSJA', '丹', '0', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KFbibl1ia5xtyKYWQOV74nNDABF4sMe2FgQXzdicuep1jtaPicbY45qMxMcb2d8PDCmpNHHwp2KhB0Jw/0'),
(125, 'oaCAixLseWXQu-Idss35vuZLSu2w', '未知的世界', '2', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVdJxft1L5k63eVTDGtdtburAm0cQQwk8L7JpQur0ebgBpPGZwVxwcuOBLUZClqt4kTXxonPKncyIs2J9b61rBm/0'),
(126, 'oaCAixJwwsaztOnD6DMfAOV2tWzM', '吖枌。', '2', '汕头', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YKnPsU3LM8wT4cONUndgJNliaGIR0aBCNPABLrPwCxVb4GSgQdZ9smuV9qiaIjkANNotzOk1snsqpVf4hQ9YYTmu/0'),
(127, 'oaCAixF_O4rjJqk35D18nN9Vz3MA', '菜弟', '1', '汕头', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUar6EBXLef8bYRibDE3ovMxLibxCCmD2Z72hiaecgW0BicMQyvyjcbo4s5ibY197cqQE2EibHTQ4ic5pq15orSZth613k/0'),
(128, 'oaCAixAsshKQyAm3AAs9bMDFpbZE', '', '2', '', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHibs6hC6crAQl17GUzlzDiaTMc4DnVPSZJAp88m2YibhZOXIbPzCiauR6g4wptqr70X5JznyfzhU5RL3K1qJhzJmyKV/0'),
(129, 'oaCAixAFupofrGNrRtM1knC--Hdw', '', '2', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUSEfbRpe3Yibjucld6c0wqmCHS9QN1RsV7efoSUGicVhNKZovctUgCfBfZibdkfnoz0NhzPIfB3H2mwqjxQoARvMC/0'),
(130, 'oaCAixEOUEaPvMU8ZjJQFoozYtMA', 'Fzh', '2', '', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2kXULK51p6JJ2HaUmY8MgZA0fBX1LZPLI8wIibZxaicpba40YRLSjAOGhkzMz7DiaGmphoMKiaHFdX13/0'),
(131, 'oaCAixE0UZy5a-3NGoBT_LIXV9II', '朱秋野【DanaeFace®TM】', '1', '昆明', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KORdcSJAvE5XW56R3F4PKcGj4ef2ibibPjbgic2gHN3VXGeoGBjibhm4nUPnAcuhw75eiaul7Y2EBxvMr/0'),
(132, 'oaCAixBMrXd5G6QV9YiKAuMyyXQM', 'AA', '2', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVe8skI8RVLYGic0MFicOhEiczFFHZwsC0Xz2U3IrH1uWiaaIMXxexlogz50UQxdjuXAnKh98p8JAgaR1tvhPB6TpAv/0'),
(133, 'oaCAixBvkAf6WkDwl_Wmmffp4PYw', '米其林保护你', '1', '深圳', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4YvnUIqicD08FflOoBmVkHibQYIRT0ESyMnfKGFoLK6b0PH9bg01JU3Jlf8cfhQzhms0cv1T0ZmaspQJXicrkhJ97LxSIQNP1yO4/0'),
(134, 'oaCAixH9JfnGe7cWUplY9O2plWwQ', 'A59', '2', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUYiblVxYynicqAFXxlQ8bbUouwvEBLMOlGwoRtU5W6V1u1x2OuF97btH7xdMnMTibLro7PyT5C58mADjiaPd8xzWSW/0'),
(135, 'oaCAixIeMkenDk55PC1ei1_sF5zg', '^温柔的小妖精^', '2', '湛江', 'http://wx.qlogo.cn/mmopen/jJ2ib4licghcia7iaEpXPLHBOk8eFQsranzwq5r9NAUSSHPn0kZRMDZo45n76BY27u11tlqPTGoTicYAd4QTPiaKWibLfnibg9I9VHC5/0'),
(136, 'oaCAixKUXSjt1qSJiqbMe10Feaow', 'fool。。', '1', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUCbMMicxLWnWTbxkG14f12gW5GVEVt7IYA6ibAryJwZZhXGGTCOI7cHLHXXcEMWUGUSuEltq8ExkvXIc4FthV2C3/0'),
(137, 'oaCAixISTkm_YQmJ9chctPo4L8rY', '烈光', '1', '汕头', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFnsMr0ZkzUM0hCiaT2DTw1hckHIpQ81hAzN7w6vcGrQUuvOkGq1wT20VibxeJyhqocib7q9C4icgF0Zc0reN4dwEFu/0'),
(138, 'oaCAixEzz-4ctG1oTFlIt8ypz1Tg', '๛ 七七', '2', '岳阳', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHicykXSZVBYsFzU22Y4x9x2LRaL0b9TlLdLJ8Tsrjw1MP5GqNxyrib7iclH9UhX6NL2XKNGXcia6f1qrEBQeH9gywiaq/0'),
(139, 'oaCAixKtEJJWvfBZUJwjNQXSZfXw', '小凤子', '2', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrH7IqeAlhy7ph5ZWvFjAxxHoQrDNVAWSFeibJ6IqxXMTgjKMkjib5QwbHqeWXvpEFgC1ZiacKfSW4dwXz7nRIRA3rC/0'),
(140, 'oaCAixBI-ccBN_sm9rNGurdq5zRc', '默鱼儿', '2', '广州', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHicykXSZVBYsF1eqSTEFSNOA8RQpHAtzSe05Kh4EEicT3k4WMDJwjgHcUCWt3V311ibrFiajhEbGAB5QLPBcJ2bJbMia/0'),
(141, 'oaCAixKfLSWC3xcr5F3l2SAHjUx8', 'myself ', '2', '', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrGM0GmcsSjQOvwqyauWedpUYIh1fWcMCjWDH2W0PRfpYKtIyn5R5Ce3TreRN4gqpZwK6NugdPGSBGXYwNkjmU3a/0'),
(142, 'oaCAixI3yZo5rEsVKzm5oA-UZHUo', '河中月', '1', '广州', 'http://wx.qlogo.cn/mmopen/T7Qibr4mHkdCt29wx3bpUSicib8xbLPiaZ4ndc4yE67ziaq6mNS2BQoiaBDehewvCqKLIjOCzIibZlAbNYLj93icMqichvEHJbBctTFXK/0'),
(143, 'oaCAixIo-fBEvPfWejUHDRfLIDOI', '唵嘛泥叭咪吽', '1', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KCiaMU7vut7U3ticj9IbxBfjQMv4SmyVPUgv4Ndg9UmiaKIrHSAhJZdbcfWdribIwJBKmDaRlObtYiamp/0'),
(144, 'oaCAixGsncOl1P278WE5HYUsqIbs', '贼乐', '1', '南宁', 'http://wx.qlogo.cn/mmopen/zsB1EBibeNmjlibHsCAyFjqzibSGHtUUVtKASfLmCON3vNC73Lm5Z5PoKUzic84OMvPKQvAjU1n2oVOTSib82QeAIlSALXydqtlzs/0'),
(145, 'oaCAixMe-j0zr7yrRu2DmHFbxbu8', '天天', '1', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvGQpaUNjrLb01XM20MH3cXRt5FyXLjkQO5eLBXficjBxGQrzwia2GVBOqGK2RoNep3c08Q7a3bmUCr/0'),
(146, 'oaCAixP6hFRaEWv72gTxcX9BBLzo', '期待ing', '1', '广州', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM63UgR1IX4cYRjKGpoj4jZMAnpHxXvfpcf1oGBrHiaJboyGdqjddE4AJZduhhVGtDnlo8icKWqUGhJxAwYnCEJbZacz0veicL3KBs/0'),
(147, 'oaCAixADn2VvPoAztzkk1NeR3E30', '勇', '1', '南充', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrE6Tsnic1w5ktMxIJSeFxfCgkwenCYSJ2vwqsDbYAWic9ZI8kdmczpsxSrkpoq16TfMT4GEF70Mq70VUE0whok9YM/0'),
(148, 'oaCAixI-SwJbaguvtxXNBWhAWeEQ', 'Today', '1', '桂林', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YicPF5GKgvXIjjdveX3r2P9uic1hffib5ibOgLxekbdWe643q6XgmPh2gCLRB08412pjjDsz5r4VvBfEXUL13Vlcmib/0'),
(149, 'oaCAixD1dOKPNryPoF_E6jXRzvqs', '忆爱情狂', '1', '惠州', 'http://wx.qlogo.cn/mmopen/92trdOsDzhBwuK9xZa1rqzW5g8mugrbDaKcicKzhUMXczTIBqaEBrl8VVib88hEx7ay93o4RDzOXJ44hCCPWuG8dc3ISqQPO4E/0'),
(150, 'oaCAixE8Nff8Cl5dhAYN2DST5w-A', '苏泳', '1', '潮州', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLB1WOlxHPxUDwibkyKTDqrJEzuiazJ74zmfsbgcgANpXzGt3bicj7ic5Pvbjbpejg74vwKXKm1gkey9sg/0'),
(151, 'oaCAixN3W-DBMaTa4sgUOS6pII-8', '培荣', '2', '', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrE5M3gDGOEic98cPSyMM0OMBXQmsruaT3KTR6wRIbicmhDv0b7uvRssP2Aq6pL9F6MibeeueKnwAuuBXczy3WDuO0o/0'),
(152, 'oaCAixHL9AOzhpTptIwvqPgn5ztA', '木唯希', '2', '', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKjFD7NFib5yYuhle684vcmcCMWvP32DCTwRVG49nXgeZcLV7tNOOPSLdicnRicRJsQ553TtVhiagBTUw/0'),
(153, 'oaCAixM7olIeEbuZ0XE2s4jkRPqE', 'A', '2', '汕头', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVFZDkhkyCTkNeYrbty2UGCe46mWnnGVO3KEup0cf0blsjpZzXml9bq9EQeEHnYvh3sjZ56wr5HlwlCy2yLjWhE/0'),
(154, 'oaCAixE-SwPcb_9n54YcLj3FrONM', 'stephen', '1', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2uVew6cZUoibuCRPgHEV4dDnvBsCCDhhWOjbf2gib8V0Rd0aCkmaVdLUFoUTJu0rtZmegzJFkLpicZz/0'),
(155, 'oaCAixD5amy1n84kjISOwvdEP47M', '　　　　　　鹏', '1', '惠州', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCian7mwNTlQw9oA8HjLyEChDv8VjhskNia9BE8ldwYh9SB74bAqrnTmFrUGDZtia5unf8uZFWXPglicA/0'),
(156, 'oaCAixA9rQyaOLOL0TDK10HHon-g', '若即若离', '2', '株洲', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrGzIUMpAHf7iaAXat94Ba4YGEofRrSaYiaZID1KezhMPE8taSvdWjebQVSZkDnicBuKhkT55ElXiazMEmpSUj0JqPr4/0'),
(157, 'oaCAixMVVe9-HPJwYFP3KI-oLtRs', 'L老A萱M', '2', '广州', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEK2sZ0UfkYAEgmAOnlFvYXHibibz9uFWickax6bX47YU5CLAPiarxicyFeDcGbSMkgBDFcY9I5eYeEaDmA/0'),
(158, 'oaCAixLxDQJFDnLcGooHKf_r-wYY', '阿不', '1', '潮州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrErXIb8sicDs0GIRVfrRzpLukWAZ8lyZicZR88qZj70s1SMgubic4relhiab7yJPNxSI0De8Jee2m69SGNzibuJwJWLf/0'),
(159, 'oaCAixLXJRz4uVGy40n4OIwoYuP8', 'YON', '1', '广州', 'http://wx.qlogo.cn/mmopen/SCug0ESSOH9tNbNg7Bmp0pSl3ZnML0venaEZ7rlpdJsKx2KiajyF6Q1e5wYlA2WJDpoWVicF57P2hgXEgJKtyEckBEsILhqFsEO0D5Ga502OQ/0'),
(160, 'oaCAixGF-PQrUO7rMh_7PzH72VSM', '雲吞', '1', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YPHUkoGQKjY5iaBpkFOgfodPvWP6BtZFkYxedwbWChl4lOadesUGVubjQUftGRy5MqK0XPLf9ku5iaicVqKxK8HHw/0'),
(161, 'oaCAixAMIj9IxBPlDjZhGJoA-sOk', '且行、且珍惜', '1', '惠州', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHibSjmiawORFkRz9oUPbAXT3pNQPg5uZH6fnSjV22iaQObFjAxrzp2TqFRoPUWWvlZ3ZLkkqLuZ6ZGibt0SArUgTUpS/0'),
(162, 'oaCAixFaqegmXWwovZAi5THiHBqA', 'Joying', '2', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVJo3D2icx2rwMTUcKiaPauicicrtPqAXXHrMeRialzQticDPEF44gvb8v53HqWBpNHOnnBFKPHT9rxB6prmoo15ib48gF/0'),
(163, 'oaCAixF-dPTkvy-0A9t6qIdWVDEg', '木子家', '1', '东莞', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCzNgB3P7jTPD1bYPe8GabJeXOCjz6pHxb8Q61hCpKfftCAmgtxaTl0DaXGXUEypqKz1hKhOo6GhA/0'),
(164, 'oaCAixNyZGJMjqJdeliOw3tvKQgI', 'Version', '1', '', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6boBicb6X6V6Nw6VJbTZx6U2NOop78ZXib2hFf9Q5G41l6DucEc1DmNTauicCLRv4BdiaN5lInVKMbNwcEVnm6zwjUM50DBw0cFnc/0'),
(165, 'oaCAixPVLCVYwwJ9e3i5Z7bHct7c', 'ZHOU志鹏', '1', '汕头', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHiblkUBicaOb6zjwibbMdtVN91cJbsdX0OYiab9SLSyLl8wkqDURa0aR1Z8Tibh6QibIzSFpwJsoq02TQVA/0'),
(166, 'oaCAixA1SBRtN_WC5GbPS_4F1Ruw', 'Lucy', '2', '梅州', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM63UgR1IX4cYRjKGpoj4jZM26Z7rC62vdznM8BiaNY36oWGI3AFZpGDccV7dFQlfFhicHVxdI0IfAGyWVPVMdRtWc0IVJjTa1TiaY/0'),
(167, 'oaCAixGQO54jRs-pfsrYbrB1DXQg', '小华', '2', '桂林', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUYiblVxYynicqPMgMrnxG9cS7SeOBl7NLkExXSqI6rvTQfPW1ACbHsxSFN4HicmdIkDpSevwxw5q4Ha82gfBJgbqV/0'),
(168, 'oaCAixFhRozTtuTp1ggymKAyuu04', '韦淼文', '1', '广州', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHicykXSZVBYsFxGT4EmocRVics5xKiaS8gicLNO70f5RBYqgQZrCN8Rhicz8ibsLVgztRZuySVQv28YWCpKD5FZOKgB99/0'),
(169, 'oaCAixCMJX__dvNOGnM7QXfwVR0c', 'Maxx', '1', '', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5bOqRuUuTE46x1Y93bdbo4TRbDH863OiaDib1zBtgLkEulUGaVN6LYfUwykYHwgOem981Uzl3tcf2n7xic5r2KcRzY/0'),
(170, 'oaCAixIuJVJ48-j1_5cSNCaeGp_4', '健', '1', '广州', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM63UgR1IX4cYRjKGpoj4jZMJwvPtXONh5T61eFEeKfVcfsxZyQkg2f4HR2nh2RGK0MbEkiaNyo4UMRJ9SgjYQmRfqGMJ4iasRWwQ/0'),
(171, 'oaCAixCk_i3GIZdnas6Zyp-eBiGE', '', '2', '', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrEjCat1H2v6CSB4M16DP031o99oFX6Sqx4nKgw2qTMeyWOFA02gFmxZrSnzFR02HxtO71qYrTfacWtZRtTdKngT/0'),
(172, 'oaCAixCpwvU5l7Aix-i5xI5srOYo', '魏颖', '1', '汕头', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUk9I8RGvLCsDG3CQ0pbct6ib3f9QJuJhOBStGkOGdnMIZxBFcMNSpaicz0EsqykiaN42jzbHsre419Go/0'),
(173, 'oaCAixP7YWUsJR00K1VXlnR5PjQs', '川', '1', '汕头', 'http://wx.qlogo.cn/mmopen/d6Ym9RYOuFufRaYeBtrNcz6BQaiaJ2XPNicYD0RQsiaxNVSTvgeS717WFQ6icKqwT7AGHf1O63vGsA9uU4RXvlTHibjFXBkTQsQ0L/0'),
(174, 'oaCAixOtt1qk_eI2NZE7FV-xljLE', 'Skkkuli.', '1', '', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5bD32UbFEQj3Hfm8CYF8d1JRtmibUS4g2PQTu1NkZhf5uBaDooue3m1gHFzYibL3IRNZ2Cjhnq2SnHVl9ZfqHJibBj/0'),
(175, 'oaCAixInliROjFNqhUCrPXQmt2DI', '粉丝mm', '2', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvJLxtuwMicjS5rXY9tv5hicls4jQOPKkEEIsiaJfDgVV59znGFvcwRDs03SJPWPBlnam5pboEMzKLES/0'),
(176, 'oaCAixCwQRViUk3JDqySpJeVVnKU', '  景凡', '1', '西安', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5FfkTIrEcyeLbOh2I2f1vp5SB86X2WM3tg4aNzbAQ17mWoKLCz4oLwopVW0RAfk9dan7jKicgia8iazHAdvU7aAvjkLhRxOT8ibibg/0'),
(177, 'oaCAixJFsaYy8EMC4F2mtg0gYbEA', '00', '2', '潮州', 'http://wx.qlogo.cn/mmopen/T7Qibr4mHkdCt29wx3bpUSzxbXcpl3yqHViavPNm8vcXMbiafxQCUsUOCjycKnpGlXGZIyRuF4LbbF1SzNavsho3LU7PoY2TQGX/0'),
(178, 'oaCAixKYXVqdKW7gZut-I5QVUlN4', '无奈的叹息', '1', '惠州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YSX2mSLIKqsLTKS8xCjYbwalvyJbnsRtZ1xaS2ovUx5ODbbic5nibd2p6lPmXk7DgLTgvjicsXLDqWLjqIZBNFC2N/0'),
(179, 'oaCAixLzA4WrwHJsFNlBLhMfNiHA', '永远的24号', '1', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5axdwP4VyQFibUu14k5oNXulacUcKJUFK2ianKYbvjXSjtXqdjbauJFVxey5Ksu2neYOBAGEBf14mmvgeqfYS78Nn/0'),
(180, 'oaCAixB2vljSlUReH_itx7SLBEkc', '黎弘', '1', '广州', 'http://wx.qlogo.cn/mmopen/zsB1EBibeNmjlibHsCAyFjq0IvPaibb5OwwWf4HBUkKvK8b4f1DrrHv5pMtszZocJsxk0CMKEEUXLWY1ia8JxmDykOACKLDGZ9C2/0'),
(181, 'oaCAixL1udhmgjQzhWsak4ES86Hg', 'A~依柏诗.张超~18027164100', '2', '广州', 'http://wx.qlogo.cn/mmopen/wOKpZtE2E0mHMM11VMGqtpPOr6VHdIWZrLGNh9lQZ7qG03QvHfJMCxcgbeFzrWNdnUZQDzyl7cU5YxxBYhhFiaqB9TDiaSN4MD/0'),
(182, 'oaCAixHOBay7Da81CfZK0F61NRlw', '    .', '1', '惠州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wWKIwR3R0NxSmDiaKYRibgfK7GvxexL9ZPeHL3hFexvJDJbK44HF5rSNSXYPriaHhFticcPyv7Yrk3tcy8UbrG7Lopib/0'),
(183, 'oaCAixEcm39WQ3KHOwC7KHarpqDA', '难得糊涂', '1', '广州', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAKPjbCbOCoUzUjnQmm7tNZOvSQDDZkCewd2ao2hJSW2dxfxvCwcIX6kD0oiameKoJ980O23Mmhtvw/0'),
(184, 'oaCAixE28kkocXr9IdnsCjs1pGHs', '旭明', '1', '', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCIZdQJbR9I3ZlQm4F7fxDnTOg7icHj3ddalhTh8RXSy5Xbh1QRg79XvNZu7J2MiboA4NkACwuVqeEQ/0'),
(185, 'oaCAixC2LZcy71Pe9m_ggB5KCnFg', 'Amumu', '1', '广州', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJtv4Aib2g3o5KJPTlibiaVktt831gW4I8AuwpNf1SZ6dSU6AxCersQibjjCmGnZf9zwrWxEq7kIrrbpQ/0'),
(186, 'oaCAixJmnvw3UE-L38GP4EmViQnU', 'jiay', '2', '惠州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUk8cg9icBZWuZ1e9iakP8OA94nVib4AOlzeStoFsFxW0MWRLrRFzn7GHRGBtavRe0ZDg9z3Gl5oohmHF/0'),
(187, 'oaCAixI06HBzs_2n4hEL33Stk2KI', '健', '1', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YPHUkoGQKjY17145QxZJmx2ankubwgB0pI471suRicPVqsAfyzyliaibyo9oFRHggdCX0zQlibjIL0o8icSGSSgQY2J/0'),
(188, 'oaCAixIP2wmmX6RnRRaVf4CQlCHI', '傻妞/可爱', '2', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KEmRmTROpRyVdAVIg18ZibmNgJlib9bYvDt8HmNf4RONjfv9tfic75ib8nlWUicAZSHFfXicQ0SYb5RW6b/0'),
(189, 'oaCAixB3KZBsJ0ixZf6DDPyKjQPc', 'OU', '2', '', 'http://wx.qlogo.cn/mmopen/zsB1EBibeNmjlibHsCAyFjq7NibpnWv71oib5FhC1nnG988nqgasicdSShHdLZLZcvUibmJTsnKa8tibxUEQr3WxxyicZmAzWQByVrNy/0'),
(190, 'oaCAixOi-78DKDAr1YzJGs5Gjl-s', '零', '1', '', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrGPta8GEhCdOUyiaTAcPnHqQic6g8clLBR2oDLrIpGJk52VKzZDNKj3wINcyho3zeEV9USLSUwPEO8qREMus8dDrN/0'),
(191, 'oaCAixHfZh1EU-wUyEKFsdu-CGKw', '陈锦文', '1', '', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHicykXSZVBYsF6J0W4I1prFs2zbTQ7L8LbmKxwHickZLkXB4sXWES1Wskx0u6SQsicv42SKqDPIIDiarfMy9k3xU4oI/0'),
(192, 'oaCAixIs34czrOkIX9hb5ONBp48Q', 'clever', '2', '汕头', 'http://wx.qlogo.cn/mmopen/ltSgrdCUgKhIE2Qia3hSQXktvvbliasOoC48gk94KhZ6ECwMOBLx1DUAwHJHcf8ulvicDS18mAYIEaYzc3fRokOh5mB6YpBBtKt/0'),
(193, 'oaCAixKbaWqPVSjJ8Hp4gdcWkRhk', '张小华-欧博尔', '2', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUkibj28UMzgL0uzyuiaKpeMoZo3s2xhLtwt2xlFQ09DicDWxx3XpIJXDOw2NXeEEhcgP0q1tr5Jx2Zrj/0'),
(194, 'oaCAixKSCXXj_8F4vNh5uk7uTesw', '我的男神', '1', '汕头', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KALgFlvDxWMpFnx9Aa5jn8mgVEUaibVzmW0qicLugNuKG7oCzrHibdsCktCO1RficmIwfLo4ZraKcYMS/0'),
(195, 'oaCAixLkkaJuDkqUhrXgbfUJLzvo', '再见二丁目', '2', '南充', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvKYpxvgXibqkSicGkrnAuFtAqfFMqBmXB7o08eD5NW12JsiaNpBvKfYZhxkry4td9yGTiaTWOliary2pic/0'),
(196, 'oaCAixIkFjyOzZXIWdTQStsnkbac', '。', '2', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUkzEbMyJnQtIZ8KKqIeRM1bXVzgmLS8rEgpLZlibS4QSibPsH4EGxHyLm8thrDicdfYjxTUV3usbNDz0/0'),
(197, 'oaCAixJRJfQCxor0-29PVYFVwHjM', '小墩', '2', '', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5ZEvyYic7HiaC2nKYV7hoziaJCe3Wo9MZFHpBfXj6yicJVSYxUbVczx2vokeC9kByia3Dia1icyUGBIaibE11z78KMasGET/0'),
(198, 'oaCAixNZJnF30HQt0GqcbdtEBPYc', '噢！', '2', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2r6ju9fMRsTxXlDuNhFTbkgRB7zR1hiaeh8qicNgDASBspvkBdfnCibZZv3VqZMru8atDD2pCPcBwXs/0'),
(199, 'oaCAixFNDlwTYLbNkaP0cZ8PsWZw', 'eval和锐', '1', '', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBibno0xxf5XwEm28zTuQcT0vRNc0j13S5s96vviabibJv3aQUGoApp2ejEJQ6VOPH9icJ9VSDhQNaOpw/0'),
(200, 'oaCAixL-ExIV8UFguM8Z3cdzP1Uc', '流血不流泪', '1', '广州', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHib4ZwSZlrev5iaWd1GbC1nSWRORKrX5TQgf8MX7yNeib1u9wdlb2JzOICOPMdLBXGdbGgzjumiasZ8X13UHzFF36os/0'),
(201, 'oaCAixOXiIe_6vLUe9CbfDFwUHRg', '点点点', '1', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wWurmhaXgy4RKvtPwfaNU8ELSYicIdGMiakxicAZLYDwwTOMwjibvABjcpwMQwuLr0DKqwsg4xnHfDPibXfqRTvxf8nU/0'),
(202, 'oaCAixDI7hPd2VICBRd6jGKmMGU4', '昔年', '2', '梅州', 'http://wx.qlogo.cn/mmopen/d9km4p4pINv4SZp2rp0GkSgLribwDVHjQ2dGqTNO7mJKp3vBZ1ibSMfChT2n5mLqJfPFmJqeicTBrXWG0IpRjtjhapRby3ax9FV/0'),
(203, 'oaCAixBFbDq_7KyhSPwG8h7MspK8', '余元鸿', '1', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrG9UqNmorniaG089ySfpvQsg6Zcour641hcjZmkYvtpia1hd0uWGnQ2SzEePKL6Ac0gJ0a87qicjtKicS3mm3wicoucP/0'),
(204, 'oaCAixKK1YijC8UNdvy3Fujufqd4', '峰波', '1', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5bqSlORhC5ibxZ749PbKvCDxfoYYiaAgGq7V664euic5tuPuicURatnZpwNibnibibukTxN7gOfo623FtB2WutSUUvr6Su/0'),
(205, 'oaCAixBMVuv-shc-27l7xtMoy9p0', '小郑～', '1', '潮州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wW00NTzEhM8NkUeyicj0OsazqWmJ52qa7ug9KibBpDNxL5s9qQIYTUfXgOnicSFYnjUS8Z1rLTDcqAPA/0'),
(206, 'oaCAixAQXzmOI-r4TTNFOTKgEyO4', 'Andy', '1', '广州', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAPzNIf0axu2qucrxOOQX7vrYI2A4j2TqHEkZ6FDPSibefvPLX8m04jJATb8aS3ziaJicomNrNYwYk49CrOeWtNicUesG7evEfrV3o/0'),
(207, 'oaCAixKrgEpDZ8AqaW_yWWNzLaMg', '不會玩', '1', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KP1r3RuhduX3kxZibawiclWuuktBZLkeE5Ud44LHqSNXIkCq8xbHKJxcI9qmvyEDozLzCYWs9WCicLP/0'),
(208, 'oaCAixN9w3-C2Ow_dRyMYqSjmwBY', 'Lee', '1', '', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLClLp0DD7yrn7jvVWqY5Gw17TtzWytc2Mmd0wntvS9ZvcYAmxCNNH7tibJPa81ynbCmdszZtVFjkQw/0'),
(209, 'oaCAixAdxqdboqdrtZ_BsN8Cuti0', 'Grow up.I can only run', '2', '广州', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAxMWdhicrpf5O3wnwHrgsOV3NlpOgOjreCKCoq6rjprcohHFveAUSncTFSfs0xMkvDt6Yawj1Lugg/0'),
(210, 'oaCAixHjW-_H01jof_6ljc_pF8AY', '念念.ζ', '2', '惠州', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHicykXSZVBYsF3loSYmGz11IVD3UOUMhjJBcMv4KuAh78qj5vWKRtHNLUpeKasF2gVUuwnKoSDfDibfKTwiawrd52v/0'),
(211, 'oaCAixO9N7XW4EDQ_rcSUroTiGSY', 'F.  a.t', '1', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KPyPjibIgdcgzRqviaonjy0AC6gGOUlRgte7ATcZxOiaLzPqOQ2OmsYD7vo8jf1dGmk0ntF1jLGict7L/0'),
(212, 'oaCAixMesyr4GdYGUrYc3fptnsj8', '蔬菜味浪味仙', '1', '', 'http://wx.qlogo.cn/mmopen/T7Qibr4mHkdCt29wx3bpUSzNncyYulcEmJGLppicm85Driapw7JJwRQ4ZxOfzhBCZ3PKoNibk2hq3U64W9Vq7TlM0YzqpLDq1mSq/0'),
(213, 'oaCAixPdc3nEfQTpXz2khV5j0pfs', 'tuyet', '2', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUk2lNxw7nVjPL61fNR5ItzBQghxD65El8WiassNibLM9olKiav48MbMpSRrb1tt0GPJPicf0rw6GxGZW3/0'),
(214, 'oaCAixGaHs_ArKgmsPgvgKnlzTQ0', ' 環環', '2', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvLqXiawZU2pgiasEMhVJEkWVjXJnFocMtBeegtOQmltOqD0SpkiaHElV0WTbcEos57jPUjoAwqUD1O3/0'),
(215, 'oaCAixKRy_oWUdsTFM4vfLKjarAc', '萧段手', '1', '汕头', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUkib9ypkib8dJknPNrCuPvQZFo5hLS79P7av4IJQYVN8UwibPpXD7E8XsJ5ZjlVPcaDy0mkNbnH3UDHV/0'),
(216, 'oaCAixINssi8lbdkwbpfotWq5wDQ', '哆啦A梦', '1', '汕头', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5fUqRVQl4KHYmWuBK3yqDcCHkichtHib8cCicuhmJem5SViaBmaqyE9mnQePWRMqatbscsZjiaJnStn6g/0'),
(217, 'oaCAixLCLWsSoEccPDhJ_w7B7twU', '飞素', '1', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvDfr9NFTfGm99uEDCMln9tHc5wia6IUJxkLicKEVk0IuWX33H2E0UEicDOeMWFVxnXGe97QPytyTiaJP/0'),
(218, 'oaCAixIr17tUeQvfRmbhFdwlfh6Y', '許', '1', '韶关', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM63UgR1IX4cYRjKGpoj4jZMunopVxCXMOf5sfsylqlk5gbZT5HbWb6KpZuOguExicx6d33qicNzaicIW6VOvjzoJYYgSFvywj7SGI/0'),
(219, 'oaCAixDbiuEpUoDiq7lq-cBCcr40', '（T@y）', '1', '', 'http://wx.qlogo.cn/mmopen/eU4ZB5exA2nNAysPibIU5T4b5IZzzoIc47jTqXibpKiaqvChib5E9ZdYOXgcYicMiaYOGXBufcWuF9AslYBrRqHicibj0icyzcSA9EYh4/0'),
(220, 'oaCAixFKQj0wNfy6AbrGNQAWXo5M', '陈俊云', '1', '咸宁', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUk5FeAPtp8YCkb6uKKEPwFF2h4XIw6HZkPKo5I9yUFM7Ye0tne93ITDFCF8CW3CqiaSI6hSqVVz3be/0'),
(221, 'oaCAixCunK8NKkYlh3kIaEfipw38', '独行', '1', '', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5bLWEw6qyibzDm4lwdR8pjXIgvZNp84pVRXG7ibABqxcADtMgqkD74icMUJKAemS2msyxtOpSfRicXicNTM0AM2QGpvw/0'),
(222, 'oaCAixMmcJslNt08pjxPLe6mVG6c', '₩ait ', '1', '汕头', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YPHUkoGQKjYypxsJnypvUyibGjmOMN8WWU6ibgGtsYVmND3Pq8QqytsdZewUIog8KZGDaZvXNAEE7fcwYmdD2bD8/0'),
(223, 'oaCAixGE3VBhvzu8-VY71ISixNfw', '李树斌', '1', '桂林', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKRTvhsHaCYFPMB8lTodN5ORXy5icwCzf2KXoeI8psKh32GoL9KIUU8DzCiaH58WnAcDDdicyx7VcKPA/0'),
(224, 'oaCAixEiy_GhM8uHpQOlLZsPTLXg', '付文杰', '1', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5Ziac36FcVlUWjo41J94JprBMdygp5rFDdp71yicibUDNoAhmoibb61EwlO83htSfMY13uSAgMzDPavCv15sG0fAibzZ/0'),
(225, 'oaCAixDnrEAirXlGe4FsLDTRytjQ', '过犹不及', '2', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUkyUEZN4t9svdkPAdcF66NTmz3tQntNrgwA35JElX2zPlv0AdPVSx9GQVLljmjeicmVF6dWUCFT34p/0'),
(226, 'oaCAixPZYrraatsv6m2IWE2IpsHs', '亻韦', '1', '汕头', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YPHUkoGQKjY9oNUGxN8Ak1qx21HNlPucHR9eQYZ3dR2zauAbujiaiccZlA67sllfov0ib5WRia4etV5qTtpoCcOSVk/0'),
(227, 'oaCAixNpGOVSzdqwxGP5sLGvxUAw', '猫宝宝', '2', '焦作', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2pccogxRibX1Y2gWQUiasAP5cBWIHNdSyicicWeGDgTrv5doXAUTQ64msUsQlv7n1A0LeibVibczVwI9DX/0'),
(228, 'oaCAixNeZtD9Wx4PNAVFb9Y4KvVw', 'Miss娜', '2', '潮州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wViajfLF9dH3ytajq1SJDaiab3yc5lvibJj9obMO7oHugiaZ4gNXnMFZrMIz6bQXYTwHIyJrTh0b3csp0lbq6ZIzsa4/0'),
(229, 'oaCAixGqgGYaE72lMWU0LHcffAF4', '蔡潛林', '1', '', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM63UgR1IX4cYRjKGpoj4jZMP1l7RY9d1a1zlSc0FaPdT1hBRxn4wNEFnSgEBPwiaB0XMxoKew58TPdauL1cTSZIp1xWKNnbqrC8/0'),
(230, 'oaCAixHAgPAVKXiZgfNlZvvtl3Z8', '蓦然回首丶', '1', '惠州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wU5AC0mlgYAePohExUCGkxhicm2WsYqoGLRBJcK31cwHNLhaRLnlxQaotFlW0NknaJ6MvtgycdnVH96kBDuaviaPZ/0'),
(231, 'oaCAixMdzATVKP2pr1IL_KiDHZYg', '小楊同学', '1', '潮州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wW0IXBCxYWsIatV5GVbbpGauVGBjplwUeymS8HgzJzGDxpoQNYwObQNJFcIZkG1DNI24HUS0WPaasqoOibiayP2BE/0'),
(232, 'oaCAixJxWHR4FNlgL_4FufqPZ2O8', '黄丹', '2', '绵阳', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUYEf4YwZRDT6BlfxOvicNK3Bg0a6rdaiaicYKdnAYzwNOu7SpYMYiamWrD5OrQeaWrqIasqib7tZJlLkQVibWuM9JCkK/0'),
(233, 'oaCAixEolXO2lD2fTi5NBD2YQz8w', '欧西宝贝〰', '2', '', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLA1zBTdSkzjHaK8I6Hq8qLPbMNMcb4GzFVgfhIRBbz5KH2HR0ptxBClNSrvkicAibFrWf0bbK49RibOQ/0'),
(234, 'oaCAixPzohjyRSEL2IAPI1jWTsGY', '-H.s、', '1', '益阳', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrEWicwOylHTiakODoWcn010qsKTCaNsH8E1z9fcBbZiboyaicxCC9fguAlSmhk9qn0FFiaFQwjFU8hgUZwecN8OCYRIs/0'),
(235, 'oaCAixJmgKmW34k1sPRTXwa7vK1o', 'L鹿', '2', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVFZDkhkyCTkB0ks8oHCoEII2JeVWGLHictxOiaqEWP4ibZyEeicreY7ibAH2ofjxeP6Z8Sn8T6mvndia2XEKXl6jZrkv/0'),
(236, 'oaCAixAsv_M5TrSyQTiNqK-GGnoA', '黄史军', '0', '', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIQV2yDA2sfsQ63fvtMX1XY4GShkfgC2q7sM3VkpNicIRiahpcdXHT7XojWn5ibo5zRF77ibtUlZpyJcw/0'),
(237, 'oaCAixGtrvKku-ZEvE1QzHrNqtYM', '甜心', '2', '杭州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YPHUkoGQKjY0GzqzgdJlSuHPTYXWZFl8ibuUT0qXpnm47PZS9gRZicZu7dUtxbSE7vsRb5lD5kfmUbJQFTbZwfxW/0'),
(238, 'oaCAixPW7EhMP-NFXFITqQQI32Ck', 'A       若', '1', '娄底', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHicykXSZVBYsF5ibRAiaHVicodNengyNrfjufEwO69pIn3K6ib0JQQSPeZ88Lq5yxTfRyPyfWicILNSFMjrCPzpJeX92b/0'),
(239, 'oaCAixJ9mmKc4J0Bov5X8wRM3Emg', '有事联系QQ1692838898', '1', '宿州', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKGQXcrKuYpp6rMOn7xBQLPReyaXYiaX0xT6mTtyH3RJUbwx5VyQgIp8ia3nzYGQ78sOTucKbaFcMkg/0'),
(240, 'oaCAixHkvVFPnh2fKD3EiAxGMoaY', '', '2', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrG2uZquVkhPOORibFylXFUPecuvuwcZibVWqeb7bcdSib1wBxa4AGYLQ7iaC9yb2btWc424e3ekzMyY3bKUghcEAWXd/0'),
(241, 'oaCAixLCQWp3LP_i3PzeGAciZots', 'drive us crazy！', '1', '长沙', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELAXgInxGQcCSTJmcwefWKibbhWMb7YozV5ur4v89MUSmsZrE9tyg5DN1l3icR4ic0icd7ZS0NibfMHryA/0'),
(242, 'oaCAixCq8Q6cDMOgqioueXKx9Uho', '往事如烟', '1', '沧州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wXBbRpfdP4HBYHwcsME7LYiaKCUyrIYWHoS0lWDM4gSKqxtPp12jiaCNQSpwVhA5uSYVuR0pGRFklhI1sqcj8RgYic/0'),
(243, 'oaCAixAZKBXEWgAQNLNlgcOLYv4o', '赵勇', '1', '西安', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvHcal8PbAN5laF8P3LnKRiag3AdVYjT7qiaCJaYrwicXOgElwXNFjuZI67WwoDpF3q8UBYFz7EB2gZr/0'),
(244, 'oaCAixDThTYebnxohfgPzWEDpwYQ', 'James', '1', '梅州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrErXIb8sicDs0OFD8SZUzd6LPYgxfiaCjzNHlHWS5QvEUj2yjx7GzIRvUubiblcEABGffH0DryEl3u6P4aFMBtTlKM/0'),
(245, 'oaCAixKN91SibzM2FfZzoZiwoxP0', '朱名颂', '2', '广州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5ZOMSuLaUTZEI2zVp3mBcjSvABaTO0TBGQfvz1BcsSVlk8vMmQoXoV43SwAicruickCDhbfbFuCGu3YMPj7FpMP2D/0'),
(246, 'oaCAixMvXph5qW6l2NxjnDAG9ZbU', '知足是福', '2', '朝阳', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUk39wgAIvW2F8Fhj5AfqaJicly1aicvVdiaz4NU5vJlIBywqaWTDR1HScicvw4jA81FQ9bBWxvzup7mRb/0'),
(247, 'oaCAixFxDTPnlO2-s46joYGyRXvE', ' ', '2', '太原', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELzjqFJ8Tzy1jGKVr4CcDQ5Auam0z4Pq2m8zZYSavDg9Rz3Gd4GjY5UM9ZysHaBwicf6EjlUGSr3HHfojUib14OdtHwib7sMliauqk/0'),
(248, 'oaCAixESyM38axXK4Ua4OAF9v9jU', 'Zh_城', '1', '潮州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2gfK8w0OtiaePydKr0gpKDSDJK8S3FTpx9ngiaATJJicmjS8qUvXC7Duib9zksNQOqlmNXYsb5Wx5XSp/0'),
(249, 'oaCAixIa1b-YFfEHGbG8fRyNF9lo', '我是农民工', '1', '汕头', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YPHUkoGQKjY3v86mvCQEocLQicfciaV0LKPvSS0ZoAxBZYLlP2oN8vCjNmymymAsNWvlW29kJDicH4ic1tg1efjDBP/0'),
(250, 'oaCAixJdyQrl0fRaWQzMK-GVfPUg', '阿键', '1', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wXicGQ1NzYibUvFV4ibMZOuc6iaayN32eCyJuVBFJ6WjkRUk1Z61zvpTyNE7wLh2iaUURTQ09rKJBET9TbibXNKBKFJqx/0'),
(251, 'oaCAixOw-vnDJt52imt7V7J4Z58g', 'lilan', '2', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2hdNRemvLQO4iaUvibhKicl3nsFwngcA40G0kVWEPjqWoCpJhVvIJR5GgV7xESlAWKzvlKbGGJltoMM/0'),
(252, 'oaCAixHLTfXDnDnbcX9Y5q5caYcc', '陈某某', '1', '', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5FfkTIrEcyeLbOh2I2f1vpsl8ophSh2oKib7W29qxqKhmsRJtwPjttxmoic8eORBuntb3icmpQic7N8eSFzJzqb4m6delG28ib9qn8/0'),
(253, 'oaCAixIGSbrzT-MrpjBx5sODJwRw', '柏俐臣—林湧彬', '1', '广州', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM63UgR1IX4cYRjKGpoj4jZMFzpicfMqHX1ya0ibsHXKeKicCmf07beUAcw2hobUZ4UhQr3viaTviaibfHecBGeDB5wdoxtxuanFsuniaQ/0'),
(254, 'oaCAixPd5-ZndMwH5pLmgqi75VBE', 'PZHome', '1', '湛江', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvJG4BXeFQWbm8ImkdQvMtVpOANv8N891kb7oOPu73epENVQ790yEOwicQtj9V1ibMFf2KDl3spOclC/0'),
(255, 'oaCAixMIb0sVCb_Bnej2YuvPGM3c', '清风徐来。', '1', '深圳', 'http://wx.qlogo.cn/mmopen/SCug0ESSOH91TC5HphHMBY3ZdGMx3Mkd1LpGia6FQSWcQqyE0UrrSlNo76PcKibe41zPPDYOjq5TMGQ8tPvAL19Q/0'),
(256, 'oaCAixCMfxKHakG4hUU9aAz2Icgc', '左龙', '1', '', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDRN6aCibdjN2fuCeanpY0yWvfG98iayJhfL9YxNYxGc1tHap3A1u1kjsFqWAXoiccgHzGiciacFibuHDMw/0'),
(257, 'oaCAixM_GPKEdFSIoaH7-DNU6vqg', '思蜜哒', '2', '', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrF578VrxkcUqphicqQleCToNSSeRyQurgVlBuyQCFP86qDicZocVXd4erZZ9piamM5jxNN9ia6mLflngOCj9umP0aEf/0'),
(258, 'oaCAixKAwHohN3zhr_buy0Q8TpT8', '辣辣辣', '2', '', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrESnWiacPric9rpYbiasQ1r45ecZO4J3gTLjbhpkrCHb0ZMSpzYDaicS4FkyToC0WnxiaasfsFqelibpE3g/0'),
(259, 'oaCAixD7CcspMMp8SIMiCChMnVPY', '杨枫', '1', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wWKbxExSqGNIU5wojbstmynFRf6FicWx63gWlibNiakF4S5INwRo76hPgIrKvOzqh2a4RndRavVbHBVmoD5fsq9qwP/0'),
(260, 'oaCAixIKrRzVqkLAjYqTRpx10Ulg', '楠泉木', '2', '惠州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrEY2bsCL3RTbBsqubicX0weo55cmA9Aibg8owGsLzTeuVm2kx9eV5nENDcQHRc9qEEFuUmMFMhnRzx5lPQib9Pb9Uv/0'),
(261, 'oaCAixHvgyZykrsApSHik8rNHqxE', '婷婷', '2', '', 'http://wx.qlogo.cn/mmopen/qHOdKiczAE6a5A59pzxu4U9ul392EH2w9OETkwNObJZU3ZOWN0helX8vODlvTNIch2vuknJCicQYGd4n8V4icRj0ic4bnTaMPL9Q/0'),
(262, 'oaCAixHTXf4wNm0E1fWSVau9mW1A', 'Joe', '1', '永州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUk0ZerKrBxWGzQKcsFNbTEdYeCSyuAmh32vBkwAxD3hILoLUL7F5hfJ1kCsCtsGEqJzfslribTC9cu/0'),
(263, 'oaCAixJG8VTiM2FtLDxzivERbkpw', '怪瘦', '1', '', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvCEZSyN8f9ibmrxRAibqcwDKgn5daKYUbXSpHmNRj1kYGqUgibGpia2qIbF7Ks1F0naUHauO8OWsxYqg/0'),
(264, 'oaCAixAiJzbcWSKdEth3WKdXuZRQ', 'leon', '1', '闵行', 'http://wx.qlogo.cn/mmopen/T7Qibr4mHkdCt29wx3bpUSzmDicyeR94V2ialEvdtp4ddB1N2Xkj6vaTP3MAU12uxQvUmhsqs5jnNBRkq5FIRXdOB6TEsbBeZLI/0'),
(265, 'oaCAixDRHAYzvXGIQjv8afT6XhmY', '青兔白兔先生', '1', '', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvN3lcD8xajHh73Bn9pDwPC3s3dFU8icyvc7UiaJS8MmSdYWsJTOLCxb6yudMJNQARme7TibVnvVf7vA/0'),
(266, 'oaCAixO7BS3mZLaF7uBzUyGGnIWI', '小 芥末', '0', '', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5aAJr1KHk4HjQ1D2GwKWX6bMvor9EAAiaGZlRWY1y4Ix1GrRBo5t8QTOiasVIJ5ficVIvfrtThJPWwuLMWNickU6HMe/0'),
(267, 'oaCAixFUZgCGVjLzF5dGfh2JZic4', '夏季', '1', '', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YibKITs5ssHIklBTg5JVFc2ow9NqV3CyGE2Ut3UNGFAn2JMdfQTJ0ZUl0S49eBFswjW4qLgfeeiaHuib19Tj2ZTRj/0'),
(268, 'oaCAixL4sH9HL79Dhp-6wskqwek0', '橙白白和鱼黑黑', '2', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUjwEuf9SVRMKjZiareNygEfkuYBzp9oribkSBk9h2UjGl4UvoibaxegDBwhtAf3uwkmquL1TR5bAe5gNd8oPzmh3T/0'),
(269, 'oaCAixJENXEUs0VTjZhm2cbkTTTc', 'hu', '1', '杭州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFTPnTTHPIhO8YciaUicVKFYibG7Fdxavb8aOuTQX23MX7Y2b1zT1iaKSfR9rq5fqkcPtlGFiaWQbxx7Sg/0'),
(270, 'oaCAixDy7AKRDn9Y2-xHmGT0ifTc', '信', '1', '杭州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrHYlEicbRKhbRLZ8uSlgkuN9YB7GBsOscZic0GFl4Wpurl632zJUicAYyHEA9PwKcwX3LVneA146BTpQ/0'),
(271, 'oaCAixDc6yN3eADZXEgmCvzyucAA', 'D-Long', '1', '杭州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUk8pI9LbenxJ8XOLVOm2Py2x6XbK4mdusxCKWvrvDiaqSQGywMUxATGuT5nBy44YeN7BIZPVMKIh8r/0'),
(272, 'oaCAixHEEm8cp7Ju-otghFHmx65U', 'zhidao', '1', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrEiaLiauBXGmUaGnrq0j4mYibd7xphZYyUO09icqTAtghAbGbapwmSnGqqScUyiaY9C6WwLtuBcZO7poa4D5jeSbiaoibS/0'),
(273, 'oaCAixFBdMky_t9uMfVQGvSISv_4', '', '1', '杭州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2l8HxmmeKIzIohicwrrRtxEtdlYMibLCLl2JibDn2h0ON7EyqYvl3kdHQfW4icyqzQnH3BNhCll1jrkC/0'),
(274, 'oaCAixCYq8L_KzxsFLIzfRGV5lNw', '无处不在', '1', '泉州', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YPHUkoGQKjY66hdlXk2rMTNofn6Y8k0ySWBqic12BQQ3HcZiaQYVZicvYqQIm0icGTFVxDcRb6KvjUoseFj2gicaQ83/0'),
(275, 'oaCAixOebnoM5j0umBKLjdVzyobo', '随心。', '1', '深圳', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJarYs7cDeSMcVeT5WzQ6PE8cmJib8ibWVk5BhVmibuAemtUM8BD2kVwH4wy3mrmDp5KlmiaXIib8339kA/0'),
(276, 'oaCAixHnA_tOEXcoIVweUyJPqjEI', '逸', '1', '益阳', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2jSPhOvzLYM24s0jBFYB14RU4exvT2kxV4wbcel4HmGZMPT2BEYuPfxdy4IfS8LFBqHQd1SSgAk5/0'),
(277, 'oaCAixNmGh6ipdnoUv9FEYhVlpDE', '自由的风', '1', '长沙', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBnBSUFpKjuyJVjPErFukRRLcELhGmgLxV3VFM300iclapHt9ZRhXG0481VKJPWbHccQHxMY08fSTA/0'),
(278, 'oaCAixPINJGTi3hZl4V0Zc1HmmKw', '荷花', '2', '绵阳', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wXfIeG2e9kWdLSRqmLkRvNsiaWb26f4hUeQ5JsBy19NgewPe46K8Jp7WmcQP0utI5ibbDUesZvduUMv5UnBepCZ4R/0'),
(279, 'oaCAixN2hIE1rnQVoYwBrg5fa4cc', '', '2', '西安', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM63UgR1IX4cYRjKGpoj4jZMaiciaibxKebtwq9VzQggsgNGmtEPiaB1xFnSlhmOnsD06AJiaibrF2ohqZtyHLmNAKvfLtHiaWr5bdC2Fo/0'),
(280, 'oaCAixIti7m-V_FFU5iE-B8k78NU', '播克(储承惠）', '2', '商洛', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wXxib9W3ibsOWk9lAIepGMex2VjK9b5iclNSth2SbT7giaagX1qOOcoSDPXyDG4Vp3gGR0QztoAkn2eicFUKfsKk9uQS/0'),
(281, 'oaCAixExehptWW7loaDwt1ojtqyM', '磊磊', '2', '兰州市', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUk1xzS8rgfpialgHvNRtao7icZfBh4UsdAhQjMa1jF8TGpcX1V4h7DZiay7PKicRZ4R02dBeQeV1QoDoH/0'),
(282, 'oaCAixD0Wl79AmprBjK_8UONWbXw', '叶灿', '1', '广州', 'http://wx.qlogo.cn/mmopen/tcliaduqKKyTUeuVeMPSibOFMVFDQjIP3PicpU9q6ubicrZ2Hkep32iaEY8yibKldYf8Vylorz3yrYySqNKwCr33guaH4KApvI5x6H/0'),
(283, 'oaCAixGcZ-8CnVA9bF-EEE5nxm2E', '李艳婷☀️', '2', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrEzaBq4wcb7QW4GpGa6amtfvRJ2aJnaAF3DVDkJqC995ks7Y4LzvddsPW313KXsl2yaXuyDXz45HaHjvjwYEtCP/0'),
(284, 'oaCAixHOQ8071pbzU5GCc4mg-EKk', '懂༯你༯才༯懂༯爱༯', '2', '汉中', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YPHUkoGQKjY2fQ5b1j1T7Iib3K06FUvecibWj3Iv6PKVbvr3Pwkg92netydicxWYkKpwvR7pjWacfWLc43GJYEEIm/0'),
(285, 'oaCAixDBXsJOqYRnVxe1xT3NsD5g', '一切顺其自然，', '2', '商洛', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7dlhVDiaQgeppZ71nmBlaibjSXCfGtqaKsokfTFAKCpfZ1qFO8aXLW3QiaA3DP7RDFNh7Ug3Jay8ZRHSVVRkIp1fNZzFxb86vcSo/0'),
(286, 'oaCAixJ_vCCy38nccN_iCd_UbCsM', 'Francis 小贝', '1', '深圳', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELjQRic8NicxjVd4R9GccH9lzZdiaDtgl6xxAUNTJBKpicpWwChOA2CwdibRQP1ibBnxU9VfbTdjiaqTGTOu5xHmtjuAxMZCH8Hs9ibLVI/0'),
(287, 'oaCAixBwYG_U4vjBqlp6TUw8mwLM', '灿宝', '2', '益阳', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5ZrrVffsI9hz5kib2DQYIF1ee30vYjUz0Sgghyb3SHwOfKic6gsOZOSMv2fkbHF8LQiaagF79B4ribia7ib7oDbRRiaBMh/0'),
(288, 'oaCAixOHVwNDAz4G4tGBpcz351yc', 'A播克M.Q家族李琳', '2', '德阳', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrHLBzmsLj1y8bSPSRicrEodKpH4QGibag330fibxdKUHcvRIH2lqIT7hicEB2REPahm4fpBpfv1gtwyjOVAMW5lr9ph/0');
INSERT INTO `tgs_wxuser` (`id`, `wxid`, `name`, `sex`, `live`, `pic`) VALUES
(289, 'oaCAixAJsNgGsVvsT8XjSGQJWyjA', 'POKUE®播克面膜助理号', '2', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2kaPl9h2yDh8LktxynneRMia4eDRcYNoJ7lCBb7dMszNebfyDzbK7bVDwAictwoa1Jq5biaTUqlpxm7/0'),
(290, 'oaCAixPuRD15RAAuqnUxnaGlr1pA', '安然&播克蚕丝面膜', '2', '郴州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrE1zlWtibQGsUhNBLia5Pdb29ZBchA7YgTmyXXD6W6uAiamrFsZdQ39qmjvukj9yoXVgMhPibM6PWUTuL36DLibX37xA/0'),
(291, 'oaCAixGklc6T0Qz20IA7gNuFIXjs', 'A+日落之吻', '2', '', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5b4ZcLzA35ChE2GM2clD4vQLeeOVdKrFFepJ1LytdOQrCOibvCAE8arzCvpkDdlZI3p1ictN70mGTiardNDcde75L0/0'),
(292, 'oaCAixBohsISV0jiAl5wj-COcp4c', '刘嘉铭 播克漢古养生护肤', '1', '日照', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YPHUkoGQKjYwl3Niagffw18nq845Rr4hhAFvGFeOaUgYZ0dib7WiawyoSibmPZZyeCIfaoZVB8AluQsEdauLMojblB/0'),
(293, 'oaCAixE993KDDQ9VdJrClZwiM5b4', '梵扣周蓉-播克面膜纳米漱口水', '2', '成都', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIoKtYLcAGx5jgAMJuUyWVzdCzMYyIb1yMOjcWk0ZYSt3pTwgBibFoHEIh7IGWZZdibbFJ7dtVJpleA/0'),
(294, 'oaCAixDz3TvFlFKqWjyt3kLwWg2w', '张雪 一纳米漱口水', '2', '周口', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2g8QZBSXe1UpeSkichFXpWdkn5u6G5NrLDhQuu7MqsrU6brBBicxyKDeBZ945dSn2mKSyZ7gjwcWDq/0'),
(295, 'oaCAixJEaGHBcEULAGycQwE_llFs', '旋旋', '2', '巴南', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUar6EBXLef8XS6WqTgHqzP7JVmdsx666gg9v32CRoRicfGZZsI2rCtqO7lkaLlFotGbwrab7jSvLiaYic1II0FZBl/0'),
(296, 'oaCAixL6LFb7Wp4Pk7c9BgjxHQ_U', 'Jin', '1', '十堰', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wWSa1a0PA8ic2K8lJaUZxTB8lR28ibl9K37gqsvt7ZjekWrOgMcpmm3vsQ1icKBOXpXq71XnlJkO4tP2NAdkOH11iaw/0'),
(297, 'oaCAixA7rpSZT-2TnoC-TUrOXRQk', '，', '2', '朝阳', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVyb5NtuvxoFqnK3AN4IE5vcNogmw5yJdz5a29o4N68eILmQ5Ammz8gIhOrDZYGGuTvHhHjCiaKau8WCYPFUCHX9/0'),
(298, 'oaCAixPYb4cSY2Lqz8D6tnHrXJpQ', '强粤海绵厂', '2', '', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5bubcTia5LhTKgmvZPLibqWOXRL2oziaZC9La56oYNLfo6KwVw42eSfFPKE5ZFR3sNZgBDByM8WZNC1IzAFth0aTEG/0'),
(299, 'oaCAixNReuUTLkNx42scwVjw51v8', 'Never', '1', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUxEX3MDNNZJZfKGick4fUoddYwDXruib8cnkdMbcE2fJic0vEw42sWUwNiboN13qicgIFEicSWQjxWG5eicT2NPaTTITF/0'),
(300, 'oaCAixH7vQp_OV8fuxWWxmAE_9jk', '陈辉滨der', '1', '汕头', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM78Tex5CjAbCOJiaqMNGYas7Q16adzgwGTNaHHERSv6icEUoGNQ1Wu5IM4jgMFOfKVyHwibUh6TzVWaA/0'),
(301, 'oaCAixD90JQJWBp-Ke1xafXilXD8', '左培儿', '1', '绵阳', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVftZyFwqh8KMKt1bGWZ7DeEXvRLtC4qEIe0FB3RNY7EMUmzBuCWiaQibgicAIRqxRMEIWib2PAvbuB3eNqI8F9NHIa/0'),
(302, 'oaCAixEPRkee53DDhBzqgni0RC0o', '播克培训师', '2', '广州', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUNtUsnGQSUkynTwSxhRWumFnc96VM4eXQrQu8JVylGgibib3PopGrAALicHwxnkcdD09cwM8JFwbG5XFnJtaVjp1I/0'),
(303, 'oaCAixAcmpuvraPUJZvZSYHzV4VE', 'tian梨儿', '2', '绵阳', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5YATPg8HkPMvIH1kXvCvcyia1sbvmLRLyWa1YiahIibNlsNCnb8ffgh2l0RfEoibHkdYEhLTJiaKdlg0uP9jqdxjaQics/0'),
(304, 'oaCAixIYmshkPCxhV1Am2qDNBpGs', '冬梅 子', '2', '绵阳', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELTY8AaBIEfbnKFaGeB8EcTQjuDrQa6AtoKFUvpPndialASXZF2DpibkhqsKURuXUVb51zT1XucG6eA/0'),
(305, 'oaCAixHh9K26F7DRutK8BxJr8orc', '梦幻', '2', '绵阳', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDmtfPqb3bNQe1LE2jN59eoB8PlibImYCia1JKRQo6CRLm4DTlwRK77ht8VWZyMvDUp0RypTFdck1eQ/0'),
(306, 'oaCAixNspxwTsoe8mFRjud6rRm8Q', ' ', '1', '', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrE1zlWtibQGsUsDHSNJaMlWIicicQraG4WHCWGvFNs4atxNeSK2riafr0vj0uRNMYmo4txSnnn73vBCcwxzR1OevLhX/0'),
(307, 'oaCAixOHSJSjrzqfX2cOQIezHpIg', '平淡一生', '2', '绵阳', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wVkbSYJkVBdrZTnVuCSJ2Oeibxg3icgKiaYJ6kkYV8vKuHUftGcS9m9jUibsP4rE8e9O85TEsEwtRGMORjEJPF8RslA/0'),
(308, 'oaCAixFfbRtyIc_VgaxmROvnW0lQ', 'freetime', '1', '', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCJP7m139FgumoIeHQRibBCfbHAojD4fzaohoibRicIXSUzQaz9PduHb0t9Z2smGZ3M1AUYJictw4EsCg/0'),
(309, 'oaCAixA0IwV5g-SmVTU8K5FpWO1g', '归归', '2', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrHMXQn2DPLIJNxD9k9Uf0fBK2kFy1b4akfhic5xxaFe7XNJ4KNk2CuOoqbiap8BTicE8IkW4DvjibxtBMtpRUkNbgol/0'),
(310, 'oaCAixI8CSuKGjNM_Wi9eoViFn7I', '风影', '1', '广州', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHicykXSZVBYsF4aHfKFMxYMic1BohvUy6TicjPK2B3sbv0vMzv8KISzsGnYHugdLaDlsJneeoI6Rp41p7FibVkBFVPu/0'),
(311, 'oaCAixLeEfkrHLbDE0PZKUOH7bNk', '小雪', '2', '丰台', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHicykXSZVBYsFibSjGblvZQI1kvB87Cicsia7cg93UeJCXDjfibFMxX9PFcOSib5suiclUsVicVPrfpcumeONWcsOVKZibaI/0'),
(312, 'oaCAixE_wCRg7HEkYLufMSYtQwck', '來碗甜不辣o(╯□╰)', '2', '', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUAoE5Luib4gBxTYsczVeRV4OfKOibWPhTF9L01pEOI7Ph9pcD6OS0BTib6FNR1Z2WmtibiciayiaksEYLSDJeL9rNKVE6/0'),
(313, 'oaCAixNkzfHzf5aaAZlOkC54ZiO0', '刘华钦', '1', '南昌', 'http://wx.qlogo.cn/mmopen/ft2iaQTCOs5aB2XAO2aqibP0OJ99K3yhjOoqNVCz9XB9uwT5P6BooEbenuTLanKFuTV49qvAUS8HibSicLNmzmfm8t4V6TFHnIK2/0'),
(314, 'oaCAixFl9gcgezeHd4mYhBom_HFM', '珊珊', '2', '', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2gDp6Oic3aMyAEiaK3dlTa4cGfwFSZqam325gugpSUviaiaoq9JlkHbPfwrSed8zqic83Xn7ia35NJa5u2/0'),
(315, 'oaCAixAyViOPNrti-EjujhDg5uiA', '招财猫-Daisy', '2', '', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2nl9cM2qXrfNQluGBRcX1VudvpAbicLyur1ib1YaBU2nQ6bR6WRh4zDJUWJB0MoIlhyaKexeRAvFz5/0'),
(316, 'oaCAixOvif5pAr7991RGuDXDk3gs', '爱笑。', '1', '衡阳', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrFJvX2yLUGE2pfHcuiaFn4uP88OZ3ajiaBdnvydpYNVtiaqOaE5oKa8kPSnxP9YZtWdP2ib9HPXycXAdFk4T6Ns4Hbic/0'),
(317, 'oaCAixE9OlobG30X_Dmt61xGU9-g', '燕归来', '1', '湛江', 'http://wx.qlogo.cn/mmopen/SCug0ESSOHicT9WD2DamUV34MSRDTKng6ic7GIqa2ASzwtEMcatRRzW7BnVk6FK3jVibMHclek4xwPiczvpG00lttSDHN0UCvFEC/0'),
(318, 'oaCAixPsBGdUablyPug3kvbCHw-4', '污污污尾熊', '1', '湛江', 'http://wx.qlogo.cn/mmopen/zsB1EBibeNmjlibHsCAyFjqicp3HPvlGp71dKnCZOqIpW3e02kiclfndgOHGjroxdDPKcx3dSCnxqZhnhEgVG9khGCR0ibhGNO81A/0'),
(319, 'oaCAixNJi-aknhI9O2V3vmW9iYQQ', '', '2', '佛山', 'http://wx.qlogo.cn/mmopen/SCug0ESSOH9zibvHpxaRol0yBFcbMQF4hcBY57PicQzyFwrTtRNibcvw0KSANpMUs6HibYT4Gpx90nVrJV76JNaoVhVibAaxZVtHj/0'),
(320, 'oaCAixHddMVb1lkjADNrNlLhVURk', '『夜』', '1', '贵阳', 'http://wx.qlogo.cn/mmopen/1suibTC0J1wUTBaFicLHlAaomGhl7iaX8AAZvHXSzoDdcJwiapITOfo1eaCgTatCicH1ZtDrY6VXIe0ROhWhGhrKDbHtfW8WIzhpG/0');

-- --------------------------------------------------------

--
-- 表的结构 `tgs_zpuser`
--

CREATE TABLE IF NOT EXISTS `tgs_zpuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wxid` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `live` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  `num` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `tgs_zpuser`
--

INSERT INTO `tgs_zpuser` (`id`, `wxid`, `name`, `sex`, `live`, `pic`, `num`) VALUES
(16, 'oaCAixG4iAvvmNZBgGL95fAzZeM8', '陶志锋', '1', '广州', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrGeZpib4x0HEno6nac5Eybt97gIFCtzibHmZgwBdNsGmvtJcPibwWhwqvWM38jnQqdCREUTwaXaB8gwJj8zhXgWKe4/0', '2'),
(15, 'oaCAixNXJSH0SWOXgOagoyQNO8so', '♚sunnyday', '1', '吉安', 'http://wx.qlogo.cn/mmopen/LjQmhzIQCrE1zlWtibQGsUtxM6nCT8Hu2kuNQJGTGHaqiaRgV1AS6Q3Xb6yhEgN63rWO2u7ZImcdTPNWkhK48qmJOicBPfQwOMH/0', '2');

-- --------------------------------------------------------

--
-- 表的结构 `tgs_zpusers`
--

CREATE TABLE IF NOT EXISTS `tgs_zpusers` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `phone` varchar(64) NOT NULL,
  `giftName` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `tgs_zpusers`
--

INSERT INTO `tgs_zpusers` (`id`, `phone`, `giftName`) VALUES
(19, '132', '话费20元'),
(20, '132568', '话费20元'),
(21, '13245688669', '话费20元'),
(22, '13392612121', '话费20元');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
