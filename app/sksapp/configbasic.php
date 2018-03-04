<?php
//$mysql->p($_FILES);die;
	//include('../config/common.conf.php');//引用公共样式和函数类库
	$id = trim($_REQUEST["id"]);//动态存数据的id 
	$newid = trim($_REQUEST["newid"]);//动态存数据的id
	//$mysql->p($id);die;
	//$newadd = trim($_REQUEST["newadd"]);//动态存数据的id 
	//$mysql->p($newadd);die;
	$table = trim($_REQUEST["table"]);//动态存数据的app表名称
	$name = trim($_REQUEST["name"]);//活动名称
	$appid = trim($_REQUEST["appid"]);//app应用id
	$uid = trim($_REQUEST["uid"]);//代理商用户ID
	$installId = trim($_REQUEST["installId"]);//安装ID
	$starttime = strtotime($_REQUEST["startime"]);//活动开始时间
	$endtime = strtotime($_REQUEST["endtime"]);//申请的等级级别
	$time = time();//申请升级时间

	if($name=='')
	{
		echo 1;
		exit();
	}
	if($starttime=='')
	{
		echo 2;
		exit();
	}
	// $start = $starttime-3600*24;
	// if($start < $time){
	// 	echo 13;
	// 	exit();
	// }

	// if($endtime=='')
	// {
	// 	echo 3;
	// 	exit();
	// }

	// if($endtime < $starttime)
	// {
	// 	echo 14;
	// 	exit();
	// }

	if($id){//如果已经存在数据就进入更新功能
		//echo 111;
		if($_SERVER["REQUEST_METHOD"] == "POST")
		{//上次图片功能
		if (is_uploaded_file($_FILES["upfile"]["tmp_name"]))
		{
				$upfile = $_FILES["upfile"];
				$imgname = $upfile["name"];
				$type = $upfile["type"];
				$size = $upfile["size"];
				$tmp_name = $upfile["tmp_name"];
				$error = $upfile["error"];
					 //$mysql->p($upfile);die;
				include('upload.php');//引入上传图片的PHP公共部分
					$erweima= $fname;
					$data = array(
					'appid'=>$appid,	
					'cuid'=>$uid,	
					'install_id'=>$installId,	
					'name'=>$name,	
					'starttime'=>$starttime,	
					'endtime'=>$endtime,
					'code'=>$erweima,
						);
					$where = 'id = '.$id;
					$table = 'tgs_'.$table;
					$res = $mysql->update($table,$data,$where);
					if($res)
					{
						echo 11;
					}else{
						echo 12;
					}
				//修改不上传图片的时间执行这段代码
				}else{
					$data = array(
					'appid'=>$appid,	
					'cuid'=>$uid,	
					'install_id'=>$installId,	
					'name'=>$name,	
					'starttime'=>$starttime,	
					'endtime'=>$endtime,
						);
					$where = ' id = '.$id;
					$table = 'tgs_'.$table;
					$res = $mysql->update($table,$data,$where);
					if($res)
					{
						echo 11;
					}else{
						echo 12;
					}
				}
			}//更新结束
		}else if($newid){

				if($_SERVER["REQUEST_METHOD"] == "POST")
			{//上次图片功能
			if (is_uploaded_file($_FILES["upfile"]["tmp_name"]))
			{
					$upfile = $_FILES["upfile"];
					$imgname = $upfile["name"];
					$type = $upfile["type"];
					$size = $upfile["size"];
					$tmp_name = $upfile["tmp_name"];
					$error = $upfile["error"];
						 //$mysql->p($upfile);die;
					include('upload.php');//引入上传图片的PHP公共部分
						$erweima= $fname;
						$data = array(
						'appid'=>$appid,	
						'cuid'=>$uid,	
						'install_id'=>$installId,	
						'name'=>$name,	
						'starttime'=>$starttime,	
						'endtime'=>$endtime,
						'code'=>$erweima,
							);
						$where = 'id = '.$newid;
						$table = 'tgs_'.$table;
						$res = $mysql->update($table,$data,$where);
						if($res)
						{
							echo 11;
						}else{
							echo 12;
						}
					//修改不上传图片的时间执行这段代码
					}else{
						$data = array(
						'appid'=>$appid,	
						'cuid'=>$uid,	
						'install_id'=>$installId,	
						'name'=>$name,	
						'starttime'=>$starttime,	
						'endtime'=>$endtime,
							);
						$where = ' id = '.$newid;
						$table = 'tgs_'.$table;
						$res = $mysql->update($table,$data,$where);
						if($res)
						{
							echo 11;
						}else{
							echo 12;
						}
					}
				}

		}else{//第一次新建
			if($_SERVER["REQUEST_METHOD"] == "POST")
			{//上次图片功能
			if (is_uploaded_file($_FILES["upfile"]["tmp_name"]))
			{
					$upfile = $_FILES["upfile"];
					$imgname = $upfile["name"];
					$type = $upfile["type"];
					$size = $upfile["size"];
					$tmp_name = $upfile["tmp_name"];
					$error = $upfile["error"];
					 //$mysql->p($upfile);die;
					//上传文件类型列表
				include('upload.php');//引入上传图片的PHP公共部分
					$erweima= $fname;
					$data = array(
					'appid'=>$appid,	
					'cuid'=>$uid,	
					'install_id'=>$installId,	
					'name'=>$name,	
					'starttime'=>$starttime,	
					'endtime'=>$endtime,
					'code'=>$erweima,
					'number'=>1,	
						);
					$table = 'tgs_'.$table;
					$res = $mysql->add($table,$data);
					 $id = mysql_insert_id();
					if($res )
					{
						//echo 9;
						$resule = array('error'=>9,'id'=>$id);
						echo json_encode($resule);
					}else{
						echo 10;
					}
				}else{

					echo 4;
					exit();
					}
				}

		}
	
?>