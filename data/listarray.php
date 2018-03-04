<?php
	include('../data/common.conf.php');
	$array = array(

			array(
				'name'=>'基础配置',
				'template'=> 'app/sksapp/template/configbasic.html',
				'img'=>'basic',
				'reimg'=>'basic2',
				),
				
			array(
				'name'=>'奖品配置',
				'template'=> 'app/sksapp/template/configgift.html',
				'img'=>'gift',
				'reimg'=>'gift2',

				),
			
	
		);

$toupapp = json_encode($array);

echo $toupapp;

// $a = "u4f60u597d";

// $dd  = json_decode($a);
// echo $dd;
?>

    
       
    
     