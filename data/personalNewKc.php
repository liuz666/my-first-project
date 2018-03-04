<?php

include('../config/common.conf.php');//引用公共样式和函数类库
//p($_SESSION);die;
if($type == "personalNewKc"){
	$arr=array();
//$weixin = $_SESSION['weixin'];//通过全局session获取到当前代理商的微信--tao
//查询改代理商所代理的品牌和所有的商品

	$sql=mysql_query("select id from tgs_agent  where weixin ='{$weixin}'");//根据获取得微信查询代理商的所有个人信息--tao
		$row = mysql_fetch_assoc($sql);//获取代理商数据
		$aid = $row['id'];//赋值代理商所有代理品牌ID
		//查询代理商所有代理品牌的品牌信息
	$sql1 = mysql_query("select bid,brand_name from tgs_brand  where brand_adminid ='{$aid}'");
		while($row1 = mysql_fetch_assoc($sql1)){//查询结果
				$sql2 = mysql_query("select gid,goods_name from tgs_goods where g_bid = {$row1['bid']} ");//查询代理商代理品牌下面的所有商品以及商品的库存	
			while($row2 = mysql_fetch_assoc($sql2)){//查询结果
				//p($row2);
				$row1['goods'][] = $row2["goods_name"];//组成二维数
				$row1['gid'][] = $row2["gid"];//组成二维数
		
				}
				
			$arr[]= $row1;//组成三维数组
					
			 }
 	echo json_encode($arr);	

}

?>