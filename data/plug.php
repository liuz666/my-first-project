<?php
include('../config/common.conf.php');//引用公共样式和函数类库

if($type == "plug"){
		$count = 5;
         $start = @$_REQUEST['start'];
             if(empty($start))
             {
                 $start = 0;
             } //-----------------------------liu
	$sql = "select apptitle,number,appid,apptable,appimg from tgs_app limit $start,$count";//查询所有app应用
	$data = $mysql->get_all($sql);//全部数据
	foreach ($data as $key => $val) {//循环输出
		//echo $val;
		$sqlt = "select ti.status from tgs_install as ti left join tgs_app as tap on tap.appid = ti.appid where ti.uid = '$acid' and ti.appid ='{$val['appid']}' ";//查询出该代理商安装的app应用的信息
		//echo $sqlt;
		$res = mysql_query($sqlt);

		$num = mysql_fetch_assoc($res);

		if($num['status']==''){//如果没有安装，设置一个默认为0的状态

			$num['status']=0;
		}
		
		$data[$key]['status']=$num['status'];
	}
	echo json_encode($data);
}

//安装应用列表
if($type == "pluglist"){
	//查询当前的安装的状态，
	//查询审核的所有数据 
	$count = 6;
	$starts = @$_REQUEST['starts'];
		//echo $starts;
      if(empty($starts))
         {
             $starts = 0;
         }
     //-----------------------------liu
         $a = '';
		$sql = "select appid from tgs_app";//查询所有app应用
		$res = mysql_query($sql);
		
		while($row= mysql_fetch_assoc($res)){
			$a.="".$row["appid"].",";
		}
		$num = 10000000000;
		$appid = "$a$num";
		//echo $sq
		// $res = $mysql->get_all($sql);
		//$mysql->p($appid);die;
		$data=array();
	// while($row=mysql_fetch_assoc($res)){
		$sqlt = "select * from tgs_check as tc left join tgs_app as tap on tap.appid = tc.appid where tc.uid='$acid' and tc.appid in ($appid) and tc.checked in(0,1,2) order by tc.checked desc,tc.c_id desc limit $starts,$count";//查询出该代理商安装的app应用的信
			///echo $sqlt;die;
		// $rest = $mysql->query($sqlt);

		$data = $mysql->get_all($sqlt);
		foreach ($data as $key => $val) 
			{$sqlr = "select id,starttime,endtime from tgs_".$val['apptable']." where id ='{$val['tableid']}' ";
			//echo $sqlr;
			$res = mysql_query($sqlr);
			while($row= mysql_fetch_assoc($res)){
				$data[$key]['basic_id']=$row['id'];
				$data[$key]['starttime']=$row['starttime'];
				$data[$key]['endtime']=$row['endtime'];
			}

		}

		echo json_encode($data);
}

//记录每个用户是否是第一次进来
if($type=="click"){
	$id = $_SESSION['id'];//获取当前代理商的微信号
	$sql = "select name,weixin,plug,pluglist,config from tgs_agent where weixin = '$weixin'";//查询当前代理商所有信息
	$arr = $mysql->get_one($sql);
	echo json_encode($arr);

}
?>