<?php

	$table = trim($_REQUEST["table"]);//动态存数据的app表名称
	$id = trim($_REQUEST["id"]);//动态存数据的id
	$newid = trim($_REQUEST["newid"]);//动态存数据的id
	$randomname = trim($_REQUEST["randomname"]);//活动名称
	$appid = trim($_REQUEST["appid"]);//app应用id
	$cuid = trim($_REQUEST["uid"]);//代理商用户ID
	$installId = trim($_REQUEST["installId"]);//安装ID
	$odds = $_REQUEST["odds"];//随机奖的几率
	$rankdata = $_REQUEST["rank"];

	//$mysql->p($rankdata);die;

	$time = time();//申请升级时间

	if($randomname=='')
	{
		echo 1;
		exit();
	}
	if($odds=='')
	{
		echo 2;
		exit();
	}
	foreach ($rankdata as $val)
	{
		if($val=="")
		{
			echo 3;
			exit();
		}
	}
	foreach ($rankdata as  $val){
		 $ranking[]['rank']= urlencode($val);//urlencode();解决json_encode中文乱码问题
		  //echo $ranking;
		}
	$ranking= json_encode($ranking);

	$sql = "select randomname from tgs_".$table." where id = '$id' or id = '$newid'";

	//echo $sql;die;
	
	$data = $mysql->get_one($sql);

	$name= $data['randomname'];
if($id){
	if($name){
		$data = array(
		'randomname'=>$randomname,	
		'odds'=>$odds,	
		'ranking'=>$ranking,
		'time'=>$time,	
			);
		//$mysql->P($data);die;
		$where = ' id = '.$id;
		$table = 'tgs_'.$table;

		$res = $mysql->update($table,$data,$where);
		if($res)
		{
			echo 6;
		}else{
			echo 7;
		}
	}else{

		$data = array(
			'randomname'=>$randomname,	
			'odds'=>$odds,	
			'ranking'=>$ranking,
			'time'=>$time,	
				);
			//$mysql->P($data);die;
			$where = ' id = '.$id;

			$table = 'tgs_'.$table;

			$res = $mysql->update($table,$data,$where);
			if($res)
			{
				echo 4;
			}else{
				echo 5;
			}

	}	
}

if($newid){
	if($name){
		$data = array(
		'randomname'=>$randomname,	
		'odds'=>$odds,	
		'ranking'=>$ranking,
		'time'=>$time,	
			);
		//$mysql->P($data);die;
		$where = ' id = '.$newid;
		$table = 'tgs_'.$table;

		$res = $mysql->update($table,$data,$where);
		if($res)
		{
			echo 6;
		}else{
			echo 7;
		}
	}else{
		$data = array(
			'randomname'=>$randomname,	
			'odds'=>$odds,	
			'ranking'=>$ranking,
			'time'=>$time,	
				);
			//$mysql->P($data);die;
			$where = ' id = '.$newid;
			$table = 'tgs_'.$table;
			$res = $mysql->update($table,$data,$where);
			if($res)
			{
				echo 4;
			}else{
				echo 5;
			}

	}	
}

?>