<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- saved from url=(0058)http://www.mpt7bp.cn/index.php/admin/Salesman/salesmanList -->
<html lang="zh-cn">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>微活码平台,助力微信精确快速吸粉-如故科技</title>
	<meta name="keywords" content="微分群平台,微信群活码系统,如故科技">
	<meta name="description" content="微分群平台，群活码二维码，活码二维码生成制作，满足各类微信开发的需求，是国内最强大的微信到付订单系统。">
	<link rel="shortcut icon" href="https://res.wx.qq.com/mpres/htmledition/images/favicon218877.ico">
	
	<link href="style_files/bootstrap.min.css" rel="stylesheet">		
	<script src="style_files/jquery.min.js"></script>
	<script src="style_files/bootstrap.min.js"></script>
	
	<link href="style_files/font-awesome.min.css" rel="stylesheet">
	<link href="style_files/common.css" rel="stylesheet">
	
	<!--提示框js-->
	<link href="style_files/sweetalert.min.css" rel="stylesheet">
	<script src="style_files/sweetalert.min.js"></script>
			
			
</head>
<body>

<div class="navbar navbar-inverse navbar-static-top" role="navigation" style="position:static;">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
				<li><a href="admin/Qrcode/qrcodeList"><i class="fa fa-cubes"></i>微活码平台</a></li>
				<li><a href="https://www.kancloud.cn/xdedxh/qunqrcode/433717" target="_blank"><i class="fa fa-book"></i>使用手册</a></li>
				</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a>欢迎你 admin</a></li>
				<li><a href="admin/Index/updatePwd"><i class="fa fa-user"></i>修改密码</a></li>
				<li><a href="admin/Index/logoff"><i class="fa fa-sign-out fa-fw"></i>退出系统</a></li>			
			</ul>
		</div>
	</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12 col-sm-3 col-lg-2 big-menu">						
					<div class="panel panel-default">
					
						<div class="panel-heading">
							<h4 class="panel-title">投放管理</h4>	
						</div>
						<ul class="list-group collapse in" id="frame-menu">
							<a class="list-group-item " href="admin/Qrcode/qrcodeList"><i class="fa fa-star"></i> &nbsp;&nbsp;员工投放查看</a>
							<!--<a class="list-group-item " href="/index.php/admin/Qrcode/qrcodeAdd"><i class='fa fa-support'></i> &nbsp;&nbsp;投放添加</a>-->
						</ul>
						
						<div class="panel-heading">
							<h4 class="panel-title">用户</h4>	
						</div>
						<ul class="list-group collapse in" id="frame-menu">
							<a class="list-group-item active" href="admin/Salesman/salesmanList"><i class="fa fa-users"></i> &nbsp;&nbsp;员工查看</a>
							<a class="list-group-item " href="admin/Salesman/salesmanAdd"><i class="fa fa-user"></i> &nbsp;&nbsp;员工添加</a>
						</ul>
						
						
						<div class="panel-heading">
							<h4 class="panel-title">管理</h4>	
						</div>
						<ul class="list-group collapse in" id="frame-menu">
							<a class="list-group-item " href="admin/System/systemSeting"><i class="fa fa-cogs"></i> &nbsp;&nbsp;系统设置</a>	
						</ul>						
					</div>
										
				</div>
				
				
<div class="col-xs-12 col-sm-9 col-lg-10">
					<ol class="breadcrumb" style="padding:5px 0;">
							<li><a href="http://www.mpt7bp.cn/index.php/admin/Salesman/salesmanList#"><i class="fa fa-cogs"></i> &nbsp; 微活码平台</a></li>
							<li class="active">员工查看</li>
						</ol>
