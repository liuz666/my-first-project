<?php
//设置时区
session_start();
//error_reporting(0);
date_default_timezone_set('PRC');
//声明编码
header("Content-type:text/html;charset=utf-8");
//错误报告
error_reporting(0);
// print_r(__FILE__.'<br/>');
// print_r(dirname(dirname(__FILE__)));
//目的：确定我们的本地路径
define('BOOT_PATH',dirname(dirname(__FILE__)));
//常量，设置之后不会变
//define('WEB_PATH','http://www.wengdo1.com');
include(BOOT_PATH.'/data/common.fun.php');
//include('include/common.fun.php');
$url = '127.0.0.1';
$user = 'root';
$password = 'root';
$database = "test";

// $url = "bdm253137238.my3w.com";
// $user = "bdm253137238";
// $password = "tao1988717";
// $database = "bdm253137238_db";

$conn = conn($url,$user,$password,$database);
//require (BOOT_PATH.'/common.data.php');
//require (BOOT_PATH.'/include/pagination.php');
$weixin = $_SESSION['weixin'];//存储在session的微信名

?>