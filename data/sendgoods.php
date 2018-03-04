<?php
include('../config/common.conf.php');//引用公共样式和函数类库
// $weixin = $_SESSION['weixin'];//获取当前代理商的微信号
//代理发货
if($type=="send"){
	$sql = "select id from tgs_agent where weixin='$weixin'";//查询当前代理商所有信息
	$result = mysql_query($sql);
	$array = mysql_fetch_array($result);
	//p($_REQUEST);
	$order_agentid = $array["id"];//发货人的代理商ID

	$order_toagentid= $_REQUEST['id'];//收货人的代理ID

	$order_bid=$_REQUEST['bid'];//发货的品牌id

	$order_gid=$_REQUEST['gid'];//发货的商品id
	  
	$name=$_REQUEST['DL'];//要新建库存的商品名称

	$bigbox=$_REQUEST['big'];//要添加的箱数
	if($bigbox==''){
		$bigbox= 0;
	}
	$smallbox=$_REQUEST['small'];//要添加的盒数
	if($smallbox==''){
		$smallbox=0;
	}
	$order_mode = 1;//代理发货
	$order_inspected = 1;//默认发货中状态
	$order_time = time();//订单生成时间时间
	 	//$receipt_time = 0;//收货中时间默认为零。收货人收货在更新时间
	$dingdanhao = date("i-s");
		//p($dingdanhao);
	$dingdanhao = str_replace("-","",$dingdanhao);
	$order_number = "DL".$dingdanhao .= rand(10009,9999999);//随机生成订单号

	$sql_store ="select * from tgs_store where agent_id = '$order_agentid' and goods_id = '$order_gid' ";//c查询该产品的库存
		$store =$mysql->get_one($sql_store);
		$big = $store['big'];//库存的总箱数
		$small = $store['small'];//库存的总盒数s
		$sub_bid = $big-$bigbox;//总数减去发货箱的数量
		$sub_small = $small-$smallbox;//总数减去发货盒的数量

	if($bigbox!='' || $smallbox!=''){
		$sql="insert into tgs_order(order_bid,order_gid,order_agentid,order_number,order_big,order_small,order_toagentid,order_mode,order_inspected,order_time)values('$order_bid','$order_gid','$order_agentid','$order_number','$bigbox','$smallbox','$order_toagentid','$order_mode','$order_inspected','$order_time')";//把发货信息插入数据库订单表
		//echo $sql;
		$res = mysql_query($sql);
		if($res){
			$sql = "update tgs_store set big = '$sub_bid',small = '$sub_small' where agent_id = '$order_agentid' and goods_id = '$order_gid' ";
			//echo $sql ;die;
			$result = mysql_query($sql);
		if($result){
			echo 1;//插入成功返回1
			}
			
		}else{
			echo 2;//插入失败返回2
		}
	}else{
		echo 3;
	}
	
 }	


//零售发货
if($type=="resale")
{
	$sql = "select id from tgs_agent where weixin='$weixin'";//查询当前代理商所有信息
	$result = mysql_query($sql);
	$array = mysql_fetch_array($result);
	//p($_REQUEST);
	$order_agentid = $array["id"];//发货人的代理商ID

	$order_toagentid= 0;//收货人的代理ID

	$order_bid=@$_REQUEST['bid'];//发货的品牌id

	$order_gid=$_REQUEST['gid'];//发货的商品id
	  
	// $name=$_REQUEST['DL'];//要新建库存的商品名称

	$bigbox=0;//要添加的箱数

	$smallbox=$_REQUEST['small'];//要添加的盒数
	$order_mode = 0;//零售发货
	$order_inspected = 2;//默认零售发货状态
	$order_time =time();//订单生成时间时间
	 	//$receipt_time = 0;//收货中时间默认为零。收货人收货在更新时间
	$dingdanhao = date("i-s");
		//p($dingdanhao);
	$dingdanhao = str_replace("-","",$dingdanhao);
	$order_number = "LS".$dingdanhao .= rand(10009,9999999);//随机生成订单号

	$sql_store ="select * from tgs_store where agent_id = '$order_agentid' and goods_id = '$order_gid' ";//c查询该产品的库存
		$store =$mysql->get_one($sql_store);
		$big = $store['big'];//库存的总箱数
		$small = $store['small'];//库存的总盒数
		$sub_bid = $big-$bigbox;//总数减去发货箱的数量
		$sub_small = $small-$smallbox;//总数减去发货盒的数量

	if($smallbox!=''){
		//零售发货，把发货信息插入数据库
		$sql="insert into tgs_order(order_bid,order_gid,order_agentid,order_number,order_big,order_small,order_toagentid,order_mode,order_inspected,order_time)values('$order_bid','$order_gid','$order_agentid','$order_number','$bigbox','$smallbox','$order_toagentid','$order_mode','$order_inspected','$order_time')";//把发货信息插入数据库订单表
		//echo $sql;die;
		$res = mysql_query($sql);
		if($res){
			//发货成功后把发货数量算清楚后更新到该代理商所发产品的库存里去
			$sql2 = "update tgs_store set big = '$sub_bid',small = '$sub_small' where agent_id = '$order_agentid' and goods_id = '$order_gid' ";
			//echo $sql ;die;
			$result = mysql_query($sql2);
		
			echo 1;//插入成功返回1
			
		}else{
			echo 2;//插入失败返回2
		}
	}else{
		echo 3;
	}
	

}







?>