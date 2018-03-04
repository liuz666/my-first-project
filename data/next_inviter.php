<?php
include('../config/common.conf.php');//引用公共样式和函数类库
//$weixin = $_SESSION['weixin'];//通过全局session获取到当前代理商的微信--tao
if($type=='next_inviter'){


$arr = array();
$sql = "select ta.weixin,ta.id,tab.brandname,tab.brand_id from tgs_agent as ta left join tgs_agentbrand as tab on ta.id = tab.agent_id where weixin = '{$weixin}' ";//联表查询当前代理商代理品牌的信息
//echo $sql;
$arr = $mysql->get_all($sql);

echo json_encode($arr);
}
?>

