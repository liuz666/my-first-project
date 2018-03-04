<?php
include('../config/common.conf.php');//引用公共样式和函数类库
//投票app基础配置数据
if($type == "toupapp"){
	//$mysql->p($_REQUEST);
	include("../app/toupapp/configbasic.php");
	//$mysql ->p($_FILES);die;
 }
//金蛋投票app
if($type == "jindanapp"){

	include("../app/jindanapp/configbasic.php");
 }
 //漱口水大战细菌APP
if($type == "sksapp"){
	//echo 111111;

	include("../app/sksapp/configbasic.php");
	
 }

 ?>