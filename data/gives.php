<?php
include('../config/common.conf.php');//引用公共样式和函数类库
if($type == "gives"){
$sql = "select ta.weixin,ta.id,tab.brandname,tab.brand_id,tb.brand_pic,tb.brand_accredit from tgs_agent as ta left join tgs_agentbrand as tab on ta.id = tab.agent_id left join tgs_brand as tb on tab.brand_id = tb.bid  where weixin = '{$weixin}' ";//联表查询当前代理商代理品牌的信息
//echo $sql;
$arr =$mysql->get_all($sql);
//$mysql->p($arr);
echo json_encode($arr);
}

?>