<?php
include('../config/common.conf.php');//引用公共样式和函数类库

if($type == "appid"){

	$appid = $_REQUEST['appid'];
	$sql = "select * from tgs_app where appid = '$appid'";
	//echo $sql;
	$data = $mysql->get_one($sql);
	// $sqlw = "select status from tgs_install where appid = '$appid'";
	// //echo $sql;
	// $dataw = $mysql->get_one($sqlw);
	//$data['status']= $dataw['status'];
	echo json_encode($data);

}

if($type == "install"){
	$appid = $_REQUEST['appid'];
	//s$mysql->p( $_REQUEST);die;
	$sql = "select * from tgs_app where appid = '$appid'";

	$res = $mysql->get_one($sql);
		
	$data= array(
    'uid' => $acid,
    'appid' => $appid,
    'apptitle' =>$res['apptitle'],
    'status' =>1,
      );
//$mysql->p($data );die;
	$table='tgs_install';
  //调用函数add();
 $rest = $mysql->add($table,$data);
 if($rest){
 	echo 1;
 }else{
 	echo 2;
 }
}




