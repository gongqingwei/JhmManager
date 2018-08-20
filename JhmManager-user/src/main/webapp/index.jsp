<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn"><head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title>微活码平台-员工后台</title>
	<meta name="format-detection" content="telephone=no, address=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-touch-fullscreen" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
	<meta name="keywords" content="微活码平台,微信群活码系统,如故科技">
	<meta name="description" content="微活码平台，群活码二维码，如故科技,活码二维码生成制作，满足各类微信开发的需求，是国内最强大的微信到付订单系统。">
	<link href="style_files/bootstrap.min.css" rel="stylesheet">
	<link href="style_files/common.min.css" rel="stylesheet">
	<link rel="stylesheet" href="style_files/weui_0.4.3_style_weui.min.css">
</head>
<body>

    
<div class="weui_dialog_alert" id="dialog_alert" style="display:none;">
   <div class="weui_mask"></div>
   <div class="weui_dialog">
       <div class="weui_dialog_hd"><strong class="weui_dialog_title">提示</strong></div>
       <div class="weui_dialog_bd" id="dialog_alert_Mes"></div>
       <div class="weui_dialog_ft">
           <a onclick="dialog_alert_Hide();" id="okBtn" class="weui_btn_dialog primary">确定</a>
       </div>
   </div>
</div>  
 
 
 <div id="loadingToast" class="weui_loading_toast" style="display:none;">
   <div class="weui_mask_transparent"></div>
   <div class="weui_toast">
       <div class="weui_loading">
           <div class="weui_loading_leaf weui_loading_leaf_0"></div>
           <div class="weui_loading_leaf weui_loading_leaf_1"></div>
           <div class="weui_loading_leaf weui_loading_leaf_2"></div>
           <div class="weui_loading_leaf weui_loading_leaf_3"></div>
           <div class="weui_loading_leaf weui_loading_leaf_4"></div>
           <div class="weui_loading_leaf weui_loading_leaf_5"></div>
           <div class="weui_loading_leaf weui_loading_leaf_6"></div>
           <div class="weui_loading_leaf weui_loading_leaf_7"></div>
           <div class="weui_loading_leaf weui_loading_leaf_8"></div>
           <div class="weui_loading_leaf weui_loading_leaf_9"></div>
           <div class="weui_loading_leaf weui_loading_leaf_10"></div>
           <div class="weui_loading_leaf weui_loading_leaf_11"></div>
       </div>
       <p class="weui_toast_content">信息提交中</p>
   </div>
</div>

<div class="container container-fill">
<style>
	body{background:#d2e6e9;}
	.panel{margin:.5em; border:none;}
	.panel-info>.panel-heading {background: -webkit-gradient(linear, 0 0, 100% 0, from(#ebebeb), to(#f3f9fa), color-stop(30%, #f5f9f9)); color:#666666; border:none;}
	a{color:#666666;}a:hover{color: #3ebacc;}
	.nav-tabs>li.active>a, .nav-tabs>li.active>a:hover, .nav-tabs>li.active>a:focus{color: #3ebacc;}
	.actions{margin:.8em auto;}
	.nav.nav-tabs{margin-bottom:.8em;}
	.btn.btn-primary{background: #56c6d6; color: #FFF; border: 0;}
</style>
<div class="panel panel-info ng-container ng-scope" ng-controller="loginPanel">
	<div class="panel-heading">
		<h4>员工后台登录</h4>
	</div>
	<div class="panel-body">
	<form name="form1" method="post" class="ng-pristine ng-valid" id="form1" action="salesman/login/login">
		<ul class="nav nav-tabs">
				<li class="active"><a href="http://qr.coolgi.cn/salesman/login/loginpage#">账号登录</a></li>			
		</ul>
		<div class="tab-content">
				<div class="tab-pane animated fadeInLeft active" id="basic">
					<div class="form-group has-feedback">
						<input type="text" class="form-control ng-pristine ng-untouched ng-valid" id="username" name="username" placeholder="账号">
					</div>
					<div class="form-group has-feedback">
						<input type="password" class="form-control ng-pristine ng-untouched ng-valid" id="pwd" name="pwd" placeholder="密码">
					</div>
				</div>
					</div>
		<button type="submit" class="btn btn-primary btn-block">登录</button>
	</form>
	</div>
	
	
</div>
	</div>



<div class="center-block footer" style="left:0px; position:fixed; width:100%; height:50px; color:#FFF; text-align:center; font-size:18px; font-weight:bold; bottom:0px;">
		<div class="text-center">
			<h5><a href="http://qr.coolgi.cn/salesman/login/loginpage#" onclick="goto();">Copyright ©如故科技</a></h5>
		</div>
		<script>			
			function goto(){
				if(is_weixin()){
					window.location.href="/Public/html/rugukeji.html";
				}else{
					window.location.href="http://www.rugukeji.cn/";
				}
			}
		
			function is_weixin() {
				var ua = window.navigator.userAgent.toLowerCase(); 
				if (ua.match(/MicroMessenger/i) == 'micromessenger') { 
					return true;
				} else { 
					return false;
				} 
			}			
		</script>
</div>


</body></html>
