<?php
include('../config/common.conf.php');//引用公共样式和函数类库
   // $weixin = $_SESSION['weixin'];//获取当前代理商的微信号
    $sql = "select id from tgs_agent where weixin='$weixin'";//查询当前代理商所有信息
    $agentdata = $mysql-> get_one($sql);

    $type=$_REQUEST['type'];//通过获取ajax参数获取url的值，判断进入那个if

//判断新建库存
  if($type=="newaddkc"){
    $goods_name=$_REQUEST['goodsName'];//要新建库存的商品名称
    $agent_id = $agentdata["id"];//当前代理商ID
    //$brand_name=$_REQUEST['brand_name'];//要新建库存的品牌
    $sql = "select gid from tgs_goods where goods_name = '{$goods_name}'";//根据提交过来的商品名称查询出改商品的id
    $gid = $mysql->get_one($sql);
    $goods_id= $gid['gid'];//获取该商品的ID

    $data['store_time'] = date("Y-m-d H:i:s",time());//获取当前时间
    $data['big']=$_REQUEST['bigbox'];//要添加的箱数
    $data['small']=$_REQUEST['smallbox'];//要添加的盒数

    if($data['big']!=0 ||  $data['small']!=0){
        //更新当前代理商新建的库存
         //$sql = "update tgs_store set big = '$bigbox',small='$smallbox',store_time='$time' where goods_id = '{$goods_id}' and agent_id = '{$agent_id}' ";
      $table ='tgs_store';//要更新的表名
      $where ='goods_id ='.$goods_id.' and agent_id = '.$agent_id;//判断条件
      $res = $mysql->update($table,$data,$where);//执行之后返回的结果

      //$res = mysql_query($sql);
      if($res){
            echo 1;//成功的返回1
        }else{
            echo 2;//失败返回2
        }
      
    }else{
      echo 3;
    }
}

//判断第一次登陆，新手操作完成的事件
if($type == "1"){
    $table = 'tgs_agent';
    $data['agent_num_login'] = 2;
    $where = 'weixin ='."'{$weixin}'";
    $res = $mysql->update($table,$data,$where); 
  }

  if($type == "username"){
    $username= $_REQUEST['username'];

    $sql = "select id from tgs_agent where weixin='".$username."' limit 1";

    $res = mysql_query($sql);

    if(mysql_num_rows($res)>0){
      echo 1;
    }else{
      echo 2;
    }
  }

 //app应用插件，新建活动事件
if($type=="newactivity"){
    $appid = $_REQUEST['appid'];
    $table = $_REQUEST['table'];
    $basicid = $_REQUEST['basicid'];
    $checked = $_REQUEST['checked'];
    $endtime = $_REQUEST['endtime'];
    if($checked==2){//checked==2说明该活动已经结束，可以新建活动
      $endtime = $endtime+3600*24;//活动结束时间加一天之后才能新建活动
      $time = time();
      if($time > $endtime){//通过当前时间和活动结束时间比较，如果当前时间大于活动时间就执行更新语句
          $sql = "update tgs_".$table." set number = 2 where id = '$basicid'";//
          $res = mysql_query($sql);
          if($res){
            echo 1;//更新成功返回1
            }
        }else{
          echo 2;//如果活动还没结束返回2
        }      
      }
    if($checked==0){//$checked==0说明该活动是被拒绝的，从而新建活动
          $sql = "update tgs_".$table." set number = 2 where id = '$basicid'";
          $res =mysql_query($sql);
          if($res){
            echo 1;
          }
      }

  }
//plug页面监控事件点击AJAX交互
if($type=="plug"){
      $number = $_REQUEST['number'];
      if($number==1){
        $data = array(
          'plug'=>$number,
          );
          $table = "tgs_agent";
          $where = ' id = '.$acid;
          $res = $mysql->update($table,$data,$where);

          if($res){
            echo 1;
          }
      }
}
//pluglist页面第一次进入监控事件点击AJAX交互
if($type=="pluglist"){
      $number = $_REQUEST['number'];
      if($number==1){
        $data = array(
          'pluglist'=>$number,
          );
          $table = "tgs_agent";
          $where = ' id = '.$acid;
          $res = $mysql->update($table,$data,$where);
          if($res){
            echo 1;
          }
      }
}
//config页面第一次进入监控事件点击AJAX交互
if($type=="config"){
      $number = $_REQUEST['number'];
      if($number==1){
        $data = array(
          'config'=>$number,
          );
          $table = "tgs_agent";
          $where = ' id = '.$acid;
          $res = $mysql->update($table,$data,$where);
          if($res){
            echo 1;
          }
      }
}

?>
  