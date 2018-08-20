<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title>投放添加</title>
	<meta name="format-detection" content="telephone=no, address=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-touch-fullscreen" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
	<meta name="keywords" content="微活码平台,微信群活码系统,如故科技">
	<meta name="description" content="微活码平台，群活码二维码，如故科技,活码二维码生成制作，满足各类微信开发的需求，是国内最强大的微信到付订单系统。">
	<link href="style_files/qrcodeAdd/bootstrap.min.css" rel="stylesheet">
	<link href="style_files/qrcodeAdd/common.min.css" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="style_files/qrcodeAdd/style2.css">
	<script src="style_files/qrcodeAdd/jquery.min.js"></script>
	<link href="style_files/qrcodeAdd/sweetalert.min.css" rel="stylesheet">
	<script src="style_files/qrcodeAdd/sweetalert.min.js"></script>
	<script type="text/javascript">
	
	function testUpload(){
		//alert("...");
		var form = new FormData(document.getElementById("test"));
		var url ="http://localhost:8080/JhmManager-user/test";
		/* var url ="http://192.168.1.5:8080/JhmManager-user/test"; */
		//alert("url:"+url);
		$.ajax({
			url : url,
			data : form,
			type : 'post',
			dataType:'json',
			processData:false,
	        contentType:false,
	        success : function(data){
	        	
	        	//alert("data:"+data.suoluetu);
	        	$("#qrcodeimgsrc").attr("src",data.suoluetu);
	        	//$("#suoluetu").attr("value",data.suoluetu);
	        	$("#suoluetu").val(data.suoluetu); 
	        	document.getElementById("qrcode").value = data.suoluetu;
	        	//location.reload();
				$("#qrcodeimgdiv").show();
				//$("#qrcodeimgdiv").css("display","block");
	        },
	        error : function(data){
	        	
	        	alert("fail:图片大小超出限制");
	        	//location.reload();
	        }
		});
	}
		
	</script>
</head>
<body>
<div class="container container-fill">

