<?php
include('../config/common.conf.php');//引用公共样式和函数类库
//p($chaxunc);die;
if($type =="management"){
	$management = array();
	$sqlr = "select brandname,brand_id,dengjiname from tgs_agentbrand where agent_id = '$acid'";

	$rest = mysql_query($sqlr);
			//echo $val['brandname'];
	while($row = mysql_fetch_assoc($rest)){

		$sql = "select djname,id from tgs_dengji where d_bid = '{$row['brand_id']}' order by jibie DESC";//查询等级表的所有信息,倒叙	
			//echo $sql;
		$res = mysql_query($sql);

		while($arr = mysql_fetch_assoc($res)){
			 
			$sql = "select ta.id from tgs_agent as ta left join tgs_agentbrand as tab on ta.id = tab.agent_id  where tab.sjdl in ($chaxunc) and  tab.dengjiname ='{$arr['djname']}' and tab.brand_id = '{$row['brand_id']}'";//统计每个级别的人数
				//echo $sql;
				$query = mysql_query($sql);
				
				$total = mysql_num_rows($query);

				if($total==0){//如果查询结果都空则赋值
					$total = 0;
					// p($total);die;
					$arr['total']= $total;
				}else{
					$arr['total']= $total;
				}

				$row['dengji'][]=$arr;
		}
		$sql = "select sjdl from tgs_agentbrand where sjdl in ($chaxunc) and brand_id = '{$row['brand_id']}'";//查询当前代理商下面所有的代理人数
		//echo $sql;die;
		$query = mysql_query($sql);
		$total = mysql_num_rows($query);//统计全部成员人数
		//************************
		$sql1 = "select sjdl from tgs_agentbrand where sjdl in ($chaxunc) and sjdl='$acid' and brand_id = '{$row['brand_id']}' ";//查询当前代理商直接d直接代理人数
		//echo $sql1;die;
		$query1 = mysql_query($sql1);
		$total1 = mysql_num_rows($query1);//统计人数
		$date = date('Y-m-d',time());//获取当前时间
		//********************************
		$sql2 = "select sjdl from tgs_agentbrand where sjdl in ($chaxunc) and brand_id = '{$row['brand_id']}' and sqtime like '%$date%'";//查询当前代理商生物链每天新增人数
		//echo $sql2;die;
		$query2 = mysql_query($sql2);

		$total2 = mysql_num_rows($query2);//统计新增人数
		//$arrt = array();
		$row['all'] =$total;
		$row['zhijie'] =$total1;
		$row['add'] =$total2;
		$row['acid'] =$acid;
		
		//array_push($arrt,$total,$total1,$total2,$acid );//组成数字
		//$management['xx']=$arrt;

		$management[]=$row;

	}
	//$mysql->p($management);die;
	echo json_encode($management);
}
?>