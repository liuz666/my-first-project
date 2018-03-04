<?php
include('../config/common.conf.php');
	if($type=="check"){
		$checkid = trim($_REQUEST["checkid"]);//app应用ID
		$id = trim($_REQUEST["id"]);//app应用ID
		$newid = trim($_REQUEST["newid"]);//app应用ID
		$nexttableid = trim($_REQUEST["nexttableid"]);//app应用ID

		$apptable = trim($_REQUEST["table"]);//app应用ID

		$appid = trim($_REQUEST["appid"]);//app应用ID

		$uid = trim($_REQUEST["cuid"]);//用户ID

		$installId = trim($_REQUEST["installId"]);//安装id

		$phone = trim($_REQUEST["phone"]);//手机号

		$checked=1;//手机号

		$time = time();
		//$mysql->p($_POST);die;
		// $sqlt = "select c_id from tgs_check where appid = '$appid' and uid = '$uid.'and ins_id='$installId'";
		// 	$result=$mysql->get_one($sqlt);
		if($checkid){
				$data = array(
				'tel'=>$phone,
				'checktime'=>$time,					
					);
				$table = 'tgs_check';

				$where = ' c_id = '.$checkid;

				$res = $mysql->update($table,$data,$where);
				if($res)
				{
						echo 3;
				}else{
						echo 4;
						}	
			}else if($id){

				$data = array(
				'appid'=>$appid,	
				'uid'=>$uid,	
				'ins_id'=>$installId,	
				'tel'=>$phone,
				'checked'=>$checked,
				'checktime'=>$time,
				'apptable'=>$apptable,
				'tableid'=>$id,
					);
				$table = 'tgs_check';

				$res = $mysql->add($table,$data);

				if($res)
				{
					if($nexttableid){
						$sqlt = "update tgs_check set checked = 3 where tableid = '$nexttableid' and apptable ='$apptable' ";
						 //echo $sqlt ;die;
	     				 $rest =mysql_query($sqlt);
     				 if($rest){
     				 	echo 1;
     				 }else{
     				 	$sql = "delete from tgs_check where tableid = '$id'" ;
     				 	$aa = mysql_query($sql);
     				 	if($aa){
     				 		echo 2;
     				 	}
     				 }
				}else{
					echo 1;
				}
					
				}else{
					echo 2;
					}	
			}else if($newid){
				$data = array(
				'appid'=>$appid,	
				'uid'=>$uid,	
				'ins_id'=>$installId,	
				'tel'=>$phone,
				'checked'=>$checked,
				'checktime'=>$time,
				'apptable'=>$apptable,
				'tableid'=>$newid,
					);
				$table = 'tgs_check';

				$res = $mysql->add($table,$data);

				if($res)
				{
					if($nexttableid){

						$sqlt = "update tgs_check set checked = 3 where tableid = '$nexttableid' and apptable ='$apptable' ";
						 //echo $sqlt ;die;
	     				 $rest =mysql_query($sqlt);
     				 if($rest){
     				 	echo 1;
     				 }else{
     				 	$sql = "delete from tgs_check where tableid = '$id'" ;
     				 	$aa = mysql_query($sql);
     				 	if($aa){
     				 		echo 2;
     				 	}
     				 }
				}else{
					echo 1;
				}
					
				}else{
					echo 2;
					}
			}
		}


?>