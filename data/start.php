<?php
include('../config/common.conf.php');//引用公共样式和函数类库

//查询seesion里面的数据
if($type=="session"){
	$dengji = $_SESSION['dengjiname'];//session里的等级
	$name = $_SESSION['name'];//姓名
	$sql = "select agent_num_login from tgs_agent where weixin ='{$weixin}'";//通过登录中的微信查询是否是第一次登陆
	$data = $mysql->get_one($sql);
	$logins = $data['agent_num_login'];//登陆次数

	$arr=array();

	array_push($arr,$weixin,$dengji,$name,$logins);

	echo json_encode($arr); 

	}

	//收货的消息弹框事件
	if($type=="messagetotal"){
			$sql="select id from tgs_agent  where weixin='$weixin'";//查询当前的代理商的信息
			$arr = $mysql->get_one($sql);

			$id = @$arr['id'];//获取当前代理商id

			$sqlw = "select order_id from tgs_order where order_toagentid = '$id' and order_inspected = '1' ";//通过当前代理商ID查order表，有多少未收货的信息，统计数量
			//echo $sql;
			//$arr =  @mysql_query($sqlw);
			//p($arr);die;
			$total = $mysql->get_num($sqlw);

			if($total==null){//如果没有。默认为0;
				$total = 0;
			}		
		echo @json_encode($total);
	 } 
//最新消息的查询
if($type =="Newnotice"){
		//$gonggao = array();   
		$sqlr = "select brandname,brand_id from tgs_agentbrand where agent_id = '$acid'";//
	
		$data = $mysql->get_all($sqlr);
		
	foreach ($data as $key => $val) {
		$sqlt = "select tg.uid,tg.id,ta.name,tg.content,tg.times from tgs_agent as ta left join tgs_gonggao as tg on ta.id=tg.uid where tg.g_bid ='{$val['brand_id']}' order by tg.times desc limit 1";

			//echo $sqlt;
		$dataq[] = $mysql->get_one($sqlt);	
		}	
		echo json_encode($dataq);
	 }

	
	
?>