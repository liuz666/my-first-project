<?php
	//上传文件类型列表
				$uptypes = array (
					    'image/jpg',
					    'image/png',
					    'image/jpeg',
					    'image/pjpeg',
					    'image/gif',
					    'image/bmp',
					    'image/x-png'
					);
				$max_file_size = 20000000;              //上传文件大小限制，单位BYTE
				$destination_folder = '../../upload/erweima/';//上传文件路径
				if ($max_file_size < $size) {
					//echo "上传文件太大";
					echo 5;
					exit();
				}
				if (!in_array($type, $uptypes)) {
					//echo "上传文件类型不符" ;
					echo 6;
					exit();
				}
				//$mysql->p($_FILES["upfile"]["name"]);die;
				if (!file_exists($destination_folder)) {
					mkdir($destination_folder);
					}
				$pinfo = pathinfo($imgname);
				$ftype = $pinfo["extension"];
				//$myql->p($pinfo);die;
				$destination = $destination_folder.date('YmdHis',time()).mt_rand(10000,99999).".".$ftype;
				if (file_exists($destination) && ($overwrite != true)) {
					echo 7;
					//echo "同名的文件已经存在了";
					exit();
				}
				//$mysql->p($destination);die;
				$res = move_uploaded_file($tmp_name,$destination);
				if($res){

				}else{
					echo 8;
					exit();
				}

				$pinfo = pathinfo($destination);
				//$mysql->p($pinfo);die;
				$fname = $pinfo[basename];



?>