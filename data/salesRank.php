<?php
include('../config/common.conf.php');//引用公共样式和函数类库
//print_r($_SESSION);
@$dlid = $_GET['dlid'];//数据类型参数
@$days = $_GET['days'];//日周月参数
@$bid = $_GET['bid'];
@$gid = $_GET['gid'];
@$type=$_GET['type'];
// $arr=[];
// $arr[]=$dlid;
// $arr[]=$days;
// $arr[]=$bid;
// $arr[]=$gid;
//print_r($type);die;
if($gid == ''){
	$gid = 0;
}
	
//print_r($dlid);die;
if($type=='dl_lings'){/*查询代理数据和零售数据*/
	// print_r($dlid);die;
	// echo "123";
	
	$arr = array();
	$sql = "SELECT tgs_agentbrand.brandname,tgs_agentbrand.dengjiname,tgs_agentbrand.brand_id,tgs_agentbrand.agent_id,tgs_agent.name,tgs_agent.weixin from tgs_agentbrand,tgs_agent WHERE  tgs_agentbrand.sjdl in ($chaxunc) and tgs_agentbrand.brand_id = '$bid' and tgs_agent.id=tgs_agentbrand.agent_id";
	//查询当前代理商下面所有的代理人信息
	//echo $sql;die;
	$res = mysql_query($sql);
	//print_r($);
	while($row = mysql_fetch_assoc($res)){
		//print_r($row);die;
		if($days=='day'){/*查询日数据*/
			// $sqlt="SELECT sum(order_big*20+order_small) as buyall FROM tgs_order WHERE order_agentid='{$row['agent_id']}' AND order_mode='$dlid' AND order_bid='$bid' AND order_gid='$gid'  group by order_agentid order by buyall desc";
			$start = strtotime(date('Y-m-d 00:00:00'));
			$end = strtotime(date('Y-m-d 23:59:59'));
			$sqlt="SELECT sum(order_big*20+order_small) as buyall,from_unixtime(order_time,'%Y-%m-%d') as days from tgs_order where order_agentid='{$row['agent_id']}' and order_mode='$dlid'  and order_bid='$bid' and order_gid='$gid' and  order_time between $start AND $end group by order_agentid order by buyall desc";

			//echo $sqlt;
			
		}else if($days=='zhou'){/*查询周数据*/

		}else if($days=='month'){/*查询月数据*/

		}
		
		//echo $sqlt;die;
		$res2 = mysql_query($sqlt);//得到代理商卖出商品的箱数盒数
		while($row2 = mysql_fetch_assoc($res2)){
			//print_r($row2['buyall']);
			if($row2){
				$row['buyall']=$row2['buyall'];//盒数
			}else{
				$row['buyall']= 0;
			}	
		}
		$arr[]=$row;
	}
	echo json_encode($arr);	
}


?>