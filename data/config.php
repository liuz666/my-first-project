<?php
include('../config/common.conf.php');//引用公共样式和函数类库
//通过app应用插件页面直接进来的
if($type == "config"){
	$appid = $_REQUEST['appid'];
	// /$mysql->p($appid);die;
	$sql = "select ti.uid,ti.appid,ti.in_id,tap.listarray,tap.apptable from tgs_install as ti left join tgs_app as tap on ti.appid = tap.appid where ti.appid = '$appid' and ti.uid = '$acid'";
	
	$data = $mysql->get_one($sql);

	echo json_encode($data);
}

//第一次安装执行代码
if($type == "basicconfig"){
	$appid = $_REQUEST['appid'];

	$table = $_REQUEST['table'];

	$sql = "select in_id from tgs_install where appid = '$appid' and uid = '$acid'";
	//echo $sql;s
	$data = $mysql->get_one($sql);

	$installId=$data['in_id'];

	$sqlw = "select * from tgs_".$table." where appid = '$appid' and cuid = '$acid' and install_id='$installId' and number = 1";

	$configdata = $mysql->get_one($sqlw);
				$id = $configdata['id'];

	$sqlt = "select tel,checked,c_id from tgs_check where appid = '$appid' and uid = '$acid' and ins_id='$installId' and tableid = '$id'";
	$datad = $mysql->get_one($sqlt);

	if($datad){

		$data=array_merge($configdata,$datad);

		echo urldecode(json_encode($data));

	}else{
		echo urldecode(json_encode($configdata));	
	}
}
	
//新建活动执行代码
if($type =="newadd"){
	$appid = $_REQUEST['appid'];

	$table = $_REQUEST['table'];

	$id = $_REQUEST['id'];

	$sqlw = "select * from tgs_".$table." where id != '$id' and number = 1 and cuid = '$acid' ";
	//echo $sqlw;die;
	$configdata = $mysql->get_one($sqlw);

	$tableid = $configdata['id'];

	$sqlt = "select tel,checked,c_id from tgs_check where appid = '$appid' and uid = '$acid' and tableid ='$tableid'";

	$datad = $mysql->get_one($sqlt);
	
	if($datad){
		$data=array_merge($configdata,$datad);
		echo urldecode(json_encode($data));	
	}else{
		echo urldecode(json_encode($configdata));	
	}

	
}

?>