<div class="panel panel-info">
      <div class="panel-heading">
        <h3 class="panel-title">员工手机端后台</h3>
      </div>
      <div class="panel-body">
			
			<div style="text-align:center;">
			<h4>http://www.mpt7bp.cn/salesman/login/loginpage</h4>&nbsp;&nbsp;&nbsp;或者将此网址复制到浏览器打开
				<h3>扫描进入用户手机端后台<span style="color:red;">（推荐用手机自带的浏览器打开，不推荐直接在微信中打开。）</span></h3>
				<div id="qrcode" style="margin:0 auto; width:256px;height:256px;" title="http://www.mpt7bp.cn/index.php/salesman/login/loginpage"><canvas width="256" height="256" style="display: none;"></canvas><img src="data:image/png;base64,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" style="display: block;"></div>
			</div>
				<script src="style_files/qrcode.min.js"></script>
				<script>
				var qrcode = new QRCode(document.getElementById("qrcode"), {
					width : 256,
					height : 256,
					colorDark : '#000000',
					colorLight : '#ffffff',
					correctLevel : QRCode.CorrectLevel.H
				});

				qrcode.makeCode("http://www.mpt7bp.cn/index.php/salesman/login/loginpage");
				</script>
      </div>
    </div>	
	
<div class="panel panel-default">
  <!-- Default panel contents -->
 <!-- <div class="alert alert-info" style="font-size:20px;">用户后台地址与管理员一样，不同账户拥有不同权限。</div>-->
  <div class="panel-heading">员工查看&nbsp;&nbsp;&nbsp;&nbsp;</div>
  <!-- Table -->
  <table class="table table-hover">
    <thead class="navbar-inner">
      <tr>
        <th>序号</th>
		<th>用户名</th>
		
		<th>最后登录时间</th>
		<th>最后登录IP</th>
		<th>创建时间</th>
        <th style="text-align:center;width:250px;">操作</th></tr>
    </thead>
    <tbody>
		  <tr id="tr30">
			<td>30</td>
			<td>c15</td>
			
			<td>2018-06-30 20:15:13</td>
			<td>1.62.161.11</td>
			<td>2018-06-30 09:25:26</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(30)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(30)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr29">
			<td>29</td>
			<td>lilong</td>
			
			<td></td>
			<td></td>
			<td>2018-06-29 19:37:47</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(29)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(29)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr28">
			<td>28</td>
			<td>c081</td>
			
			<td>2018-06-29 09:30:01</td>
			<td>1.189.57.3</td>
			<td>2018-06-27 15:46:45</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(28)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(28)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr27">
			<td>27</td>
			<td>c14</td>
			
			<td>2018-06-30 13:51:52</td>
			<td>223.29.252.51</td>
			<td>2018-06-27 14:49:58</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(27)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(27)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr26">
			<td>26</td>
			<td>c13</td>
			
			<td>2018-06-30 13:49:36</td>
			<td>223.104.17.200</td>
			<td>2018-06-27 14:36:55</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(26)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(26)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr25">
			<td>25</td>
			<td>c12</td>
			
			<td>2018-06-29 15:54:11</td>
			<td>42.102.214.4</td>
			<td>2018-06-24 12:21:27</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(25)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(25)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr24">
			<td>24</td>
			<td>c11</td>
			
			<td>2018-06-30 17:33:43</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 12:21:21</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(24)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(24)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr23">
			<td>23</td>
			<td>c10</td>
			
			<td>2018-06-30 20:11:57</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 12:21:11</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(23)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(23)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr22">
			<td>22</td>
			<td>c09</td>
			
			<td>2018-06-30 16:53:19</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 12:21:03</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(22)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(22)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr21">
			<td>21</td>
			<td>c08</td>
			
			<td>2018-06-30 17:31:49</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 12:20:55</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(21)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(21)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr20">
			<td>20</td>
			<td>c07</td>
			
			<td>2018-06-30 20:19:01</td>
			<td>123.165.95.219</td>
			<td>2018-06-24 12:20:47</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(20)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(20)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr19">
			<td>19</td>
			<td>c06</td>
			
			<td>2018-06-30 20:12:33</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 12:17:55</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(19)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(19)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr18">
			<td>18</td>
			<td>c05</td>
			
			<td>2018-06-30 20:19:04</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 12:17:44</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(18)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(18)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr17">
			<td>17</td>
			<td>c04</td>
			
			<td>2018-06-30 17:29:51</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 12:17:33</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(17)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(17)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr16">
			<td>16</td>
			<td>c03</td>
			
			<td>2018-06-30 16:50:47</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 12:17:25</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(16)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(16)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr15">
			<td>15</td>
			<td>c02</td>
			
			<td>2018-06-30 17:29:00</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 12:17:14</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(15)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(15)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr14">
			<td>14</td>
			<td>c01</td>
			
			<td>2018-06-30 20:17:06</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 12:17:02</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(14)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(14)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr13">
			<td>13</td>
			<td>a01</td>
			
			<td>2018-06-29 17:49:29</td>
			<td>1.189.57.3</td>
			<td>2018-06-24 10:18:06</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(13)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(13)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr12">
			<td>12</td>
			<td>B09</td>
			
			<td>2018-06-30 20:23:06</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 09:53:09</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(12)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(12)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr11">
			<td>11</td>
			<td>B08</td>
			
			<td>2018-06-30 15:47:14</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 09:32:10</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(11)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(11)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr10">
			<td>10</td>
			<td>B07</td>
			
			<td>2018-06-30 16:29:24</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 09:31:53</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(10)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(10)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr9">
			<td>9</td>
			<td>B06</td>
			
			<td>2018-06-30 20:22:10</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 09:31:37</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(9)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(9)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr7">
			<td>7</td>
			<td>B04</td>
			
			<td>2018-06-30 17:56:37</td>
			<td>117.136.56.244</td>
			<td>2018-06-24 09:31:11</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(7)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(7)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr6">
			<td>6</td>
			<td>B03</td>
			
			<td>2018-06-30 20:25:16</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 09:30:49</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(6)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(6)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr5">
			<td>5</td>
			<td>B02</td>
			
			<td>2018-06-30 20:26:06</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 09:30:26</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(5)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(5)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr><tr id="tr4">
			<td>4</td>
			<td>B01</td>
			
			<td>2018-06-30 16:24:07</td>
			<td>1.62.161.11</td>
			<td>2018-06-24 09:25:44</td>
			<td align="center"> 
			  <a class="btn btn-default btn-sm" onclick="updatePwd(4)" title="修改密码"><i class="icon-remove"></i>修改密码</a>	  		  
			  <a class="btn btn-danger btn-sm" onclick="deleteSalesman(4)" title="删除"><i class="icon-remove"></i>删除</a>
			</td>
		  </tr>	
    </tbody>
  </table>
