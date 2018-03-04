<?php
	include('../config/common.conf.php');
	//p($_REQUEST);die;
	//$type = $_REQUEST['type'];
	//p($type);die;
	$time =time();
	$order_id=$_REQUEST['order_id'];//要收货的订单ID
	$big=$_REQUEST['big'];//要收货的箱数
	$small=$_REQUEST['small'];//要收货的盒数
	$order_gid=$_REQUEST['goods_id'];//要收货商品id
	$order_toagentid=$_REQUEST['agent_id'];//要收货的代理商ID
	

	if($type=='sure'){
		$sql = "update tgs_order set order_inspected = 2,shou_time = '$time' where order_id ='$order_id' and order_gid ='$order_gid' and order_toagentid ='$order_toagentid'";
		//echo $sql;
		$res = mysql_query($sql);
		if($res){

			$sql = "select big,small from tgs_store where agent_id = '$order_toagentid' and goods_id='$order_gid' ";
			$data =$mysql->get_one($sql);
			$before_big = $data['big'];//原来的库存箱数
			$before_small = $data['small'];//原来的库存盒数
			
			$total_big = $big+$before_big;//退货回来的箱数+原来的箱数库存
			$total_small = $small+$before_small;//退货回来的盒数+原来的盒数库存

			$sql2 = "update tgs_store set big ='$total_big',small = '$total_small' where goods_id ='$order_gid' and agent_id ='$order_toagentid'";
			$result = mysql_query($sql2);
		}
	}
	//取消收货之后执行这段代码
	if($type=='cancel'){

		$sql = "update tgs_order set order_inspected = 0,shou_time = '$time' where order_id ='$order_id' and order_gid ='$order_gid' and order_toagentid ='$order_toagentid'";
		//echo $sql;
		$res = mysql_query($sql);
		if($res){
			$order_agentid=@$_REQUEST['order_agentid'];//要收货的代理商ID
			//取消收货，查询该商品发货的代理商原来的库存
			$sql = "select big,small from tgs_store where agent_id = '$order_agentid' and goods_id='$order_gid' ";
			$data =$mysql->get_one($sql);

			$before_big = $data['big'];//原来的库存箱数
			$before_small = $data['small'];//原来的库存盒数
			
			$total_big = $big+$before_big;//退货回来的箱数+原来的箱数库存
			$total_small = $small+$before_small;//退货回来的盒数+原来的盒数库存
			//echo $sql;die;
			//更新原来的库存	
			$sql2 = "update tgs_store set big ='$total_big',small = '$total_small' where goods_id ='$order_gid' and agent_id ='$order_agentid'";
			$result = mysql_query($sql2);
		}
	}





?>