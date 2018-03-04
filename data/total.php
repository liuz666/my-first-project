<?php
include('common.conf.php');
	//p($_SESSION);die;
	function get_str($id = 0)
{
	global $str;
	$sql = "select * from tgs_agent where sjdl= $id";
	$result = mysql_query($sql);
	if ($result && mysql_affected_rows()) {
		while ($row = mysql_fetch_array($result)) {
			$str .= "" . $row["sjdl"] . ",";
			get_str($row["id"]);
		}
	}
	return $str;
}

$weixin = $_SESSION['weixin'];//获取当前代理商的微信号
$sql = "select * from tgs_agent where weixin='$weixin'";//查询当前代理商所有信息
$result = mysql_query($sql);
$arr = mysql_fetch_array($result);
$acid = $arr["id"];//当前代理商ID
$aname = $arr["name"];//姓名
$aweixin = $arr["weixin"];//微信号
$adengji = $arr["dengji"];//等级
$aac = $acid;
$chaxuna = get_str($aac);
//p($chaxuna);//调用get_str函数。获取当前代理商的所有下级
$chaxunb = 1000000;
$chaxunc = "$chaxuna$chaxunb";//组成字符串
//p($chaxunc);die;
//查询公告数量
// $sql = "select ta.id from tgs_agent as ta left join tgs_gonggao as tg on tg.uid = ta.id left join  tgs_read as tr on ta.id= tr.user_id where sjdl in ($chaxunc)";
	$sql = "select id from tgs_agent where sjdl in ($chaxunc) or weixin ='{$weixin}'";
	$a = get_all($sql);
	//p($a);die;
	//echo $sql;
	$res = mysql_query($sql);
	$total = mysql_num_rows($res);
		
//echo json_encode($total );	
?>