<?php
/*
 *auther      byb1601
 *date        2016-05-06
 *function    打印数组
 *param       $val     被打印的内容
 *return      没有返回值
 *banben      1.0v
 *mail        123456@qq.com
 */
function v($val){
	echo '<pre>';
	var_dump($val);
	echo '</pre>';
}
/*
 *auther      byb1601
 *date        2016-05-06
 *function    打印数组
 *param       $val     被打印的内容
 *return      没有返回值
 *banben      1.0v
 *mail        123456@qq.com
 */
function p($val){
	echo '<pre>';
	print_r($val);
	echo '</pre>';
}
/*
 *function conn  数据库连接
 *param   $url        数据库的链接地址
 *param   $user       数据库的用户名
 *param   $password   数据库的密码
 *param   $database   连接的数据库
 *param   $charset    数据库的编码
 *return  $conn       返回唯一的标识
 * 
 */
function conn($url,$user,$password,$database,$charset="utf8"){
	$conn = @mysql_connect($url,$user,$password);
	if(!$conn){echo '数据库连接失败，请联系管理员！';die;}
	// echo '连接成功！';
	// 选择我们要操作的数据库
	$db = mysql_select_db($database);
	if(!$db){echo '数据库连接失败，请联系管理员！';die;}
	//编码，手动去设置一遍
	mysql_query('set names '.$charset);
	return $conn;
}
/*
 *function get_all  查询所有数据
 *param   $sql    查询语句
 *return   $data   array
 */
function get_all($sql){
	global $conn;//数据库的唯一标识
	$res = mysql_query($sql,$conn);
	$data= array();
	if(mysql_num_rows($res)>0){
		while($row = mysql_fetch_assoc($res)){
			$data[] = $row;
		}//组合成为一个二维数组
	}
	return $data;
}
/*
 *function get_one  查询一条记录数据
 *param   $sql    查询语句
 *return   $data   array
 */
function get_one($sql){
	global $conn;//数据库的唯一标识
	$res = mysql_query($sql,$conn);
	// print_r($res);
	$data = '';
	if(mysql_num_rows($res)>0){
		
		$data = mysql_fetch_assoc($res);
	}
	return $data;
}
/*
 * 中文字符截取
 * @param      string        $string       被处理的字符串
 * @param      int           $start        开始截取的位置
 * @param      int           $length       截取的字符长度
 * @param      string        $dot          缩略符号
 * @param      string        $charset      字符编码
 * @return       string      $new          成功截取后的字符串
 */

function cutstr($string, $start, $length, $dot = '',$charset = "utf-8") {
	//判断当前的环境中是否开启了mb_substr这个函数
	if(function_exists("mb_substr")){
		
		if(mb_strlen($string,$charset)>$length){
			//如果开启了就可以直接使用这个
			return mb_substr($string,$start,$length,$charset).$dot;
		}
		return mb_substr($string,$start,$length,$charset);
	}
	//否则就是下面没开启
	$new = '';
	//判断是否是gbk，是gbk就转码成utf-8
	if($charset==='gbk'){
		$string = iconv("gbk","utf-8",$string);
	}
	//下面这个只能使用在utf-8的编码格式中
	$str = preg_split('//u',trim($string));
	for($i = $start,$len = 1;$i<count($str)-1 && $len<=$length;$i++,$len++){
		$new .= $str[$i+1];
	}
	//如果是gbk，就需要在返回结果之前，把之前的转换编码恢复一下
	if($charset==='gbk'){
		$new = iconv("utf-8","gbk",$new);
	}
	return count($str)-2<$length?$new:$new.$dot;
}
/*
 * function    delete   删除数据
 * $table    string     表名
 * $where     string     条件
 * return     bool
 */
function del($table,$where){
	global $conn;//数据库的唯一标识
	$sql = 'delete from '.$table.' where '.$where;
	//print_r($sql);die;
    $res = mysql_query($sql,$conn);
    if(mysql_affected_rows()>0){
      return true;
    }else{
      return false;
    }
}

/*
*functin add   添加数据
*param   $table    string    表名
*param   $data    array      数据
* return   bool

 */
function add($table,$data){
	global $conn;//数据库的唯一标识
	$sql = "INSERT INTO {$table}(`";
	$sql .= implode('`,`',array_keys($data));
	$sql .= '`)VALUES("';
	$sql .= implode('","',array_values($data));
	$sql .= '");';
	//print_r($sql);die;
    $res = mysql_query($sql,$conn);
    if(mysql_insert_id()>0&&!empty($res)){
     return true;
    }else{
      return false;
    }
   }
/*
*function 	update 		修改内容
*param 		$table 		string	 表名
*param 		$data 		array 	要修改 数据
*param 		$where 		string 	要修改的记录ID
*return 	bool
 */
