<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
							<a class="list-group-item " href="admin/Salesman/salesmanList"><i class="fa fa-users"></i> &nbsp;&nbsp;员工查看</a>
							<a class="list-group-item active" href="admin/Salesman/salesmanAdd"><i class="fa fa-user"></i> &nbsp;&nbsp;员工添加</a>
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
							<li><a href="http://www.mpt7bp.cn/index.php/admin/Salesman/salesmanAdd#"><i class="fa fa-cogs"></i> &nbsp; 微活码平台</a></li>
							<li class="active">员工添加</li>
						</ol>
										<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">员工添加</h3>
  </div>
  <div class="panel-body">
  
  
    <form class="form-horizontal" action="admin/Salesman/salesmanAdd" method="POST" onsubmit="return vaildForm();">

	<div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">员工姓名<span style="color:red">*</span></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="username" name="userName">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">密码 <span style="color:red">*</span></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="password" name="pwd" >
	  <p class="help-block">密码最少6位数，不要过于简单。</p>
    </div>
	
  </div>
  
  
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">确认密码<span style="color:red">*</span></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="password2" name="password2" >
    </div>
  </div>
  
    <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" class="btn btn-default" name="submit" value="提交">  
    </div>
  </div>
  
</form>

  </div>
</div>

</div>
<script type="text/javascript">
	function vaildForm(){	
		var username =$("#username").val();
		var password =$("#password").val();
		var password2 =$("#password2").val();
		
		if(username==undefined || username=="" || username==null){
			swal("业务员姓名必须填写！", "", "error");
			return false;
		}
		
		if(password==undefined || password=="" || password==null){
			swal("密码必须填写！", "", "error");
			return false;
		}
		
		if(password2==undefined || password2=="" || password2==null){
			swal("确认密码必须填写！", "", "error");
			return false;
		}
		
		if(password!=password2){
			swal("2次密码不一致！", "", "error");
			return false;
		}
		
		if(password.length<3 || password2.length<3){
			swal("密码不少于3位数", "", "error");
			return false;
		}
		
		return true;
	}
</script></div></div></body></html>
