<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!-- saved from url=(0060)http://qr.coolgi.cn/index.php/salesman/index/qrcodelist.html -->
<html lang="zh-cn"><head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title>投放查看</title>
	<meta name="format-detection" content="telephone=no, address=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-touch-fullscreen" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
	<meta name="keywords" content="微活码平台,微信群活码系统,如故科技">
	<meta name="description" content="微活码平台，群活码二维码，如故科技,活码二维码生成制作，满足各类微信开发的需求，是国内最强大的微信到付订单系统。">
	<link href="style_files/toufangLook/bootstrap.min.css" rel="stylesheet">
	<link href="style_files/toufangLook/common.min.css" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="style_files/toufangLook/style2.css">
</head>
<body>
<div class="container container-fill">

<style type="text/css">
	.sel { background:#e9342a; color:#fff;}
	.nosel { background:#fff;color:#000}
</style>

<div class="head" style="background-color:#28b0e4;">
<a href="admin/Index/login" class="bn pull-left"><i class="fa fa-angle-left"></i> </a>
	<span class="title">投放查看</span> 
	
</div>
 
<c:forEach var="toufang" items="${toufangs}">
<div style="margin-bottom:40px;">
	 <div class="myoder img-rounded" id="qrcode552">
		<div class="myoder-hd">
				<span class="pull-left">序号:&nbsp;&nbsp;${toufang.num}</span>			
			</div>		
		<div class="myoder-express">
				<span class="express-company" style="width: 30%;">缩略图&nbsp;&nbsp;</span>
				<span class="express-num" style="width: 70%;text-align: left">
					<img src="${toufang.suoluetu}" width="30">
				</span>
		</div>

		<div class="myoder-express">
				<span class="express-company" style="width: 30%;">二维码名称</span>
				<span class="express-num" style="width: 70%;text-align: left">${toufang.erweicodename}</span>
		</div>
		
		<div class="myoder-express">
				<span class="express-company" style="width: 30%;">页面标题</span>
				<span class="express-num" style="width: 70%;text-align: left">${toufang.pagetitle}</span>
		</div>
		
		<div class="myoder-express">
				<span class="express-company" style="width: 30%;">总投放次数</span>
				<span class="express-num" style="width: 70%;text-align: left">${toufang.alltoufangnum }</span>
		</div>
		
		<div class="myoder-express">
				<span class="express-company" style="width: 30%;">已投放次数</span>
				<span class="express-num" style="width: 70%;text-align: left">0</span>
		</div>
		
		<div class="myoder-express">
				<span class="express-company" style="width: 30%;">创建时间&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<span class="express-num" style="width: 70%;text-align: left"><fmt:formatDate value='${toufang.createdate}' pattern='yyyy-MM-dd HH:mm:ss'/></span>
		</div>
		
		<div class="myoder-express">
			<span class="express-company" style="width: 30%;">操作</span>
			<span class="express-num" style="width: 70%;text-align: left">
				<button type="button" class="btn btn-default btn-xs" onclick="changeCiShu(${toufang.num},${toufang.alltoufangnum});">更改投放次数</button>
				<button type="button" class="btn btn-warning btn-xs" onclick="deleteQrcode(${toufang.num})">删除</button>
			</span>
		</div>

	  </div></div>
</c:forEach>

 <div class="center-block footer" style="margin-top:10px;">
		<div class="text-center">
			<h5><a href="http://qr.coolgi.cn/index.php/salesman/index/qrcodelist.html#" onclick="goto();">Copyright ©如故科技</a></h5>
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



<script src="style_files/toufangLook/jquery.min.js"></script>
<link href="style_files/toufangLook/sweetalert.min.css" rel="stylesheet">
<script src="style_files/toufangLook/sweetalert.min.js"></script>
<script>
/* window.onload=function bok(){
	alert("bbb");
	
	var aok=document.getElementById("aok");
	aok.addEventListener("click", function() {
	    alert("为被点击了");
	});
	location.reload();
}; */
function deleteQrcode(qrcodeid){
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
          url: "salesman/index/qrcodeDelete?id=" + qrcodeid,
          success: function(result) {
        	  result=eval("("+result+")");
            if (result.result == "1") {
              $("#qrcode" + qrcodeid).remove();
             swal("删除数据成功", "", "success");
             location.reload();
            } else {
             swal("删除数据失败,刷新页面，再试一次！", "", "error");
            }
          }
        });
		
	});
    }
	
		function changeCiShu(qrcodeid,cishu){
			  swal({
			title: "更改投放次数",
			text: "当前投放次数:",
			type: "input",
			showCancelButton: true,
			closeOnConfirm: false,
			confirmButtonText:"确认",
			cancelButtonText :"取消",
			inputValue:cishu,
			animation: "slide-from-top",
			inputPlaceholder: "输入要修改的次数"
		},
		function(inputValue) {
			if (inputValue === false) return false;
			if (inputValue === "" || isNaN(inputValue)) {
				swal.showInputError("投放次数输入不正确!");
				return false
			}
			
			if(inputValue==cishu){
				swal.showInputError("请做出修改再提交!");
				return false
			}

			$.ajax({
			  type: "POST",
			  url: "salesman/index/changeCiShu?qrcodeid=" + qrcodeid+"&cishu="+inputValue,
			  success: function(result) {
				  result=eval("("+result+")");
				if (result.result == "1") {
					
					swal("更改成功!", "", "success");
					$("#showcishu" + qrcodeid).html(inputValue);
					location.reload();
				} else {
				   swal("更改失败", "刷新页面，再试一次！", "error");
				}
			  }
			});
		});
    }
</script></div></body></html>
