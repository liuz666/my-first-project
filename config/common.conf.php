<?php
//设置时区
session_start();
//error_reporting(0);
date_default_timezone_set('PRC');
//声明编码
header("Content-type:text/html;charset=utf-8");
//报告s所有错误
//error_reporting(E_ALL);
error_reporting(0);
// print_r(__FILE__.'<br/>');
// print_r(dirname(dirname(__FILE__)));
//目的：确定我们的本地路径
define('BOOT_PATH',dirname(dirname(__FILE__)));
//常量，设置之后不会变

include(BOOT_PATH.'/config/mysql_class.php');

$mysql = new Mysql('127.0.0.1','root','root','test');
//$conn = new Mysql('bdm253137238.my3w.com','bdm253137238','tao1988717','bdm253137238_db');
$weixin = $_SESSION['weixin'];
include('../data/common.php');
$type=@$_REQUEST['type'];

?>