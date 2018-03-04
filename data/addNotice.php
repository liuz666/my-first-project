<?php
include('../config/common.conf.php');//引用公共样式和函数类库

if($type == "brandname"){
//查询改代理商所代理的品牌和所有的商品
    $arr = array();
    $sql=mysql_query("select agent_bid,id from tgs_agent  where weixin ='{$weixin}'");//根据获取得微信查询代理商的所有个人信息--tao
        $row = mysql_fetch_assoc($sql);//获取代理商数据
        $id = $row['id'];//赋值代理商所有代理品牌ID

    $sqlr = "select brandname,brand_id from tgs_agentbrand where agent_id = '$id'";

    $rest = mysql_query($sqlr);
        //查询代理商所有代理品牌的品牌信息

    while($row1 = mysql_fetch_assoc($rest)){//查询结果
            
            $arr[]= $row1;//组成三维数组
                    
             }
            //p($arr);die;
    echo json_encode($arr); 
   }
    
//添加公告
if($type =="add"){
  $sql = "select * from tgs_agent where weixin='$weixin'";//查询当前代理商所有信息
    $result = mysql_query($sql);
    $array = mysql_fetch_array($result);
    $uid = $array["id"];//当前代理商ID
    $band_name=$_REQUEST['pp'];
    $g_bid=$_REQUEST['id'];
    $content=$_REQUEST['addc'];
    $times = date('Y-m-d H:i:s',time());
    $status = 0;

    $sqlt = "insert into tgs_gonggao(uid,g_bid,content,times,status)values('$uid','$g_bid','$content','$times','$status')";
    //echo $sql;die;
    $res = mysql_query($sqlt);
    if($res){
        echo 1;
    }else{
        echo 2;
    }
  
}




    ?>