<?php
include('../config/common.conf.php');//引用公共样式和函数类库

if($type == "suerGoods"){
	$sql="select id from tgs_agent  where weixin='{$weixin}'";//查询当前代理商的ID
	$arr =$mysql->get_one($sql);
	$id = $arr['id'];//获取到当前代理商ID

	$arr= array();//
	$sql = "select * from tgs_order where order_toagentid = '$id' and order_inspected = '1' order by order_id desc ";
	$res = mysql_query($sql);
	while($row = mysql_fetch_assoc($res)){
		$sql = "select tb.brand_name,tg.goods_name from tgs_goods as tg left join tgs_brand as tb  on tg.g_bid=tb.bid  where tg.gid = '{$row['order_gid']}' and  tb.bid = '{$row['order_bid']}' ";
		$result = mysql_query($sql);

		while($rowa = mysql_fetch_assoc($result)){

			$row['brand_name']= $rowa['brand_name'];
			$row['goods_name']= $rowa['goods_name'];
			
			
		}
	
		$arr[] = $row;
		//p($sql) ;
		}

	//p($arr);
	echo json_encode($arr);
}


	
?>
