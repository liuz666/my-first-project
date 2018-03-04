<?php
include('../config/common.conf.php');//引用公共样式和函数类库
	//p($_SESSION);die;
	// $weixin = $_SESSION['weixin'];//通过全局session获取到当前代理商的微信--tao
if($type=='mypinpai'){
	//三表查询，tgs_agent/tgs_store/ tgs_goods查询出改代理商所代理品商品的库存
	$sql = "select * from tgs_agent as ta  left join tgs_store as ts on ta.id = ts.agent_id  left join tgs_goods as tg  on ts.goods_id = tg.gid  where weixin ='{$weixin}'";
	$store =$mysql->get_all($sql);
	//p($store);die;
	echo json_encode($store);
}

?>