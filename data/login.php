<?php
// error_reporting(0);
// session_start();
// header("Content-type:text/html;charset=utf-8");//设置头部声明--tao
include('../config/common.conf.php');
//php代码
$act = $_REQUEST["act"];
$brand_id = $_REQUEST["brand_id"];
//print_r($_REQUEST);
if($act == "adminlogin" && $brand_id !="")
{
  $username = trim($_POST["username"]);
  //$phone = trim($_POST["Username"]);
  $password = trim($_POST["password"]);

	 $sql="select id,name,weixin,phone,hmd,shzt,jietime,agent_num_login from tgs_agent where password='".$password."'  and shzt=1 and (weixin='".$username."' or phone='".$username."')";
  	
   	$res=mysql_query($sql);

   	$b=mysql_fetch_array($res);

	$result=mysql_query($sql);

	$arr=mysql_fetch_array($result);

	$hmd    = $arr["hmd"];
	$id    = $arr["id"];



	$shzt   = $arr["shzt"];
	$logins   = $arr["agent_num_login"];

	//print_r($hmd);die;
	$jietime = $arr["jietime"];
	$zero1=time();   
	$zero2=$jietime; 
	
   if(!$b[0])
	{
	     // echo "<script>alert('代理商帐号或密码错误,请重新输入!');location.href='../#/login';</script>";
		echo 0;
	     exit();
    }
	if($hmd==1)
	{
	     // echo "<script>alert('对不起，你已被加入黑名单，无法登录，请联系管理员或上级代理');location.href='../#/login';</script>";
		echo 1;
	     exit();
    }
	if($zero2<$zero1)
	{
	     // echo "<script>alert('对不起，您的帐号已过期，无法登录，请联系管理员或上级代理');location.href='../#/login';</script>";
		echo 2;
	     exit();
    }
   
    else
    {
	$sql = "select dengjiname from tgs_agentbrand where agent_id='$id' order by id limit 1";
    	$data = $mysql->get_one($sql);
    	$dengji = $data['dengjiname'];
    setCookie('username',$username,time()+365*24*3600);
	setCookie('password',$password,time()+365*24*3600);
	$_SESSION['name']=$arr["name"];
	$_SESSION['weixin'] = $arr["weixin"];
	$_SESSION['phone']= $arr["phone"];
	$_SESSION['dengjiname']= $dengji;
	$_SESSION['uid'] = $id; //dersym   新增一个 用户对应的ID   上方代码必须封装包
	
		  // $sql="select brand_name from tgs_brand where bid ={$brand_id} ";
   	// 		$res=mysql_query($sql);
  		// 	$brandname = mysql_fetch_assoc($res);
  		// 	$brand_name =$brandname['brand_name'];
    	$logins =$logins+1;
    	$time = time();
  		 mysql_query( "update tgs_agent set agent_num_login='$logins',login_time = '$time' where  weixin='$username' or phone='$username'");

		   
		$sql="select id,weixin,name from tgs_agent where weixin='".$username."'  or phone='".$phone."'";
   //echo $sql;die;
   			$res=mysql_query($sql);

  			while($row = mysql_fetch_assoc($res)){

  				$data=$row;

  			}
			$data['error']=4;
			// $data['dengji']=$dengji;
			///array_push($data,3);

			echo json_encode($data);
		 	exit;
	 }



}

if($act == "adminlogin"){

  	$username = trim($_POST["username"]);
 	$phone = trim($_POST["username"]);
  	$password = trim($_POST["password"]);

  $sql="select id,name,weixin,phone,hmd,shzt,jietime,agent_num_login from tgs_agent where weixin='".$username."' and password='".$password."'  or phone='".$phone."' and shzt=1";
   //echo $sql;die;

   $res=mysql_query($sql);
   $b=mysql_fetch_array($res);
   //print_r($b);die;
	$result=mysql_query($sql);

	$arr=mysql_fetch_array($result);

	 // echo json_encode($arr);

	$hmd    = $arr["hmd"];
	$id    = $arr["id"];

	$shzt   = $arr["shzt"];

	$logins   = $arr["agent_num_login"];

	
	//print_r($hmd);die;
	$jietime   = $arr["jietime"];

	$zero1=time(); 

	$zero2=$jietime;

   if(!$b[0])
	{
	     // echo "<script>alert('代理商帐号或密码错误,请重新输入!');location.href='../#/login';</script>";
		echo 0;
	     exit();
    }
	if($hmd==1)
	{
	     // echo "<script>alert('对不起，你已被加入黑名单，无法登录，请联系管理员或上级代理');location.href='../#/login';</script>";
		echo 1;
	     exit();
    }
	if($zero2<$zero1)
	{
	     // echo "<script>alert('对不起，您的帐号已过期，无法登录，请联系管理员或上级代理');location.href='../#/login';</script>";
		echo 2;
	     exit();
    }
   
    else
    {
    	$sql = "select dengjiname from tgs_agentbrand where agent_id='$id' order by id limit 1";
    	//echo $sql;die;
    	$data = $mysql->get_one($sql);
    	$dengji = $data['dengjiname'];
    	//$mysql ->p($dengji);die;
    	setCookie('username',$username,time()+365*24*3600);
		setCookie('password',$password,time()+365*24*3600);
		$_SESSION['name']=$arr["name"];
		$_SESSION['weixin'] = $arr["weixin"];
		$_SESSION['phone']= $arr["phone"];
		$_SESSION['dengjiname']= $dengji;
		$_SESSION['uid'] = $id; //dersym   新增一个 用户对应的ID   上方代码必须封装包
		// $_SESSION['logins']= $arr["agent_num_login"];
		 $logins =$logins+1;
		 $time = date('Y-m-d H:i:s',time());
		 mysql_query( "update tgs_agent set agent_num_login='$logins',login_time = '$time' where weixin='$username' or phone='$username'");
		  
		$sql="select id,weixin,name from tgs_agent where weixin='".$username."'  or phone='".$phone."'";
   //echo $sql;die;
   			$res=mysql_query($sql);
  			while($row = mysql_fetch_assoc($res)){
  				$data=$row;
  			}
			$data['error']=3;
			// $data['dengji']=$dengji;
			///array_push($data,3);

			echo json_encode($data);
		 	exit;

	 }
	  // echo "<script>location.href='../#/start';</script>";
		 

	mysql_free_result($res); 
	mysql_free_result($result);
	}
//退出后台************************************************************

if ($act=="logout")
{
session_unset("Adminname");
echo "<script>location.href='../#/login';</script>"; 
} 
?>