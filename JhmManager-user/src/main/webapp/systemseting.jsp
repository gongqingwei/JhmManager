<%@page import="bean.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>
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
	<link href="style_files/weui.min.css" rel="stylesheet">
	<link href="style_files/font-awesome/fonts/fontawesome-webfont.woff2" rel="stylesheet">
</head>
<body>

<div class="container container-fill">

<style type="text/css">
	.sel { background:#e9342a; color:#fff;}
	.nosel { background:#fff;color:#000}
</style>
<!--../../../../../Public/images/head-bg.png-->
<div class="container container-fill">
<style>
body{background:#d2e6e9;padding-bottom:63px;}
/*个人中心*/
.pcenter-main .head{position:relative; height:170px; width:100%; background:url('https://img.alicdn.com/imgextra/i2/2145921404/TB2Pz.XhOwIL1JjSZFsXXcXFFXa_!!2145921404.png') no-repeat center center; background-size:100% auto; -moz-background-size:100% auto; -webkit-background-size:100% auto;}
.pcenter-main .head .ptool{float:right; display:inline-block; text-decoration:none; height:50px; line-height:50px; width:50px; text-align:center;font-size:25px; color:#749caa;}
.pcenter-main .head .pdetail{height:120px; padding:50px 0 0 20px; -webkit-box-sizing:border-box;}
.pcenter-main .head .pdetail .img-circle{float:left; width:66px; height:66px; overflow:hidden; margin-right:10px; border:1px rgba(255,255,255,0.2) solid;}
.pcenter-main .head .pdetail .img-circle img{width:66px;}
.pcenter-main .head .pdetail .pull-left span{display:block; color:#FFF; line-height:20px;}
.pcenter-main .head .pdetail .pull-left span.name{font-size:20px; display:inline-block; max-width:150px; height:25px; line-height:25px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; word-break:keep-all;}
.pcenter-main .head .pdetail .pull-left span.type{font-size:14px;}
.pcenter-main .head .head-nav{height:50px; line-height:20px; padding-top:7px; background:rgba(0,0,0,0.2);}
.pcenter-main .head .head-nav .head-nav-list{display:inline-block; float:left; text-decoration:none; color:#FFF;  width:25%; text-align:center; font-size:16px; background:-webkit-gradient(linear, 0 0, 0 100, from(rgba(255,255,255,0.5)), to(rgba(255,255,255,0.5)) ) no-repeat left center; -webkit-background-size:1px 75%;}
.pcenter-main .head .head-nav .head-nav-list:first-child{background:none;}
.pcenter-main .head .head-nav .head-nav-list > span{font-weight:bold; display:block; font-size:14px;}
/*竖排导航条 通用*/
.mnav-box ul{padding:10px 15px 0 15px;font-family:Helvetica, Arial, sans-serif;}
.mnav-box ul li{padding:10px 15px;}
.pcenter-main .profile{width:100%;background:transparent url('resource/images/home-bg.jpg') no-repeat; background-size:cover;}
.pcenter-main .profile .tabbable>ul{padding:10px 15px 0px 15px;}
.pcenter-main .profile .tabbable .nav-tabs>li.active>a, .nav-tabs>li.active>a:hover, .nav-tabs>li.active>a:focus{color:#5ac5d4;background-color:#E9F7F8;}
.pcenter-main .profile label{color:#555; font-weight:lighter; margin-top:5px;}
</style>
<div class="pcenter-main">
	<div class="head">
		<a class="ptool" href="http://qr.coolgi.cn/index.php/salesman/Index/index#"><i class="fa fa-cog fa-spin"></i></a>
		<div class="pdetail">
			<div class="img-circle"><img src="style_files/systemseting/6d0e674204684a6996224e8254684f68_th.jpg" onerror="this.src=&#39;http://img.mp.itc.cn/upload/20160408/6d0e674204684a6996224e8254684f68_th.jpg&#39;"></div>
			<div class="pull-left">
				<span class="name"><a href="http://qr.coolgi.cn/index.php/salesman/Index/index#" style="color:white;">微活码平台</a></span>
				<span class="name"></span>
				<span class="name"></span>
				<span class="type"><i class="fa fa-flag-o"></i>&nbsp;&nbsp;员工:${username}</span>
			</div>
		</div>
		
	</div>
</div>
</div>

<div class="js_dialog" id="removeBindDialog" style="opacity: 1; display:none">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <div class="weui-dialog__hd"><strong class="weui-dialog__title">提示</strong></div>
                <div class="weui-dialog__bd">确定要退出登录吗?</div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" style="text-decoration:none;" onclick="removeBindShoworHide();" class="weui-dialog__btn weui-dialog__btn_default">取消</a>
                    <a href="javascript:;" style="text-decoration:none;" onclick="removeBind();" class="weui-dialog__btn weui-dialog__btn_primary">确定</a>
                </div>
            </div>
</div>


<div class="js_dialog" id="updatepwddiv" style="opacity: 1;display:none">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <div class="weui-dialog__hd"><strong class="weui-dialog__title">提示</strong></div>
                <div class="weui-dialog__bd" style="margin-top:1px;">输入要修改的密码:<input type="text" id="pwd"></div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" style="text-decoration:none;" onclick="updatepwddiv();" class="weui-dialog__btn weui-dialog__btn_default">取消</a>
                    <a href="javascript:;" style="text-decoration:none;" onclick="updatepwd();" class="weui-dialog__btn weui-dialog__btn_primary">确定</a>
                </div>
            </div>
</div>

<div class="list-group">
  <a href="salesman/Index/qrcodeList" class="list-group-item">投放查看<span class="glyphicon glyphicon-list-alt" aria-hidden="true" style="float:right"></span></a>
  <a href="toqrcodeAdd" class="list-group-item">投放添加<span class="fa fa-plus" aria-hidden="true" style="float:right"></span></a>
  <a href="salesman/Index/linkQrcode" class="list-group-item">查看推广码<span class="glyphicon glyphicon-paperclip" aria-hidden="true" style="float:right"></span></a>
  <a onclick="updatepwddiv()" class="list-group-item">修改密码<span class="fa fa-adjust" aria-hidden="true" style="float:right"></span></a>
  <a onclick="removeBindShoworHide()" class="list-group-item">退出登录<span class="glyphicon glyphicon-fire" aria-hidden="true" style="float:right;"></span></a>
</div>

<!--
<div class="center-block footer" style="left:0px; position:fixed; width:100%; height:50px; color:#FFF; text-align:center; font-size:18px; font-weight:bold; bottom:0px;">
		<div class="text-center">
			<h5><a href="#" onclick="goto();">Copyright ©如故科技</a></h5>
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
-->

<div class="center-block footer" style="left:0px; position:fixed; width:100%; height:50px; color:#FFF; text-align:center; font-size:18px; font-weight:bold; bottom:0px;">
		<div class="text-center">
			<h5><a href="http://qr.coolgi.cn/index.php/salesman/Index/index#" onclick="goto();">Copyright ©如故科技</a></h5>
		</div>
		<script>			
			function goto(){
				if(is_weixin()){
					window.location.href="/Public/html/rugukeji.html";
				}else{
					window.location.href="";
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





<script src="style_files/systemseting/jquery.min.js"></script>
<script>

		function removeBindShoworHide(){
		if($("#removeBindDialog").is(":hidden")){
			$("#removeBindDialog").show();
		}else{
			$("#removeBindDialog").hide();
		}
		
	}
	
	function removeBind(){
		window.location.href='admin/Index/logoff';
	}
	
	function updatepwddiv(){
		if($("#updatepwddiv").is(":hidden")){
			$("#updatepwddiv").show();
		}else{
			$("#updatepwddiv").hide();
		}
	}
	
	function updatepwd(){
		var pwd = $("#pwd").val();
		if(pwd == ""){
			alert("密码不能为空");
			return false;
		}
		
		$.ajax({
			  type: "POST",
			  url: "salesman/Index/salesmanEditPwd?password="+pwd,
			  success: function(result) {
				  result = eval("("+result+")");
				if (result.result == "0") {
					updatepwddiv();
					alert("修改成功,请重新登录。");		
				} else {
				   alert("修改失败");
				}
			  }
			});
	}

</script></div></body></html>
