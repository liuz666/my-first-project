<?php
include('../config/common.conf.php');//引用公共样式和函数类库$type=$_REQUEST['type']
 $type=$_REQUEST['type'];
 
if($type=="session"){
	$dengji = $_SESSION['dengji'];//session里的等级
	$name = $_SESSION['name'];//姓名
	$sql = "select agent_num_login from tgs_agent where weixin ='{$weixin}'";//通过登录中的微信查询是否是第一次登陆
	$data = $mysql->get_one($sql);
	$logins = $data['agent_num_login'];//登陆次数
	$arr=array();
	array_push($arr,$weixin,$dengji,$name,$logins);
	echo json_encode($arr); 
}
?>