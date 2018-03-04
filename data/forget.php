<?php
include('../config/common.conf.php');//引用公共样式和函数类库
	
if($type == "code"){//验证码的验证
		//$mysql->p($_REQUEST);die;
		$phone      = trim($_REQUEST["phone"]);//收验证码的手机号
		$time = time();//随机生成验证码的时间
		$code= rand(1000,9999);//随机生四位数的验证码
		//api+
		//$mysql->p($code);die;
		$sql ="select phone from tgs_agent where phone = '$phone'";
		//echo $sql;
		$data = $mysql->get_one($sql);
		$sql ="select pid from tgs_phonecode where phone = '$phone'";
		//echo $sql;
		$data = $mysql->get_one($sql);
	if($data){
		$sqlw ="update tgs_phonecode set code='$code' where phone = '$phone'";
			
				$resw = mysql_query($sqlw);
				if($resw){
				$sqlt = "select code from tgs_phonecode where phone = '$phone'and code=$code";
					//echo $sqlt;die;
				$data = $mysql->get_one($sqlt);

				$code = intval($data['code']);

				echo $code;
				
				}	
			}else{

			$sqlone = "insert into tgs_phonecode (phone,code,time) value('$phone','$code','$time')";

			//echo $sqlone;

			$resone = mysql_query($sqlone);

			if($resone){

				$sqlt = "select code from tgs_phonecode where phone = '$phone'and code=$code";
				//echo $sqlt;die;
				$data= $mysql->get_one($sqlt);

				$code = intval($data['code']);

				echo $code;
			}
	
		}	
	}
	//重设密码更新
	if($type =='verification'){
		

			$phone      = trim($_REQUEST["phone"]);//收验证码的手机号
			$password      = trim($_REQUEST["password"]);//收验证码的手机号
			$code      = trim($_REQUEST["code"]);//收验证码的手机号
			$time = date('Y-m-d H:i:s',time());//重设密码时间
			$sql ="update tgs_agent set  password = '$password',passwordtime='$time' where phone = '$phone'";
			//echo $sql;die;
			$res = mysql_query($sql);
			if($res){
				echo 1;
			}else{
				echo 2;
			}
		
		
		}
	

	if($type =='phone'){
			$phone      = trim($_REQUEST["phone"]);//收验证码的手机号
		$sql ="select phone from tgs_agent where phone = '$phone'";
		$data = $mysql->get_one($sql);

		if($data){
			echo 1;
		}else{
			echo 2	;
		}
	
	}

?>