<style type="text/css">
	.sel { background:#e9342a; color:#fff;}
	.nosel { background:#fff;color:#000}
</style>

<div class="head" style="background-color:#28b0e4;">
	<span class="title">投放添加</span>
</div>



<form id="test">  
	<div style="position:relative;left:18%;top:30%;">
	<input data-role="none" type="file" name="file" value="选择图片">  
	<button data-role="none" type="button" onclick="testUpload();">开始上传</button>
	
	</div>
</form>

  <div class="panel-body">
  
  
    <form class="form-horizontal"  action="qrcodeAdd" method="POST" onsubmit="return vaildForm();">
		
		
			  <input type="hidden" name="suoluetu" value="${suoluetu}">
			  	<div class="form-group" id="uploadimgdiv">
                <label class="col-sm-2 control-label">二维码图片
                  <span style="color:red">*</span></label>
                <div class="col-sm-9">
                 
				 <style>
					.progress{
						margin-top:2px;
						width: 200px;
						height: 14px;
						margin-bottom: 10px;
						overflow: hidden;
						background-color: #f5f5f5;
						border-radius: 4px;
						-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.1);
						box-shadow: inset 0 1px 2px rgba(0,0,0,.1);
					}
					.progress-bar{ 
						background-color: rgb(92, 184, 92);
						background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.14902) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.14902) 50%, rgba(255, 255, 255, 0.14902) 75%, transparent 75%, transparent);
						background-size: 40px 40px;
						box-shadow: rgba(0, 0, 0, 0.14902) 0px -1px 0px 0px inset;
						box-sizing: border-box;
						color: rgb(255, 255, 255);
						display: block;
						float: left; 
						font-size: 12px;
						height: 20px;
						line-height: 20px;
						text-align: center;
						transition-delay: 0s;
						transition-duration: 0.6s;
						transition-property: width;
						transition-timing-function: ease;
						width: 266.188px;
					}
				 </style>
				<!--<h4>您所选择的文件列表：</h4>-->
				<div id="ossfile"></div>
				<br>
				<div id="container" style="position: relative;">
				     
				<div id="html5_1cjsdlsj1ft417q1kbi9te15dt3_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 0px; left: 0px; width: 82px; height: 34px; overflow: hidden; z-index: 0;"><input id="html5_1cjsdlsj1ft417q1kbi9te15dt3" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></div>
				
				<p>&nbsp;</p>
				<span class="help-block">选择好图片后记得点击<span style="color:red;">开始上传</span></span>
				<span class="help-block">图片大小建议在300-500kb，最大不能超过1MB。否则会上传失败。</span>
				<p class="help-block" style="color:red;">禁止上传任何违法、违规内容，一经发现即删除，情节严重将封停账户。</p>
				
				<script type="text/javascript" src="style_files/qrcodeAdd/plupload.full.min.js"></script>
				<script type="text/javascript" src="style_files/qrcodeAdd/upload.js"></script>				  
				  </div>

              </div>
		
		<div class="form-group" id="qrcodeimgdiv" style="display: none;">
                <label class="col-sm-2 control-label">二维码图片
                  <span style="color:red">*</span></label>
                <div class="col-sm-9">
                  <div class="input-group">
                    <input type="text" class="form-control" name="qrcode" value="hello" onblur="changeImg(this);" id="qrcode">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">输入图片网址</button></span>
                  </div>
                  <div class="input-group " style="margin-top:.5em;">
                    <img  class="img-responsive img-thumbnail" width="150" id="qrcodeimgsrc">
                    <em class="close" style="position:absolute; top: 0px; right: -14px;" title="删除这张图片" onclick="deleteImage(this)">×</em></div>
                </div>
       </div>
	   
			  
	<div class="form-group">
                <label class="col-sm-2 control-label">投放次数(自动切换频率)
                  <span style="color:red">*</span></label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="show_cishu" name="show_cishu">
				  <span class="help-block">每当有多少人打开了这个二维码，自动切换到下一个</span>
				  </div>
              </div>
			  
			   <div class="form-group">
                <label class="col-sm-2 control-label">页面标题</label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="title" name="title">
				  <span class="help-block">将显示在微信标题栏上</span>
				</div>  
              </div>
			  
			   <div class="form-group">
                <label class="col-sm-2 control-label">二维码名称</label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="qrname" name="qrname">
				   <span class="help-block">用于区分管理二维码，可不填</span>
				  </div>
				  
              </div>
			 <input type="hidden" id="suoluetu" name="suoluetu">
              <input type="hidden" name="submit" value="submit">
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
				
                  <input type="submit" class="btn btn-default" name="submit" value="确认发布"></div>
              </div>
  
</form>
 </div>
 
 <div class="center-block footer" style="margin-top:10px;">
		<div class="text-center">
			<h5><a href="javascript:;" onclick="goto();">Copyright ©如故科技</a></h5>
		</div>
		<script>			
			function goto(){
				if(is_weixin()){
					window.location.href="/Public/html/rugukeji.html";
				}else{
					window.location.href="http://www.rugukeji.cn";
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



<script>
	function vaildForm() {
		var show_cishu = document.getElementById("show_cishu").value;
		var qrcode = document.getElementById("qrcode").value;
		if (show_cishu == undefined || show_cishu == "" || show_cishu == null) {
		  swal("投放次数必须填写", "", "error");
		  return false;
		}

		if (isNaN(show_cishu)) {
			swal("请填写正确的投放次数", "", "error");
		  return false;
		}
		
		if (show_cishu >10000) {
			swal("每张二维码投放次数不要大于1万次", "", "error");
		  return false;
		}
		
		//if (qrcode == undefined || qrcode == "" || qrcode == null) {
		//  swal("二维码图片网址必须填写", "", "error");
		//  return false;
		//}
		
		return true;
  }
</script></div></body></html>
