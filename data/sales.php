<?php
include('../config/common.conf.php');//引用公共样式和函数类库
//当前代理商的销售库存信息
if($type =="sales"){
    $output = array(); //-----------------liu
    $count = 5;
    $start = @$_REQUEST['start'];
        if(empty($start))
        {
            $start = 0;
        } //-----------------------------liu 
    //三表查询，tgs_agent/tgs_store/ tgs_goods查询出改代理商所代理品商品的库存
    $sql = "select tg.goods_pic,tg.goods_name,tg.introduct,ts.big,ts.small from tgs_agent as ta  left join tgs_store as ts on ta.id = ts.agent_id  left join tgs_goods as tg  on ts.goods_id = tg.gid  where weixin ='{$weixin}' LIMIT $start,$count ";
        //echo $sql;die;
        $output =$mysql-> get_all($sql);
        //$mysql->p($output);die;
    echo json_encode($output); //------- ---------------------liu 
}

//当前代理商发货所有品牌数据
if($type =="Sendout"){
  //查询改代理商所代理的品牌和所有的商品
    $arr = array();
    $sql = "select ta.weixin,ta.id,tab.brandname,tab.brand_id from tgs_agent as ta left join tgs_agentbrand as tab on ta.id = tab.agent_id where weixin = '{$weixin}' ";//联表查询当前代理商代理品牌的信息
    //$sql=mysql_query("select * from tgs_agent  where weixin ='{$weixin}'");//根据获取得微信查询代理商的所有个人信息--tao
       $res = mysql_query($sql);
        //获取代理商数据
    while($row = mysql_fetch_assoc( $res)){
        //$agent_bid=$row['agent_bid'];//赋值代理商所有代理品牌ID
            $id=$row['id'];//赋值代理商所有代理品牌ID
        //查询代理商所有代理品牌的品牌信息
        $sql1 = mysql_query("select bid,brand_name from tgs_brand  where bid ='{$row['brand_id']}'");

        while($row1 = mysql_fetch_assoc($sql1)){//查询结果
            //p($row1);

            $sql2 = mysql_query("select * from tgs_goods as tg left join tgs_store as ts on tg.gid = ts.goods_id where g_bid = {$row1['bid']} and agent_id = '$id'");//查询代理商代理品牌下面的所有商品以及商品的库存
            while($row2 = @mysql_fetch_assoc($sql2)){//查询结果
                $row1['goods'][] = $row2;//组成二维数组
                }
            $arr[] = $row1;//组成三维数组
                    
             }
        
        }
    
//p($arr);die;
 echo json_encode($arr);      


}


?>