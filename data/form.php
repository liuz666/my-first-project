<?php
include('../config/common.conf.php');//引用公共样式和函数类库
//$type = $_REQUEST["type"];//获取那表单提交--tao
//p($type);die;

//意见反馈提交数据执行这段代码
if($type=="yijie"){
	$content = $_REQUEST['opinion'];//获取表单提交的内容--tao
	$username = $_SESSION['weixin'];
	$time=date("Y-m-d H:i:s",time());//当前时间
	$sql = @mysql_query("insert into tgs_jieyi (username,content,time)values('{$username}','{$content}','{$time}')");//把提交的内容插入数据库--tao
	//echo "insert into tgs_jieyi (name,content,time)values('{$username}','{$content}','{$time}')";

	if($sql){
			echo "<script>alert('提交成功！谢谢您宝贵的意见！');history.go(-1);</script>";//弹出成功提示框并返回上一页--tao
	}else{
		echo "<script>alert('提交失败！请重新输入！');history.go(-1);</script>";//弹出失败提示框并返回上一页--tao
	}	

}

//邀请下线品牌添加执行这段代码
if($type=="shenq"){
	$applytime = date("Y-m-d",time());//申请时间
	$brand_name = $_REQUEST['brand_name'];//品牌名
	$bid = $_REQUEST['bid'];//商品ID
	//p($bid);die;
	$weixin = $_SESSION['weixin'];//添加品牌的当前代理商微信号
	//p($weixin);die;
	$sql = "select ta.id,tab.sjdl from tgs_agent as ta left join tgs_agentbrand as tab on ta.id = tab.agent_id where weixin = '{$weixin}' ";//查询当前代理商是否有代理品牌
	$data =$mysql->get_one($sql);

	$agent_id = $data['id'];//代理商ID

	$sjdl = $data['sjdl'];//代理商ID$mysql->

	//$agent_bid=$agent_data['agent_bid'];//赋值代理商所代理的品牌ID

	$sql1 ="select * from tgs_agentbrand where brand_id = '$bid' and agent_id ='$agent_id' ";
	//echo $sql1;die;
	$res = $mysql->get_all($sql1);

	if(empty($res)){
		//p($new_id);die;
		$sqlt="insert into tgs_agentbrand(agent_id,brand_id,brandname,sjdl,sqtime)values('$agent_id','$bid','$brand_name','$sjdl','$applytime')";
		//echo $sql2;die;
		$result = mysql_query($sqlt);
		if($result){

				//c查询出申请人所代理品牌的所有商品
				$sql2 = mysql_query("select gid from tgs_goods where g_bid = '$bid' ");
					//该品牌下所有商品的循环插入仓库表，默认库存都为0
					while($row = mysql_fetch_assoc($sql2)){
						
						$big = 0;
						$small = 0;
						$time=date("Y-m-d H:i:s",time());//当前时间
						//该品牌下所有商品的循环插入仓库表，默认库存都为0
						$sql3 = "INSERT INTO tgs_store (goods_id, agent_id,big,small,store_time) VALUES ('{$row['gid']}','$agent_id','$big','$small','$time' )";
						//p($sql3);
						mysql_query($sql3);
					}
			echo "<script>alert('代理成功');history.go(-2);</script>";

		}
			
	}else{

	echo "<script>alert('您已经代理过该品牌，请申请代理其他品牌！');history.go(-1);</script>";
	
	}
	//echo "select bid from tgs_brand where {$bid} in($agent_bid)   ";
}

//自主品牌申请执行这段代码--tao
if($type=="apply_for"){

	$name = $_REQUEST['name'];//品牌名
	$weixin = $_REQUEST['weixin'];//品牌名
	$phone = $_REQUEST['phone'];//品牌名
	$qq = $_REQUEST['qq'];//品牌名
	$brandname = $_REQUEST['brandname'];//品牌名
	// $content = $_REQUEST['content'];//品牌名
	//p($_REQUEST);die;
	$time=date("Y-m-d H:i:s",time());//当前时间
	$data = array(
		'a_name'=>$name,
		'a_weixin'=>$weixin,
		'a_phone'=>$phone,
		'a_qq'=>$qq,
		'b_name'=>$brandname,
		// 'content'=>$content,
		'applytime'=>$time,
		);
	$table = 'tgs_apply';
	$res = $mysql->add($table,$data);
	if($res){
     $mysql->show_msg('申请提交成功，24小时之内会有客服和你联系，请保持电话通畅！','../#/personal');
    }else{
      $mysql->show_msg('申请提交失败，请查明原因，重新申请','../#/apply_for');
    }
}


if($type=="changepassword"){
	///$mysql->p($_POST);die;
	$password=$_POST['password'];

	$repassword=$_POST['repassword'];

	$name=$_POST['name'];

	$weixin=$_POST['username'];

	$phone=$_POST['phone'];

	$passwordtime=date("Y-m-d",time());

	
	//$qq=$_POST['qq'];
	//$idcard=$_POST['idcard'];
	if($password=="" && $repassword==''){
		//print_r($weixin);die;
		$sql ="update tgs_agent set name = '$name' where weixin = '$weixin' ";
		//echo $sql;die;
	$res = mysql_query($sql);
	if($res){
			echo 1;
		}
	}else{

	$sql ="update tgs_agent set  password = '$password',name = '$name',passwordtime='$passwordtime' where weixin = '$weixin' ";
	$res = mysql_query($sql);
	//echo $sql;die;
		if($res){

			echo 2;
			
		}
	}	
 }

?>