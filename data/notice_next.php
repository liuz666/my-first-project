<?php
include('../config/common.conf.php');//引用公共样式和函数类库


//p($_SESSION);die;
//查询改代理商所代理的品牌和所有的商品

	$sql=mysql_query("select agent_bid,id from tgs_agent  where weixin ='{$weixin}'");//根据获取得微信查询代理商的所有个人信息--tao
		$row = mysql_fetch_assoc($sql);//获取代理商数据
		$id = $row['id'];//赋值代理商所有代理品牌ID

	$sqlr = "select brandname,brand_id from tgs_agentbrand where agent_id = '$id'";

	$rest = mysql_query($sqlr);
		//查询代理商所有代理品牌的品牌信息

	while($row1 = mysql_fetch_assoc($rest)){//查询结果
			
				$sql2 = mysql_query("select * from tgs_goods where g_bid = {$row1['brand_id']} ");//查询代理商代理品牌下面的所有商品以及商品的库存	
			// while($row2 = mysql_fetch_assoc($sql2)){//查询结果
			// 	//p($row2);
			// 	$row1['goods'][] = $row2["goods_name"];//组成二维数
			// 	//$row1['id'][] = $row2["id"];//组成二维数
			// 	}
				
			$arr[]= $row1;//组成三维数组
					
			 }
			//p($arr);die;
 	echo json_encode($arr);	
?>