</div>
</div>

<script type="text/javascript">
function updatePwd(id){
			  swal({
			title: "修改密码",
			text: "请输入要修改的密码",
			type: "input",
			showCancelButton: true,
			closeOnConfirm: false,
			confirmButtonText:"确认",
			cancelButtonText :"取消",
			inputValue:"",
			animation: "slide-from-top",
			inputPlaceholder: "输入要修改的密码"
		},
		function(inputValue) {
			if (inputValue === false) return false;
			if (inputValue === "") {
				swal.showInputError("密码输入不正确!");
				return false
			}
			
			$.ajax({
			  type: "POST",
			  url: "/index.php/admin/Salesman/salesmanEditPwd?password="+inputValue+"&id="+id,
			  success: function(result) {
				if (result == "0") {
					swal("修改成功!", "", "success");			
				} else {
				   swal("修改失败", "刷新页面，再试一次！", "error");
				}
			  }
			});
		});
    }
	
	
function deleteSalesman(id){
	swal({
		title: "确定要删除吗？",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: "#DD6B55",
		confirmButtonText: "确定",
		cancelButtonText :"取消",
		closeOnConfirm: false
	},
	function() {
		 $.ajax({
          type: "POST",
          url: "/index.php/admin/Salesman/salesmanDelete?id="+id,
          success: function(result) {
            if (result == "0") {
			 $("#tr" + id).remove();
             swal("删除数据成功", "", "success");
            } else {
             swal("删除数据失败！", "", "error");
            }
          }
        });
		
	});
}	
	
	
	
	
	
	
	
	
	
	
</script></div></div></body></html>