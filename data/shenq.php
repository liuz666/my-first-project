<?php
	include('common.conf.php');
    $brand_id=$_REQUEST['brand_id'];
    //p($brand_id);die;
    $sql = "select bid,brand_name from tgs_brand where bid = {$brand_id}";
    $brand_data = get_one($sql);
    
    echo json_encode($brand_data);
    