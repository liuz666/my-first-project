<?php
include('../config/common.conf.php');//引用公共样式和函数类库
//include('common.php');
//$type=$_REQUEST['type'];

if($type =="notice"){

	$gonggao = array(); 

	$sqlr = "select brandname,brand_id from tgs_agentbrand where agent_id = '$acid'";

	$rest = mysql_query($sqlr);

	while($row = mysql_fetch_assoc($rest)){
		//$mysql->p($row);
		$sqlt = "select tg.uid,tg.id,ta.name,tg.content,tg.times from tgs_agent as ta left join tgs_gonggao as tg on ta.id=tg.uid where tg.g_bid ='{$row['brand_id']}' order by tg.id desc";
	//echo $sqlt;
		$res2 = mysql_query($sqlt);
	while($arr = mysql_fetch_assoc($res2)){
			
			$sqly = "select dengjiname from tgs_agentbrand where agent_id = '{$arr['uid']}' and brand_id= '{$row['brand_id']}'";
				//echo $sqly;die;
				$restt = mysql_query($sqly);
				while($array = mysql_fetch_assoc($restt)){
					$arr['dengjiname']=$array['dengjiname'];
					// $row['content']['dengjiname']=$array;

				}
			$row['content'][]=$arr;
			 }
		$gonggao[]=@$row;
	}

	echo json_encode($gonggao);
	}
?>