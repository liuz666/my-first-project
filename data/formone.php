<?php
include('../config/common.conf.php');//引用公共样式和函数类库
//投票APP
if($type == "toupapp"){
	include('../app/toupapp/configgift.php');
}
	
//金蛋app
if($type == "jindanapp"){
	
	include('../app/jindanapp/configgift.php');
}


//zzapp
if($type == "sksapp"){
		//echo 'qq';
	include('../app/sksapp/configgift.php');
}
?>

