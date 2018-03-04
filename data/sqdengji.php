<?php
include('../config/common.conf.php');//引用公共样式和函数类库
if($type == "sjdengji"){ 

	$agentid = trim($_REQUEST["id"]);//当前代理商的id

	$jibie = trim($_REQUEST["jibie"]);//目前的级别

	$sqdengji = trim($_REQUEST["sqdengji"]);//申请的等级级别

	$sqtime = date("Y-m-d H:i:s",time());//申请升级时间

	$brandid = $_REQUEST["brandid"];//代理商的品牌ID


	$sql ="select * from tgs_dengji where jibie = (select max(jibie) from tgs_dengji) and d_bid = '$brandid'";
	//echo $sql;die;
	$data = $mysql->get_one($sql);

	$maxjibie = $data['jibie'];//查询当前代理商最高的级别

	//echo $maxjibie;die;
	if($jibie==$maxjibie){
		echo "<script>alert('亲，您已经是当前最高等级！无须升级！');window.history.go(-1);</script>";
		return false;
	}else if($jibie ==$sqdengji){
		echo "<script>alert('你申请的等级跟你当前的等级相同，亲，请您重新选择申请等级！');window.history.go(-1);</script>";
		return false;

	}else if($jibie > $sqdengji){
		echo "<script>alert('你申请的等级低于你当前的等级相同，亲，请您重新选择申请等级！');window.history.go(-1);</script>";
		return false;
	}
	
	include ("test_upload_pic.php");
		//$mysql ->p($_FILES);die;
	if($_SERVER["REQUEST_METHOD"] == "POST"){//上次图片功能

		if (is_uploaded_file($_FILES["upfile"]["tmp_name"])) {
			
			$upfile = $_FILES["upfile"];

			$name = $upfile["name"];

			$type = $upfile["type"];

			$size = $upfile["size"];

			$tmp_name = $upfile["tmp_name"];

			$error = $upfile["error"];

			 //$mysql->p($upfile);die;

			if ($max_file_size < $size) {
				//echo "上传文件太大";
				echo "<script>alert('上传文件太大');window.history.go(-1);</script>";
				exit();
			}

			if (!in_array($type, $uptypes)) {
				//echo "上传文件类型不符" ;
				echo "<script>alert('上传文件类型不符');window.history.go(-1);</script>";
				

				exit();
			}
			//$mysql->p($_FILES["upfile"]["name"]);die;
			if (!file_exists($destination_folder)) {

				mkdir($destination_folder);
			}

			
			$pinfo = pathinfo($name);

			$ftype = $pinfo["extension"];

			//$mysql->p($pinfo);die;

			$destination = $destination_folder.date('YmdHis',time()).mt_rand(10000,99999).".".$ftype;

			if (file_exists($destination) && ($overwrite != true)) {
				echo "<script>alert('同名的文件已经存在了');window.history.go(-1);</script>";
				//echo "同名的文件已经存在了";
				exit();
			}
			//$mysql->p($destination);die;
			$res = move_uploaded_file($tmp_name,$destination);

			if($res){

			}else{

			echo "<script>alert('移动文件出错');window.history.go(-1);</script>";
			exit();

			}

			$pinfo = pathinfo($destination);
			//$mysql->p($pinfo);die;
			$fname = $pinfo[basename];
			$dkimg = $fname;

			if ($brandid == "") {
				echo "<script>alert('ID参数有误');window.history.go(-1);</script>";
				exit();
			}

			$sql ="select djname from tgs_dengji where jibie='$sqdengji' and d_bid = '$brandid'";

			$data = $mysql->get_one($sql);

			$djname = $data['djname'];//代理商要申请的等级名称

			$sqlt = "update tgs_agentbrand set shenqdengji = ' $djname',shenqtime = '$sqtime',dkimg = '$dkimg',checked = 1 where agent_id='$agentid' and brand_id = '$brandid '";
			//echo $sqlt;die;
			$res = mysql_query($sqlt);

		if($res){

			echo "<script>alert('申请提交成功，请耐心等待上级代理审核');window.history.go(-1);</script>";
			exit();
		}else{
			echo "<script>alert('申请提交失败，请重新申请!');window.history.go(-1);</script>";
			
			exit();
		}
		
	}else{

		echo "<script>alert('请提交打款图片！');window.history.go(-1);</script>";
		exit();
		}
	}
}


?>