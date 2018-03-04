<?php
include('../config/common.conf.php');//引用公共样式和函数类库
if($type=="goods_store"){

//p($_SESSION);die;
//$arr = array();
$goods_name = $_REQUEST['goods_name'];
//p($_REQUEST);die;
$weixin = $_SESSION['weixin'];//通过全局session获取到当前代理商的微信--tao
//查询改代理商所代理的品牌和所有的商品

$sql=mysql_query("select id from tgs_agent  where weixin ='{$weixin}'");//根据获取得微信查询代理商的所有个人信息--tao
	$row = mysql_fetch_assoc($sql);//获取代理商数据

	$aid = $row['id'];//赋值代理商所有代理品牌ID

	$sql="select gid from tgs_goods  where  goods_name='{$goods_name}'";

	$data =$mysql->get_one($sql);

	$gid = $data['gid'];

	//p($gid);die;
	$sql = "select big,small from tgs_store where goods_id ='$gid' and agent_id ='$aid' ";
		$arr =$mysql->get_one($sql);
	echo json_encode($arr);
}
?>
