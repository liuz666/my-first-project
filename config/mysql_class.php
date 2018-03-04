<?php
	

	Class Mysql{
		private $conn = '';
		private $url = '';//地址
		private $user = '';//用户名
		private $password = '';//密码
		private $database = '';//数据库名
		private $charset = '';//编码
	
		//构造方法，初始化参数
		public	 function __construct($url,$user,$password,$database,$charset="utf8"){
			$this->url = $url;
			$this->user = $user;
			$this->password = $password;
			$this->database = $database;
			$this->charset = $charset;
			$this->conn();
		}
	#链接MySQL，并转账数据库和编码
	/*
	 *function conn  数据库连接
	 *param   $url        数据库的链接地址
	 *param   $user       数据库的用户名
	 *param   $password   数据库的密码
	 *param   $database   连接的数据库
	 *param   $charset    数据库的编码
	 *return  $conn       返回唯一的标识
	 * 
	 * */
		private function conn(){
			$this->conn = @mysql_connect($this->url,$this->user,$this->password);
			if(!$this->conn){echo '数据库连接失败，请联系管理员！';die;}
			// echo '连接成功！';
			// 选择我们要操作的数据库
			$db = mysql_select_db($this->database);
			if(!$db){echo '数据库连接失败，请联系管理员！';die;}
			//编码，手动去设置一遍
			$this->query('set names '.$this->charset);
			return $this->conn;
		} 
		#执行查询语句
		public function query($sql){
			return mysql_query($sql,$this->conn);
		}
/*
 *function get_all  查询所有数据
 *param   $sql    查询语句
 *return   $data   array
 */
		public function get_all($sql){
			//global $conn;//数据库的唯一标识
			$result = $this->query($sql);
			$data= array();
			while($row = mysql_fetch_assoc($result)){
					 //$this->p($row);
					$data[]=$row;
					
				//组合成为一个二维数组
			}
			return $data;
		}

/*
 *function get_one  查询一条记录数据
 *param   $sql    查询语句
 *return   $data   array
 */
		public function get_one($sql){
			//global $conn;//数据库的唯一标识
			//print_r($sql);die;
			$result = $this->query($sql);
			//print_r($res);
			$data = '';
			$data = mysql_fetch_assoc($result);
			return $data;
		}

/*
 *function get_num  查询有几条记录数据
 *param   $sql    查询语句
 *return   $total   array
 */
		public function get_num($sql){
			//global $conn;//数据库的唯一标识
			$result = $this->query($sql);
			// print_r($res);
			$total = '';
			$total = mysql_num_rows($result);
			return $total;
		}
 /**
   * 判断操作结果函数
   */
		private function res($result){
			if($result && mysql_affected_rows()>0){
				return true;
			}else{
				return false;
			}
		}
/*
 * function    delete   删除数据
 * $table    string     表名
 * $where     string     条件
 * return     bool
 */
		public function del($table,$where){
			//global $conn;//数据库的唯一标识
			$sql = "DELETE FROM `$table` WHERE $where";
			//print_r($sql);die;
		    $result = $this->query($sql);
		    return $this->res($result);
		}

	/*
	*functin add   添加数据
	*param   $table    string    表名
	*param   $data    array      数据
	* return   bool
	 */
		public function add($table,$data){
			global $conn;//数据库的唯一标识
			$sql = "INSERT INTO {$table}(`";
			$sql .= implode('`,`',array_keys($data));
			$sql .= '`)VALUES("';
			$sql .= implode('","',array_values($data));
			$sql .= '");';
			//print_r($sql);die;
		    $result = $this->query($sql);
		    return $this->res($result);
		   }

			/*
			*function 	update 		修改内容数据更新函数
			*param 		$table 		string	 表名
			*param 		$data 		array 	要修改 数据
			*param 		$where 		string 	条件
			*return 	bool 		执行的结果[true/false]
			 */
			public function update($table,$data,$where){
				$sql = "UPDATE `{$table}` SET ";
				foreach ($data as $key => $value) {
				$sql .= "`{$key}` = '{$value}',";
				}
				$sql = rtrim($sql,',');
				$sql .= ' where '.$where;
			//print_r($sql);die;
				$result = $this->query($sql);
		    	return $this->res($result);
			}

			/*
			*function 	 show_msg   弹出提示信息
			*param 	$msg  	string 	输出信息
			*param 	$url  	string 	 跳转的路径（默认为空）
			*
			 */
			public function show_msg($msg,$url=''){
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

			/*
			 *auther      byb1601
			 *date        2016-05-06
			 *function    打印数组
			 *param       $val     被打印的内容
			 *return      没有返回值
			 *banben      1.0v
			 *mail        123456@qq.com
			 */
			public function v($val){
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
		public function p($val){
				echo '<pre>';
				print_r($val);
				echo '</pre>';
			}

		public function bigpan($gid=0,$format,$bid){
				if($gid == '0')   // 0的时候为查询品牌下所有商品的数据 gid 是产品ID
				{
					
					//$sql = "select sum(order_big * {$format} + order_small) as buyall from tgs_order where order_bid = {$bid}";

					$sql = 	"select DATE_FORMAT(FROM_UNIXTIME(order_time),'%Y%m%d') as time,sum(order_big * {$format} + order_small) as buyall from tgs_order where order_bid = {$bid} group by DATE_FORMAT(FROM_UNIXTIME(order_time),'%Y%m%d')";

					//$sql = 	"select sum(order_big * {$format} + order_small) as buyall,order_id from tgs_order where order_bid = {$bid} group by DATE_FORMAT(FROM_UNIXTIME(order_time),'%Y%m%d')";
				}
				if($gid != '0')
				{
					$sql = 	"select DATE_FORMAT(FROM_UNIXTIME(order_time),'%Y%m%d') as time,sum(order_big * {$format} + order_small) as buyall from tgs_order where order_gid={$gid} order by DATE_FORMAT(FROM_UNIXTIME(order_time),'%Y%m%d')";
				}
				$data= $this->get_all($sql);
				//print_r($data);
				$timedata = array();
				$buydata = array();
				for($i=0;$i<count($data);$i++)
				{
					array_push($timedata,$data[$i]['time']);
					array_push($buydata,$data[$i]['buyall']);

				}
				//$pandata[0] = $timedata;
				//$pandata[1] = $buydata;
				$pandata['time'] = $buydata;
				$pandata['data'] = $timedata;
				

				return $pandata;

			}

     //不是品牌主的情况下的大盘数据
	public function feidapan($gid=0,$format,$bid,$inagent)
	{

					if($gid == '0')   // 0的时候为查询品牌下所有商品的数据
				{
					$sql = "select DATE_FORMAT(FROM_UNIXTIME(order_time),'%Y%m%d') as time,sum(order_big * 30 + order_small) as buyall from tgs_order where order_bid = {$bid} and order_agentid in($inagent) group by DATE_FORMAT(FROM_UNIXTIME(order_time),'%Y%m%d')";
				}
				if($gid != '0')
				{
					$sql = "select DATE_FORMAT(FROM_UNIXTIME(order_time),'%Y%m%d') as time,sum(order_big * 30 + order_small) as buyall from tgs_order where order_gid = {$gid} and order_agentid in($inagent) group by DATE_FORMAT(FROM_UNIXTIME(order_time),'%Y%m%d')";
					
					//$sql = 	"select goods_format,gid from tgs_goods where gid={$gid}";
				}
			$data1 = $this->get_all($sql);

			$timedata = array();
			$buydata = array();
			for($i=0;$i<count($data1);$i++)
			{
			array_push($timedata,$data1[$i]['time']);
			array_push($buydata,$data1[$i]['buyall']);

			}
			$pandata['time'] = $buydata;
			$pandata['data'] = $timedata;
				return $pandata;


	}		
			// 品牌下面的所有产品ID与箱子格式
	public function goods_format($gid,$bid)
	{
				if($gid == '0')   // 0的时候为查询品牌下所有商品的数据
				{
					$sql = 	"select goods_format,gid from tgs_goods where g_bid={$bid}";
				}
				if($gid != '0')
				{
					$sql = 	"select goods_format,gid from tgs_goods where gid={$gid}";
				}
			$pai = $this->get_all($sql);
			return $pai[0]['goods_format'];
			//return $pai;
	}
	//把下级代理的所有UID合并在一起，格式化显示   dersym  显示成  1,2,3,4,100000
	public function inagent($uid,$chaxunc)
	{
		$sql = "select agent_id from tgs_agentbrand where sjdl in($chaxunc)";
		$result = $this->query($sql);
		$data = array();
		while($row = mysql_fetch_row($result)){
					 //$this->p($row);
					 $data[] =  $row;

					
				//组合成为一个二维数组
			}
			//print_r($data);
			for($i=0;$i<count($data);$i++)
			{
				
				$allagnet .=$data[$i][0].',';
				//echo $data[0][$i];
			}
				$allagnet.=$uid.','.'1000000';   // 合并自己的id和默认最高用户id
			return $allagnet;
			
	}		

}


	//把下级代理的所有UID合并在一起，格式化显示
	// public function inagent($uid,$chaxunc)
	// {
	// 	$sql = "select agent_id from tgs_agentbrand where sjdl in($chaxunc)";
	// 	$result = $this->query($sql);
		
	// 	while($row = mysql_fetch_assoc($result)){
	// 				 //$this->p($row);
	// 				echo $row;
					
	// 			//组合成为一个二维数组
	// 		}
			
	// }



// $cc = new Mysql('localhost','root','','coach');
// // // $sql = 'select * from coach_nav';
// // // $data = $cc->get_all($sql);
// $table = 'coach_nav';
// $data = array(
// 	'nav_name' =>'xxxx',
// 	'nav_url' =>'xxxx',
// 	'is_show' =>'1',
// 	'nav_addtime' =>'1465097556',
// 	);
// $res = $cc->add($table,$data);
//var_dump($res);


// if($res){
// 	 $cc->show_msg('添加数据成功');
// }else{
// 	$cc->show_msg('增加数据失败');
// }	
//print_r($data);die;

?>