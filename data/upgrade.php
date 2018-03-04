<?php
include('../config/common.conf.php');//引用公共样式和函数类库
		
if($type == "upgrade"){

	$sqlr = "select brandname,brand_id from tgs_agentbrand where agent_id = '$acid'";
	$rest = mysql_query($sqlr);
while($row = mysql_fetch_assoc($rest)){
	$sql = "select td.jibie,ta.id,ta.agentid,ta.weixin,ta.name,tab.dengjiname from tgs_agent as ta  left join tgs_agentbrand as tab on ta.id=tab.agent_id left join tgs_dengji as td on tab.dengjiname = td.djname  where ta.weixin = '$weixin' and tab.brand_id ='{$row['brand_id']}' and td.d_bid ='{$row['brand_id']}' ";
		$res = mysql_query($sql);
	while($arr = mysql_fetch_assoc($res)){
		$row['content'][]=$arr;

		$sqlb = "select djname,jibie from tgs_dengji where d_bid ='{$row['brand_id']}'";

		$resb = mysql_query($sqlb);
		while($array = mysql_fetch_assoc($resb)){
			$row['dengji'][]=$array;
		}
	}
$data[]=$row;
}

echo json_encode($data);
}


?>