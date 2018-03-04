<?php
include('../config/common.conf.php');//引用公共样式和函数类库

    //P($_REQUEST);die;
//$weixin = $_SESSION['weixin'];//通过全局session获取到当前代理商的微信--tao
//查询改代理商所代理的品牌和所有的商品

$sql=mysql_query("select id from tgs_agent  where weixin ='{$weixin}'");//根据获取得微信查询代理商的所有个人信息--tao
    $row = mysql_fetch_assoc($sql);//获取代理商数据

    $aid = $row['id'];//赋值代理商所有代理品牌ID

    //$type = $_REQUEST['type'];
    //p($type);

    //库存拆分
    if($type=='cha'){
        $sid = $_REQUEST['sid'];
        $bid = $_REQUEST['activeBid'];
        $gid = $_REQUEST['activeGid'];
        $chabig = $_REQUEST['everyChaBig'];
        $chasmall = $_REQUEST['everyChaSmall'];
        
        $sql = "update tgs_store set big='$chabig',small = '$chasmall' where sid = '$sid' and goods_id='$gid' and agent_id='$aid' ";
        $res = mysql_query($sql );

        if($res){
           echo 1; 
        }else{
            echo 2;
        }


    }

//库存合并
if($type=='he'){
        $sid = $_REQUEST['sid'];
        $bid = $_REQUEST['activeBid'];
        $gid = $_REQUEST['activeGid'];
        $hebig = $_REQUEST['everyHeBig'];
        $hesmall = $_REQUEST['everyHeSmall'];
        //同步更新数据库的store表
        $sql = "update tgs_store set big='$hebig',small = '$hesmall' where sid = '$sid' and goods_id='$gid' and agent_id='$aid' ";
        $res = mysql_query($sql );//执行更新语句
        if($res){
           echo 1; 
        }else{
            echo 2;
        }


    }


   