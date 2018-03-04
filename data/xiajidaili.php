<?php
include('../config/common.conf.php');//引用公共样式和函数类库
//include('common.php');
//$weixin = $_SESSION['weixin'];//获取当前代理商的微信号
if($type == "xiaji"){
	
$sql = "select * from tgs_agent where weixin='$weixin'";//查询当前代理商所有信息

$result = @mysql_query($sql);
$arr = @mysql_fetch_array($result);
$acid = $arr["id"];//当前代理商ID
$name = $arr["name"];//姓名
$weixin = $arr["weixin"];//微信号
$adengji = $arr["dengji"];//等级
	
//p($chaxunc);die;
//p($bid);die;
$arry = array();
$bid = @$_REQUEST['bid'];
$sql2 = "select ta.id,ta.name,tab.dengjiname from tgs_agent as ta left join tgs_agentbrand as tab on ta.id = tab.agent_id where tab.brand_id ='$bid' and tab.sjdl ='$acid' ";
$arry = $mysql->get_all($sql2);

echo json_encode($arry);	
}

?>