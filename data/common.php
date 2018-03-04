<?php
	function get_str($id = 0)
	{
	global $str;
	$sql = "select * from tgs_agentbrand where sjdl= $id";
	$result = mysql_query($sql);
	if($result && mysql_affected_rows()) {
		while ($row = mysql_fetch_array($result)) {
			$str .= "" . $row["sjdl"] . ",";
			get_str($row["agent_id"]);
		}
	}
	return $str;	
}

$weixin = @$_SESSION['weixin'];//获取当前代理商的微信号
$sql = "select id,name,weixin,sjdl from tgs_agent where weixin='$weixin'";//查询当前代理商所有信息
$arr = $mysql->get_one($sql);
$acid = $arr["id"];//当前代理商ID
$aname = $arr["name"];//姓名
$aweixin = $arr["weixin"];//微信号
//$adengji = $arr["dengji"];//等级
$sjdl = @$arr["sjdl"];//等级
$aac = $acid;
//p($aac);die;
$chaxuna = get_str($aac);//调用get_str函数。获取当前代理商的所有下级
$chaxunb = 1000000;
$chaxunc = "$chaxuna$chaxunb";//组成字符串
	//$mysql->p($chaxunc);die;
?>