<?
include('../config/common.conf.php');//引用公共样式和函数类库


//print_r($_SESSION);

@$bid = $_GET['bid'];
@$gid = $_GET['gid'];

if($gid == '')
{
	$gid = 0;
}
//  dersym  下方为查询大盘数据  等下开发需要加载一个，上次查询时间，如果如果是当天直接读取JSON文件，与上次差多少天，直接获取天数去查询

//  先开发品牌主可以看的数据

// 下面获取产品转化公式,计算出大规格更换小规格的计算方法 dersym
$pai = $mysql->goods_format($gid,$bid);
//echo $pai;

//echo $chaxunc;

//$isbarnd = count($pai);    // 判断是单品还是品牌
//print_r($pai);

//下面获取品牌主所有产品的ID号  



// 品牌主查询下列商品的数据
//$sql = "select DATE_FORMAT(FROM_UNIXTIME(order_time),'%Y%m%d') as time,sum(order_big * 30 + order_small) as buyall from tgs_order   group by DATE_FORMAT(FROM_UNIXTIME(order_time),'%Y%m%d')";	

// 品牌主结束

// $data = $mysql->get_all($sql);

// echo count($data);
// $daytime = array();
// $daybuy = array();
// for($i=0;$i<count($data);$i++)
// {
// 	array_push($daytime,$data[$i]['time']);
// 	array_push($daybuy,$data[$i]['buyall']);

// }
// print_r( json_encode($daytime));

// print_r( json_encode($daybuy));


//判断用户当前所查询的商品是否品牌主
$sql = "select * from tgs_brand where bid = {$bid} limit 1";
$adminid = $mysql->get_all($sql);
//print_r($adminid);
//print_r($adminid);
//echo $adminid[0]['brand_adminid'];
//echo $_SESSION['uid'];

//下面判断，如果是品牌主的话，获取全盘数据，如果不是，则获取部分数据
if($adminid[0]['brand_adminid'] == $_SESSION['uid'])  
{
	$data = $mysql->bigpan($gid,$pai,$bid);   //抓取数据
	//echo 'ccc';
	echo json_encode($data);
}

if($adminid[0]['brand_adminid'] != $_SESSION['uid'])
{
	//$sql = "select ta.id from tgs_agent as ta left join tgs_agentbrand as tab on ta.id = tab.agent_id  where tab.sjdl in ($chaxunc) and tab.brand_id = {$bid}";
	//echo $sql;
	
	// 获取 下级代理商 有多少人   dersym
	$inagent = $mysql->inagent($_SESSION['uid'],$chaxunc);
	//echo $inagent;
	$data = $mysql->feidapan($gid,$pai,$bid,$inagent);
	//echo 'dsds';
	echo json_encode($data);
	//echo json_decode($data1);

	
}






//print_r($_SESSION);

//欧博尔版权所有

//echo $chaxunc;

 //print_r($chaxunc);
// 不是品牌主必须获取下级用户的大盘数据

// 先直接抓数据库，如果以后卡死了，再想办法做成缓存的
// $data = $mysql->bigpan(2,30,1);   //抓取数据
// echo json_encode($data);

//print_r($_SESSION);
//print_r($data);



?>