<?php
include('../config/common.conf.php');//引用公共样式和函数类库
//查询代理商是否有自主品牌，用来判断是否需要新建库存功能
if($type=="personal"){
		$sql="select id from tgs_agent  where weixin='$weixin'";//查询代理商ID

		$arr =$mysql->get_one($sql);

		$id= $arr['id'];

		$sqlr = "select bid from tgs_brand where brand_adminid = '$id'";//通过ID查询是否拥有自主品牌
		//echo $sqlr;
		$array= $mysql->get_all($sqlr);

			if($array){
				echo json_encode($array);
			}else{
				echo 0;
			}
		
	//array_push($arr,$is_show);
}	
//查询代理商的个人信息
if($type=="name"){
	$sql="select name,weixin,id,phone from tgs_agent  where weixin='{$weixin}'";
	$arr =$mysql->get_one($sql);
	echo json_encode($arr);
}


//执行脱离团队事件
if($type=="break"){

	$sqlw="select id from tgs_agent  where weixin='{$weixin}'";

	$array = $mysql->get_one($sqlw);

	$id = $array ['id'];

	$sqle = "select is_show from tgs_tuoli where t_agentid ='$id'";

	$is_show =$mysql->get_all($sqle);
	if($is_show){
		echo json_encode($is_show);

	}else{
		echo 0;
	}
	
}

//
if($type=="breakaway"){
	$personalId = $_REQUEST["personalId"];
 	$sql = "select id,name,weixin from tgs_agent where id ='{$personalId}'";
 	$res =$mysql->get_one($sql);
 	if($res){
 		$data = array(
 			't_name'=>$res['name'],
 			't_agentid'=>$personalId ,
 			't_weixin'=>$res['weixin'],
 			'is_show'=>1,
 			'addtime'=>date('Y-m-d:h:i:s',time()),
 			);
 		$table = "tgs_tuoli";
 		$ress =$mysql->add($table,$data);
 		if($ress){
	 		$sql = "select is_show from tgs_tuoli where t_agentid ='{$personalId}'";
	 		$is_show = $mysql->get_one($sql);
	 	}
 	}
 	//p($is_show);die;
 	echo json_encode($is_show);


}



?>