<?php
include('common.conf.php');

$id = @$_GET['id'];
if($id){
    $weixin = $_SESSION['weixin'];
    $sql = ("update tgs_agent set agent_num_login ='2' where weixin = '$weixin'");
    //echo  $sql;
    $res = mysql_query($sql);
}
