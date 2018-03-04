<?php
error_reporting(0);
include('../config/common.conf.php');

$act = $_REQUEST["act"];//获取到提交过来的参数

if($act == "apply"){
	$time = time(); //当前时间戳
	$datea = date('Y',$time) + 1 . '-' . date('m-d');//一年后日期
	$jietime = strtotime($datea);//有限期一年
	$applytime =time();//申请时间
	$dingdanhao = date("i-s");
	$dingdanhao = str_replace("-","",$dingdanhao);
	$agentid = "NF".$dingdanhao .= rand(1000,999999);//随机生成代理商号
	//print_r($agentid);die;
	//$idcard      = trim($_REQUEST["idcard"]);//获取提交过来的身份证
	$dengji      = trim($_REQUEST["dengji"]);//等级

	$addtime      =  time();//时间

	$name         = trim($_REQUEST["name"]);//注册姓名

	$phone        = trim($_REQUEST["phone"]);//注册手机号
	//$a = strlen($phone);
	//$mysql->p($a );die;
	//$qq           = trim($_REQUEST["qq"]);//注册QQ

	$username       = trim($_REQUEST["username"]);//注册微信号

	$sjdl       =  trim($_REQUEST["sjdl"]);//上级代理
	//$mysql->p($_REQUEST);die;
	$shzt       = 1;
	$hmd       = 2;
	$agent_num_login  = 0;

	$password       = trim($_REQUEST["password"]);//密码

	$brand_id      = trim($_REQUEST["brand_id"]);//申请的该品牌的id

	$brandname    = trim($_REQUEST["brandname"]);//申请的该品牌的名称
	
	$sql="select id from tgs_agent where weixin='$sjdl' limit 1";


	$result= @mysql_query($sql);

	$arr= @mysql_fetch_array($result);

	$sjdlid  = $arr["id"];

	if($sjdlid=="")
	{
	  //echo "<script>alert('上级代理微信号不存在，请检查dengji');history.go(-1);</script>";
		echo 1;
	  exit;
	}

	if($agentid=="")
	{
	  // echo "<script>alert('代理商编号不存在，请检查');history.go(-1);</script>";
		echo 2;
	  exit;
	}
	if($username=="")
	{
	  // echo "<script>alert('请输入微信号');history.go(-1);</script>";
	echo 3;
	  exit;
	}
	if($password=="")
	{
	  // echo "<script>alert('请输入微信号');history.go(-1);</script>";
	echo 4;
	 exit;
	}
	
	if($name=="")
	{
	  //echo "<script>alert('请输入姓名');history.go(-1);</script>";
		echo 5;
	 	 exit;
	}
	if($phone=="")
	{
	  //echo "<script>alert('请输入手机号码');history.go(-1);</script>";
		echo 6;
	  exit;
	}

	$sql = "select id from tgs_agent where agentid='".$agentid."' limit 1";

	$res = mysql_query($sql);

	$arr = mysql_fetch_array($res);

	if(mysql_num_rows($res)>0){
	 // echo "<script>alert('代理商编号已存在');history.go(-1);</script>";
	  echo 7;
	  exit;
	}
	
	$sql = "select id from tgs_agent where weixin='".$username."' limit 1";

	$res = mysql_query($sql);

	$arr = mysql_fetch_array($res);

	if(mysql_num_rows($res)>0){
	  //echo "<script>alert('微信号已存在');history.go(-1);</script>";
		echo 8;
	  exit;

	}
	
	$sql = "select id from tgs_agent where phone='".$phone."' limit 1";

	$res = mysql_query($sql);

	$arr = mysql_fetch_array($res);

if(mysql_num_rows($res)>0){

	  //echo "<script>alert('手机号已存在');history.go(-1);</script>";
	echo 9;
	 exit;

	}


if(strlen($phone)!=11){   

   //验证通过    
  //echo "<script>alert('手机号格式不正确');history.go(-1);</script>";
  echo 10;
  exit;       
}

	$plug = 0;
	$pluglist = 0;
	$config = 0;
//插入该申请人的数据
$sql="insert into tgs_agent (agentid,applytime,addtime,jietime,name,phone,weixin,shzt,hmd,password,agent_num_login,plug,pluglist,config)values('$agentid','$applytime','$addtime','$jietime','$name','$phone','$username','$shzt','$hmd','$password','$agent_num_login','$plug','$pluglist','$config')";
	$res = mysql_query($sql);
	//$res = mysql_query($sql);
	if($res){
		//查询该申请人的的id
		$sqlw = "select id from tgs_agent where weixin ='$username'";
		$data =$mysql->get_one($sqlw);
		$agentid = $data['id'];

		$time=date('Y-m-d H:i:s',time());
		//p($agentid);die;
		//插曲代理商品牌记录表里
		$sqlt="insert into tgs_agentbrand(agent_id,brand_id,brandname,sjdl,dengjiname,sqtime)values('$agentid','$brand_id','$brandname','$sjdlid','$dengji','$time')";
		$rest = mysql_query($sqlt);
		if($rest){//判断是否插入成功，成功则帮该代理商建立默认库存

			$sql2 = mysql_query("select gid from tgs_goods where g_bid = '$brand_id' ");
			//该品牌下所有商品的循环插入仓库表，默认库存都为0
			while($row = mysql_fetch_assoc($sql2)){
				//p($row);
				$big = 0;
				$small = 0;
				$time=date('Y-m-d H:i:s',time());
				//该品牌下所有商品的循环插入仓库表，默认库存都为0
				$sql3 = "INSERT INTO tgs_store (goods_id, agent_id,big,small,store_time) VALUES ('{$row['gid']}','$agentid','$big','$small','$time' )";
				//p($sql3);
				$result = mysql_query($sql3);
				setCookie('username',$weixin,time()+365*24*3600);
				setCookie('password',$password,time()+365*24*3600);
				}
			if($result){ 
				//echo "<script>alert('申请成功！请登录账号');location.href='../#/login'</script>";

				echo 11;
	 			exit;

			}else{
				$sql = "delete from tgs_agent where weixin ='$username'";
				$res =mysql_query($sql);

				$sql5 = "delete from tgs_agentbrand where agent_id ='$agentid'";

				$res5 =mysql_query($sql5);

			echo 12;
			exit;
			}

		}else{
			$sql = "delete from tgs_agent where weixin ='$username'";
			$res =mysql_query($res);
			if($res){
			echo 13;
			exit;
			}
			
		}
		//c查询出申请人所代理品牌的所有商品
		
	//die;
	}else{
		echo 14;
		exit;
	}

}
 	
	

 
?>