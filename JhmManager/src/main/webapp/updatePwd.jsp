<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<!-- saved from url=(0051)http://qr.coolgi.cn/index.php/admin/Index/updatePwd -->
<html lang="zh-cn"><head>
<base href="<%=basePath %>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>微活码平台,助力微信精确快速吸粉-如故科技</title>
	<meta name="keywords" content="微分群平台,微信群活码系统,如故科技">
	<meta name="description" content="微分群平台，群活码二维码，活码二维码生成制作，满足各类微信开发的需求，是国内最强大的微信到付订单系统。">
	<link rel="shortcut icon" href="https://res.wx.qq.com/mpres/htmledition/images/favicon218877.ico">
	
	<link href="style_files/updatePwd/bootstrap.min.css" rel="stylesheet">		
	<script src="style_files/updatePwd/jquery.min.js"></script>
	<script src="style_files/updatePwd/bootstrap.min.js"></script>
	
	<link href="style_files/updatePwd/font-awesome.min.css" rel="stylesheet">
	<link href="style_files/updatePwd/common.css" rel="stylesheet">
	
	<!--提示框js-->
	<link href="style_files/updatePwd/sweetalert.min.css" rel="stylesheet">
	<script src="style_files/updatePwd/sweetalert.min.js"></script>
			
			
</head>
<body>

<div class="gw-container" style="min-height: 633px;">	
	<div class="navbar navbar-static-top" role="navigation" style="padding-top:20px;">
		<div class="container-fluid">
			<a class="navbar-brand gw-logo" href="http://qr.coolgi.cn/index.php/admin/Index/updatePwd#"></a>
		</div>
	</div>
	
	<div class="container-fluid">
			
			<div class="well">
		<script>
	var h = document.documentElement.clientHeight;
	$(".gw-container").css('min-height',h);
	</script><ol class="breadcrumb">
	<li><a href="http://qr.coolgi.cn/index.php/admin/BackStage"><i class="fa fa-home"></i></a></li>
	<li><a href="http://qr.coolgi.cn/index.php/admin/BackStage">系统</a></li>
	<li class="active">账号信息</li>	</ol>
<ul class="nav nav-tabs">
	<li class="active"><a href="http://qr.coolgi.cn/index.php/admin/Index/updatePwd#">账号信息</a></li>
</ul>
	<div class="clearfix">
		<form action="updatePwd" method="post" class="form-horizontal form" onsubmit="return vaildForm();">
			<h5 class="page-header">密码修改</h5>
			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label">帐号</label>
				<div class="col-sm-9 col-xs-12">
						<input type="text" name="name" class="form-control" value="admin" readonly="">
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label">密码</label>
				<div class="col-sm-9 col-xs-12">
						<input type="password" name="password" id="password" class="form-control" value="">
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label" style="color:red">新密码</label>
				<div class="col-sm-9 col-xs-12">
						<input type="password" name="password2" id="password2" class="form-control" value="">
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label" style="color:red">确认密码</label>
				<div class="col-sm-9 col-xs-12">
					<input type="password" name="password3" id="password3" class="form-control" value="">
				</div>
			</div>
						<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
				<div class="col-sm-9 col-xs-12">
						<input name="submit" type="submit" value="提交" class="btn btn-primary">
				</div>
			</div>
		</form>
	</div>
			</div>
		
		<div class="center-block footer">
		<div class="text-center">
			<h3>Copyright ©如故科技</h3>
		</div>
	</div>
		
		</div>			
	</div>


<script type="text/javascript">
	function vaildForm(){	
	
		var password =$("#password").val();
		var password2 =$("#password2").val();
		var password3 =$("#password3").val();
		
		if(password==undefined || password=="" || password==null){
			swal("请填写管理员密码！", "", "error");
			return false;
		}
		
		if(password2==undefined || password2=="" || password2==null){
			swal("请填写新密码！", "", "error");
			return false;
		}
		
		if(password2!=password3){
			swal("2次密码不一致！", "", "error");
			return false;
		}
		
		return true;
	}
</script></body></html>
