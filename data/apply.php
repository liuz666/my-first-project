<?php
	include('../data/common.conf.php');
	$weixin= $_GET['wx'];
	$brandid= $_GET['brandid'];
	$sql="select brand_name from tgs_brand where bid ='$brandid' ";
	//echo $sql;
	$data = get_one($sql);

	$brandname= $data['brand_name'];

	//p($brandname);die;
	$sql ="select * from tgs_dengji where jibie = (select min(jibie) from tgs_dengji) and d_bid = '$brandid'";
	//echo $sql 
	$dengji = get_one($sql);
	//p($dengji);die;
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>代理商注册</title>

<link rel="stylesheet" href="../css/ui-dialog.css"/><!--弹窗框插件-->
<link href="../../style/css/xfl_css.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery-1.11.3.js"></script>
<script src="../js/dialog-min.js"></script><!--弹窗框插件-->


<style>
	
	.aa{position:absolute;top: 25px;right: 10px;width: 21%;height:30px;background:#ccc;border:1px solid #ccc;text-align:center;line-height:30px;color:#000;font-size:16px;border-radius:0.5rem;margin-top:5px;margin-right:5px;}
</style>
</head>

<body>
<div class="zhuce_head"><img src="" /></div>
<!-- <a href="#/login?" id="shenq">已有账号</a>
 --><div class="zhuce_main" style="margin:30px auto;">
	<div>
	<a class="aa" href="http://localhost/wecaff/wei02/#/login?brandid=<?php echo $brandid?>" >已有账号</a>
	<div class="zhuce_maintl" >请填写以下注册项目</div>

   
	<table border="0" cellspacing="0" cellpadding="0" class="tableclas1"  style="font-family:'微软雅黑'; font-size:16px;margin-top: 50px;">
    <tr>
			<td height="75" align="right">上级代理</td>
			<td>
			<input name="sjdlss" type="text"  class="rs_input1" id="sjdlss" 
			value="微信号:<?php echo $weixin?>" readonly="readonly" />

            <input name="sjdl" type="hidden" id="sjdl" value="<?php echo $weixin?>"/></td>

            <input name="brand_id" type="hidden" id="brand_id" value="<?php echo $brandid?>"/>

            <input name="brandname" type="hidden" id='brandname' value="<?php echo $brandname?>"/>

            <input type="hidden" name="dengji" id="dengji" value="<?php echo $dengji['djname']?>" />
            </td>
	  </tr>
        <tr>
			<td height="30" align="right"></td>
			<td style="text-align:center;">(带<span style="color:red;">*</span>为必填)</td>
		</tr>
     
        <tr>
			<td height="75" align="right">登录名</td>
			<td><input type="email" name="weixin" id="weixin"  class="rs_input1" placeholder="建议使用微信号" style="ime-mode: disabled;"/><span style="color:red;">*</span></td>
		</tr>
		
		<tr>
			<td height="75" align="right">设置密码</td>
			<td><input type="text" name="password" id="password"  class="rs_input1"  /><span style="color:red;">*</span></td>
		</tr>
		<tr>
			<td class="leftweidd" height="75" align="right">姓名</td>
			<td><input type="text" name="name" id="name"  class="rs_input1" placeholder="建议使用真实姓名" /></td>
		</tr>
		<tr>
			<td  height="75" align="right">手机号</td>
			<td>
			  <input type="tel" name="phone" id="phone" class="rs_input1" maxlength="11" placeholder="仅直属上下级查看"/></td>
		</tr>
		
		
        
		<tr>
			<td height="80">&nbsp;</td>
			<td style="padding-top: 20px;">
				<input name="input" type="submit" id="submit" value="填写完成并提交" class="tj_input"  />
			</td>
		</tr>
	</table>

</div>
</div>
</body>
<script>
function showMessage(content,id){ /*封装弹框函数*/
					var d = dialog({
						align: 'top', /*弹框位置*/
						content: content /*弹框内容*/
					});
					d.show();
					setTimeout(function () {
						d.close().remove();
					},2000);
					d.show(document.getElementById(id));//根据元素位置来显示弹出框位置
		}

		 $(function(){
			$("#submit").click(function(){
				var sjdlss =  $('#sjdlss').val();
				//console.log(sjdlss);
				var sjdl =  $('#sjdl').val();
				//console.log(sjdl);
				var brand_id =  $('#brand_id').val();
				var brandname =  $('#brandname').val();
				var dengji =  $('#dengji').val();
				var weixin =  $('#weixin').val();
				var password =  $('#password').val();
				var name =  $('#name').val();
				var phone =  $('#phone').val();

			$.ajax({
		        type: "post",
		        url: 'sqagent.php?act=apply',
		        data: {'username':weixin,'sjdlss':sjdlss,'sjdl':sjdl,'brand_id':brand_id,'brandname':brandname,'dengji':dengji,'password':password,'name':name,'phone':phone},
		        success: function(data){
		        		console.log(data);
		        	if(data==1){

		        		showMessage('上级代理微信号不存在,请检查','sjdlss');

		        	}
		        	if(data==2){
		        		showMessage('代理商编号不存在，请检查','sjdlss');
		        	}
		        	
		        	if(data==3){
		        		showMessage('请输入登录名','weixin');
		        	}
		        	if(data==4){
		        		showMessage('密码不能为空','password');
		        	}
		        	if(data==5){
		        		showMessage('请输入姓名','name');
		        	}
		        	if(data==6){
		        		showMessage('请输入手机号码','phone');
		        	}
		        	if(data==7){
		        		showMessage('代理商编号已存在','sjdlss');
		        	}

		        	if(data==8){
		        		showMessage('该用户名已存在！','weixin');
		        	}
		        	if(data==9){
		        		showMessage('手机号已存在','phone');
		        	}

		        	if(data==10){
		        		showMessage('手机号格式不正确','phone');
		        	}
		        	if(data==11){
		        		alert('申请成功！请登录账号');
		        		window.location.href='../#/login';

		        		//showMessage('申请成功！请登录账号','phone');
		        	}
		        	if(data ==12 || data == 13 || data ==14 ){
		        		showMessage('申请失败！请重新申请~！');

		        	}
		           	
		        }
		    }); 


			})
})
	
		
$("#weixin").blur(function(){
		var objReg=/^[^\u4e00-\u9fa5|\s]{0,}$/;
		var weixin =  $('#weixin').val();
		if(!objReg.test(weixin)){
			//alert("不能输入中文");
			showMessage('不能输入中文和空格！','weixin');
			$('#weixin').val('');
		}
		//console.log(weixin);
		$.ajax({
		        type: "post",
		        url: 'ajax.php?type=username',
		        data: {'username':weixin},
		        success: function(data){
		        		console.log(data);
		        	if(data==1){

		        		showMessage('该用户名已存在！','weixin');

		        	}
		           
		        }
		    }); 
  
	});




</script>
</html>
