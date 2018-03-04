<?php
include('../config/common.conf.php');
	
	$udengji=@$_REQUEST['udengji'];
  	$zhijiedaili=@$_REQUEST['zhijiedaili'];
  	$newadd=@$_REQUEST['newadd'];
  	$xiaji=@$_REQUEST['xiaji'];
	$brandId=@$_REQUEST['brand_id'];
	//$mysql->p($_REQUEST);die;
  if($udengji){
  			$array= array();
  			$sql = "select djname from tgs_dengji where id = '{$udengji}'";
  			$data =$mysql->get_one($sql);
  			$djname = $data['djname'];

		$sql = "select ta.id,ta.weixin,ta.agentid,ta.name,ta.phone,tab.dengjiname,tab.sjdl from tgs_agent as ta left join tgs_agentbrand as tab on ta.id = tab.agent_id where tab.sjdl in ($chaxunc) and tab.brand_id ='$brandId' and tab.dengjiname ='".$djname."'";//统计每个级别的人数
		//echo $sql;die;
		$query = mysql_query($sql);
		while($arr = mysql_fetch_assoc($query)){
			$sjdl = $arr['sjdl'];
			$id= $arr['id'];
				//p($sjdl);
		 	$sql2 = mysql_query("select name,weixin from tgs_agent where id='$sjdl'");
		 	//echo "select name,weixin from tgs_agent where id='$sjdl' limit 1";die;
		 while($res = mysql_fetch_assoc($sql2)){
		 	$arr["sjdata"]=$res;
		 	//p($arr);die;
		 	}

		 	$sql3 = "select sjdl from tgs_agentbrand where sjdl ='".$id."' and brand_id ='$brandId'";
		 	$query3 = mysql_query($sql3);
		 	//echo $sql3;die;
		 	$total = mysql_num_rows($query3);
		 	$arr["total"]=$total;
			$array[]=$arr;
		}
		echo json_encode($array);
		}
	//查询当前代理商直接代理人数和信息	
	 if($zhijiedaili){
	 	 $brandId=@$_REQUEST['brand_id'];
  		$array= array();
		$sql = "select ta.id,ta.weixin,ta.agentid,ta.name,ta.phone,tab.dengjiname,tab.sjdl from tgs_agent as ta left join tgs_agentbrand as tab on ta.id = tab.agent_id where tab.sjdl in ($chaxunc) and tab.brand_id ='$brandId' and tab.sjdl ='" .$zhijiedaili. "'";//统计每个级别的人数
		// echo "select id,weixin,agentid,name,phone,dengji,sjdl from tgs_agent where sjdl in ($chaxunc) and  sjdl ='" .$zhijiedaili. "'";die;
		$query = mysql_query($sql);
		while($arr = mysql_fetch_assoc($query)){
			$sjdl = $arr['sjdl'];
			$id= $arr['id'];
				//p($sjdl);
		 $sql2 = mysql_query("select name,weixin from tgs_agent where  id ='$sjdl'");
		 	//echo "select name,weixin from tgs_agent where id='$sjdl'";die;
		 while($res = mysql_fetch_assoc($sql2)){

		 		$arr["sjdata"] = $res;
		 	}
		 	
		 	$sql3 = "select * from tgs_agentbrand where sjdl ='".$id."' and brand_id ='$brandId'";

		 	$query3 = mysql_query($sql3);

		 

		 	$total = mysql_num_rows($query3);

		 	$arr["total"]=$total;

		 	$array[]=$arr;
		}
		
		echo json_encode($array);
		}

	//查询当前代理商产业链级今日新增成员人数
	if($newadd){
		  $brandId=@$_REQUEST['brand_id'];
  		$array= array();
  		$date = date('Y-m-d',time());//获取当前时间
		$sql = "select ta.id,ta.weixin,ta.agentid,ta.name,ta.phone,tab.dengjiname,tab.sjdl from tgs_agent as ta left join tgs_agentbrand as tab on ta.id = tab.agent_id where tab.sjdl in ($chaxunc) and tab.brand_id ='$brandId' and tab.sqtime like '%$date%'";//统计每个级别的人数
		// echo $sql;die;
		$query = mysql_query($sql);
		while($arr = mysql_fetch_assoc($query)){
			$sjdl = $arr['sjdl'];
			$id= $arr['id'];
				//p($sjdl);
		 $sql2 = mysql_query("select name,weixin from tgs_agent where  id ='$sjdl'");
		 	//echo "select name,weixin from tgs_agent where id='$sjdl'";die;
		 while($res = mysql_fetch_assoc($sql2)){

		 		$arr["sjdata"] = $res;
		 	}
		 	
		 	$sql3 = "select * from tgs_agentbrand where sjdl ='".$id."' and brand_id ='$brandId'";

		 	$query3 = mysql_query($sql3);

		 	$total = mysql_num_rows($query3);

		 	$arr["total"]=$total;

		 	$array[]=$arr;
		}
		echo json_encode($array);
		}

	//查询下级代理的信息  
 if($xiaji){
 	  $brandId=@$_REQUEST['brand_id'];
  		$array= array();
		$sql = "select ta.id,ta.weixin,ta.agentid,ta.name,ta.phone,tab.dengjiname,tab.sjdl from tgs_agent as ta left join tgs_agentbrand as tab on ta.id = tab.agent_id where tab.sjdl in ($chaxunc) and tab.brand_id ='$brandId' and  tab.sjdl ='" .$xiaji. "'";//统计每个级别的人数
		//echo  $sql;
		$query = mysql_query($sql);
		while($arr = @mysql_fetch_assoc($query)){
			$sjdl = $arr['sjdl'];
			$id= $arr['id'];
				//p($sjdl);
		 $sql2 = mysql_query("select name,weixin from tgs_agent where  id ='$sjdl'");
		 	//echo "select name,weixin from tgs_agent where id='$sjdl'";die;
		 while($res = @mysql_fetch_assoc($sql2)){

		 		$arr["sjdata"] = $res;
		 	}
		 	
		 	$sql3 = "select sjdl from tgs_agentbrand where sjdl ='".$id."' and brand_id ='$brandId'";

		 	$query3 = mysql_query($sql3);

		 	$query3 = mysql_query($sql3);

		 	$total = mysql_num_rows($query3);

		 	$arr["total"]=$total;

		 	$array[]=$arr;
		}
		
		echo json_encode($array);
		}
 //
?>