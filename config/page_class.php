<?php
header("Content-Type:text/html;charset=utf-8");
	Class Page{
		private $total = '';     #总数据量
		private $current= '';	#当前页码
		private $limit= '';		#单页数据量
		private $size= '';		#显示数字页码
		private $conf= '';		#分页配置(功能) 
		private $style= '';		#分页样式

	//构造方法，初始化参数
		public	function __construct($total,$current,$limit,$size,$conf,$style){
			$this->total = $total;
			$this->current = $current;
			$this->limit = $limit;
			$this->size = $size;
			$this->conf = $conf;
			$this->style = $style;
			//$this->page_p();
		}
	
		/**
			 * function     分页函数
			 * author       B1502
			 * date         2015-04-13
			 */

			/*
			 * function   获取分页的网址(过滤分页的get参数)
			 * param      string   $page          分页变量
			 * return     string   $url           返回得到的网址
			 */
			public	function pagingUrl($page){

					$url = $_SERVER['PHP_SELF'].'?';
					if($_GET){
						foreach($_GET as $key => $value){	
							if($key !=$page){		
								$url .=$key.'='.$value.'&';
							}
						}
					}
					return $url;
				}


		/**
		 * function 分页配置函数
		 * param    string        $total            总数据量
		 * param    string        $current          当前页码
		 * param    string        $limit            单页数据量
		 * param    string        $size             显示数字页码
		 * param    array        $conf              分页配置(功能) 
		   默认全部开启 '首页start','尾页end','上页prev','下页next','下拉框jump2';
		 * param    string        $style            分页样式
		 * return     string      $pageStyle        返回分页         
		 */
			public function page_p(){

				//总页码
				$sum = ceil($this->total/$this->limit);	

				//判断当前页的范围
				if($this->current<=0){

					$this->current = 1;

				}else if($this->current >=$sum){

					$this->current = $sum;

				}else{
					
					$this->current +=0;

				}

				//地址栏上页码的变量
				$var ='page';

				//获取地址
				$url = $this->pagingUrl($var);

				//判断是否有定制功能，没有就默认全部功能显示
				if(!$this->conf){
				
				$this->conf =array('start','end','prev','next','jump2');
				
				}

				$pageStyle = "<div id='page' class='".$this->style."'>";
				
				//判断是否是第一页，是则上一页或首页不能点
				if($this->current != 1){

					//判断是否定制首页功能
					if(in_array('start',$this->conf)){

						$pageStyle .= "<a href='".$url.$var."=1'>首页</a>";
					
					}

					//判断是否定制上一页功能
					if(in_array('prev',$this->conf)){

						$pageStyle .= "<a href='".$url.$var."=".($this->current-1)."'>上一页</a>";
					
					}
				
				}else{

					//判断是否定制首页功能
					if(in_array('start',$this->conf)){

						$pageStyle .= "<span class='disabled'>首页</span>";
					
					}

					//判断是否定制上一页功能
					if(in_array('prev',$this->conf)){
					
						$pageStyle .= "<span class='disabled'>上一页</span>";
					
					}

				}

				//判断是否定制了数字页码
				if($this->size){
					//左边最小页码		
					$begin = $this->current - floor($this->size/2);
					//左边最大页码
					$finish = $this->current + floor($this->size/2);


					//防止出现负数页码
					if($begin<1){
						
						$begin = 1;

						$finish = $this->size;

					//防止页码超过总页数
					}else if($finish>$sum){

						$begin = $sum - $this->size+1;

						$finish = $sum;

					}

					#当总页码小于每页显示的页码时
					if($sum<$this->size){
						$begin = 1;
						$finish = $sum;
					
					}

					//循环输出页码，$begin是页码的左边开始，$finish页码的右边结束
					for($i = $begin;$i <= $finish;$i++){
						
						//判断是否是当前页码，是则不能点
						if($i !=$this->current){

							$pageStyle .= "<a href='".$url.$var."=".$i."'>".$i."</a>";

						}else{

							$pageStyle .= "<span class='current'>".$i."</span>";

						} 
					}
				
				}

				//判断是否是末页，是则下一页或者末页不能点
				if($this->current != $sum){
					
					//判断是否定制下一页功能
					if(in_array('next',$this->conf)){
					
						$pageStyle .= "<a href='".$url.$var."=".($this->current+1)."'>下一页</a>";

					}

					//判断是否定制末页功能
					if(in_array('end',$this->conf)){

						$pageStyle .= "<a href='".$url.$var."=".$sum."'>末页</a>";
					
					}

				}else{

					//判断是否定制下一页功能
					if(in_array('next',$this->conf)){
					
						$pageStyle .= "<span class='disabled'>下一页</span>";
					
					}

					//判断是否定制末页功能
					if(in_array('end',$this->conf)){			

						$pageStyle .= "<span class='disabled'>末页</span>";

					}

				}
				//判断是否定制页面任意跳转功能，分两种跳转方式
				if(in_array('jump',$this->conf)){

					$pageStyle .="<select id='jump'>";

					for($i = 1;$i<=$sum;$i++){

						if($i != $this->current){

							$pageStyle .="<option  value=".$url.$var."=".($i).">$i</option>";

						}else{

							$pageStyle .="<option selected='selected' value=".$url.$var."=".($i).">$i</option>";

						}
					}
					$pageStyle .="</select>";

					$pageStyle .="<script>\n";
					$pageStyle .="var sel = document.getElementById('jump');";
					$pageStyle .="sel.onchange=function(){";
					$pageStyle .="window.location.href=this.value";
					$pageStyle .="}";
					$pageStyle .="</script>";

				}else if(in_array('jump2',$this->conf)){
				
					$pageStyle .="<input class='text' type='text' id='jump2Page' onkeyup='this.value=this.value.replace(/[^\d]*/g,\"\")' name='".$var."'>";
					$pageStyle .="<a href='' class='button' id='jump2'>go</a>";
					$pageStyle .="<script>\n";
					$pageStyle .="var sel = document.getElementById('jump2');";
					$pageStyle .="sel.onclick=function(){";
					$pageStyle .="var p = document.getElementById('jump2Page').value;";
					$pageStyle .="this.href=('".$url.$var."="."'+(p?p:1))";
					$pageStyle .="}";
					$pageStyle .="</script>";

				}
				$pageStyle .="<span class='desc'>共 ".$sum."页".$this->total."条记录</span></div>";
				// 
				return $pageStyle;

			}













}



?>