function update($table,$data,$where){
	$sql = "UPDATE `{$table}` SET ";
	foreach ($data as $key => $value) {
	$sql .= "`{$key}` = '{$value}',";
	}
	$sql = rtrim($sql,',');
	$sql .= ' where '.$where;
// print_r($sql);die;
	$res = mysql_query($sql);

	if(mysql_affected_rows()>0&&$res){
		return true;
	}else{
		return false;
	}
}


/*
*function 	 show_msg   弹出提示信息
*param 	$msg  	string 	输出信息
*param 	$url  	string 	 跳转的路径（默认为空）
*
 */
function show_msg($msg,$url=''){
	//将跳转的代码封装
	$str = '<script>alert ("'.$msg.'");';
	if($url){
		$str .= 'location.href="'.$url.'";';//跳转到指定页面
	}else{
		$str .='history.go(-1);';//返回上一页
	}
	$str .='</script>';
	echo $str;
}

/**
 * function      上传文件处理函数
 * param    string     $name      表单的上传文件框的name名称
 * param    array      $type      限制上传文件的类型
 * param    int        $size      限制上传文件的大小[君子协定] 单位: 字节
 * param    string     $path      指定上传文件的保存路径
 * return   array                 上传成功返回2个成员，失败返回一个成员
 **/
    function uploads($name,$type,$size,$path){

        $file = $_FILES[$name];
        # 1. 判断当前文件是否是post过来的文件  is_uploaded_file();
        if(!is_uploaded_file($file['tmp_name'])){
           return array('上传文件错误!');
        }
        # 2. 上传文件的错误状态判断 只有 error为0 的时候我们才会做文件上传处理
        if($file['error'] == 1 ){
            return array('上传文件太大!');
        }else if($file['error'] == 2 ){
            return array('上传文件太大!');
        }else if($file['error'] == 3 ){
            return array('上传文件不完整!');
        }else if($file['error'] == 4 ){
            return array('没有找到上传文件');
        }else if($file['error'] >4 ){
            return array('上传文件发生了未知错误,请联系网站工作人员!');
        }

        # 上传文件的类型判断

        #获取文件后缀
        $pre = pathinfo($file['name'],PATHINFO_EXTENSION);

        if(!in_array( $pre,$type) ){
            return array('上传文件的类型不正确!');
        }

        # 对上传文件大小进行判断
        if ($file['size'] > $size ){
            return array('上传文件太大!');
        }

        # 移动上传文件到我们的目录里面去
        # move_uploaded_file();
        # 为了防止上传文件的重命名，建议使用 微秒时间戳加上 随机数
        
        $newname = date('YmdHis',time()).mt_rand(10000,99999);
        $res = move_uploaded_file($file['tmp_name'],$path.'/'.$newname.'.'.$pre);
        // print_r($path.'/'.$newname.'.'.$pre);die;
        if($res){
           return array('上传文件成功',$newname.'.'.$pre);
        }else{
           return array('上传文件失败');
        }
    }

    /*
	 * function 		缩略图制作
	 * author 			Tiamo
	 * date 			2015-4-20
	 * param            $big_img			 string 		原图的路径和文件名
	 * param            $small_width		 int 		    生成图片的宽
	 * param            $small_height	     int 		    生成图片的高
     * param            $prefix              string         缩略图名称的前缀（默认_min）
	 * param            $path 			     string 		保存路径（默认本地）
	 * return 			boolean		返回布尔值（true or false）
	 */
	function small_img($big_img,$small_width,$small_height,$path='./',$prefix='min_'){
		#把图片打开[得到关于图像的信息]
		$info = getimagesize($big_img);
		#判断原图的类型，1：gif，2：jpeg，3：png
		switch($info[2]){
        case 1:
            $big_resource = imagecreatefromgif($big_img);
            break;
        case 2:
            $big_resource = imagecreatefromjpeg($big_img);
            break;
        case 3:
            $big_resource = imagecreatefrompng($big_img);
            break;
    	}
    	#新建小图画布
    	#imagecreate[新建一个普通的画布(这个支持的颜色少)]
        #imagecreatetruecolor [新建一个真彩色的画布(1600万种颜色) ]
    	$small_resource = imagecreatetruecolor($small_width,$small_height);
    	#把大图按照一定的比例复制粘贴到小图那里
    	imagecopyresized($small_resource,$big_resource,0,0,0,0,$small_width,$small_height,$info[0],$info[1]);
    	#判断新图的使用的格式和存放的路径
    	switch($info[2]){
        case 1:
            $res=imagegif($small_resource,$path.'/'.$prefix.basename($big_img));#basename 获取文件名
            break;
        case 2:
            $res=imagejpeg($small_resource,$path.'/'.$prefix.basename($big_img));
            break;
        case 3:
            $res=imagepng($small_resource,$path.'/'.$prefix.basename($big_img));
            break;
   		}
   		#关闭画图工具,为了不损耗内存，销毁掉资源包
   		imagedestroy($big_resource);
    	imagedestroy($small_resource);
    	if($res){
    		return true;
    	}else{
    		return false;
    	}
	}

	//echo small_img();
?>