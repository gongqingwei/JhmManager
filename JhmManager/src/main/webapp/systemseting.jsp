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
		
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>微活码平台,助力微信精确快速吸粉-如故科技</title>
	<meta name="keywords" content="微分群平台,微信群活码系统,如故科技">
	<meta name="description" content="微分群平台，群活码二维码，活码二维码生成制作，满足各类微信开发的需求，是国内最强大的微信到付订单系统。">
	<link rel="shortcut icon" href="https://res.wx.qq.com/mpres/htmledition/images/favicon218877.ico">
	
	<link href="style_files/bootstrap.min.css" rel="stylesheet">		
	<script src="style_files/jquery.min.js"></script>
	<script src="style_files/bootstrap.min.js"></script>
	<link href="style_files/common.css" rel="stylesheet">
	
	<!--提示框js-->
	<link href="style_files/sweetalert.min.css" rel="stylesheet">
	<script src="style_files/sweetalert.min.js"></script>
	<!--编辑器-->
	<!-- <link rel="stylesheet" href="style_files/font-awesome/css/font-awesome.min.css"> -->
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  	<!-- <script type="text/javascript" src="style_files/wangEditor.min.js"></script>
	<link rel="stylesheet" type="text/css" href="style_files/wangEditor.min.css"> -->
	<script src="http://cdn.bootcss.com/wangeditor/2.1.20/js/wangEditor.js"></script>
    <link href="http://cdn.bootcss.com/wangeditor/2.1.20/css/wangEditor.css" rel="stylesheet">		
			
</head>
<body>

<div class="navbar navbar-inverse navbar-static-top" role="navigation" style="position:static;">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
				<li><a href="http://www.mpt7bp.cn/index.php/admin/Qrcode/qrcodeList"><i class="fa fa-cubes"></i>微活码平台</a></li>
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
							<a class="list-group-item " href="admin/Salesman/salesmanAdd"><i class="fa fa-user"></i> &nbsp;&nbsp;员工添加</a>
						</ul>
						
						
						<div class="panel-heading">
							<h4 class="panel-title">管理</h4>	
						</div>
						<ul class="list-group collapse in" id="frame-menu">
							<a class="list-group-item active" href="admin/System/systemSeting"><i class="fa fa-cogs"></i> &nbsp;&nbsp;系统设置</a>	
						</ul>						
					</div>
										
				</div>
				
				

<div class="col-xs-12 col-sm-9 col-lg-10">
																	<ol class="breadcrumb" style="padding:5px 0;">
							<li><a href="admin/system/systemseting"><i class="fa fa-cogs"></i> &nbsp; 微活码平台</a></li>
							<li class="active">系统设置</li>
						</ol>
										<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">系统设置</h3>
  </div>
  <div class="panel-body">
       <form class="form-horizontal" action="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html" method="POST" onsubmit="return vaildForm()">
			
			<!--<div class="form-group">
		<label for="inputEmail3" class="col-sm-2 control-label">页面标题</label>
		<div class="col-sm-9">
		  <input type="text" class="form-control" id="title" name="title" value="">
		</div>
	  </div>-->
	  
	  <div class="form-group">
		<label for="inputEmail3" class="col-sm-2 control-label">转发域名</label>
		<div class="col-sm-9">
		  <input type="text" class="form-control" id="luodidomain" name="zfdomain" value="www.mpt7bp.cn">
		  <div class="help-block">不可填写后台域名，用于被封后快速切换域名。多个域名，中间以 = 隔开。例如：www.baidu.com=www.baidu.com=www.baidu.com</div>
		</div>
	  </div>
	  
	  <div class="form-group">
		<label for="inputEmail3" class="col-sm-2 control-label">落地域名</label>
		<div class="col-sm-9">
		  <input type="text" class="form-control" id="luodidomain" name="luodidomain" value="www.jiajudaquan.cn">
		  <div class="help-block">不可填写后台域名，用于被封后快速切换域名。多个域名，中间以 = 隔开。例如：www.baidu.com=www.baidu.com=www.baidu.com</div>
		</div>
	  </div>
	  
	    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">本系统IP地址</label>
    <div class="col-sm-9">
	<div class="alert alert-success" style="font-size:20px;">47.104.235.141</div>
    </div>
  </div>
			
			<!--<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">投放模式</label>
					<div class="col-sm-9">
						 <select class="form-control" name="model" id="model" >	
							<option value="1" >模式1：按投放次数依次替换</option>	  
							<option value="2" >模式2：每次随机访问其中一张，无视投放次数</option>
						  </select>
					</div>
			  </div>-->
			  
			 <div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">缓存功能</label>
					<div class="col-sm-9">
						 <select class="form-control" name="cache" id="cache">	
							<option value="1">开启：同一用户多次扫码只显示同一二维码</option>	  
							<option value="2" selected="">关闭：每次都获取新的二维码</option>
						  </select>
					</div>
			  </div>
			  
			  		<!--<div class="form-group">
		<label for="inputEmail3" class="col-sm-2 control-label">点击返回键跳转的链接</label>
		<div class="col-sm-9">
		  <input type="text" class="form-control" id="backlink" name="backlink" value="">
		  <div class="help-block">如果为空则不进行设置</div>
		</div>
	  </div>
  			  
		<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">统计代码</label>
				<div class="col-sm-9">
					<textarea class="form-control" rows="3" name="countcode"></textarea>
				 <p class="help-block">cnzz 统计代码&nbsp;&nbsp;&nbsp; 
                  <a href="https://web.umeng.com/" target="_blank">cnzz</a></p>
				</div>
	</div>-->

			  
			  <div class="form-group" style="display:none;">
                <label class="col-sm-2 control-label">是否使用页面模板
                  <span style="color:red">*</span></label>
                <div class="col-sm-10"> 
                   <label class="checkbox-inline"><input type="radio" name="template" value="2" checked="">开启</label>
				  <div class="help-block">此功能为拓展功能，用于用户自行美化二维码页面，有一定技术难度。</div>
				</div>                          
              </div>

<div id="gjdiv" style="">		

		<!--<div class="form-group">
		<label for="inputEmail3" class="col-sm-2 control-label">二维码图片代码<span style="color:red">*</span></label>
		<div class="col-sm-10">
		  <textarea class="form-control" disabled="" rows="2" cols="100">
	<p style="text-align: center;"><img id="qrcode" style="max-width:100%;" src="https://img.alicdn.com/imgextra/i3/2145921404/TB2ymoumGmgSKJjSspiXXXyJFXa_!!2145921404.gif"></p>
		</textarea>
		<span class="help-block"></span>	
		</div>
	  </div>-->
	
	<div class="form-group">
		<label for="inputPassword3" class="col-sm-2 control-label">投放页面提示信息</label>
			<div class="col-sm-9">
				<textarea class="form-control" rows="20" id="context" name="context" style="display: none;">&lt;style&gt;
	.tip{position:fixed;top:0;left:0;background-color:rgba(0,0,0,.2);width:100%;height:40px;line-height:40px}.tip img{position:absolute;top:10px;width:20px;height:20px}.check-mark{left:10px}.close-mark{right:10px}.tip-text{display:inline-block;position:absolute;left:40px;line-height:40px;color:#09BB07;font-size:15px;font-family:PingFangSC-Regular,sans-serif}
	&lt;/style&gt;
&lt;div class="tip"&gt;
&lt;img class="check-mark" src="http://pic.zhi-bo.net/icon_check.png"&gt;
    &lt;div class="tip-text"&gt;此二维码安全，你可放心扫码&lt;/div&gt;
  
&lt;/div&gt;
&lt;p style="text-align: center; "&gt;&lt;b&gt;&lt;font face="黑体" size="6" color="#ff0000"&gt;长按二维码添加客服&lt;/font&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;</textarea><div class="wangEditor-container"><div class="wangEditor-menu-container clearfix"><div class="menu-group clearfix"><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-code"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-code"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">源码</div></div></div><div class="menu-group clearfix"><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-bold"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-bold"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">粗体</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-underline"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-underline"></i></a><div class="menu-tip" style="width: 47px; margin-left: -23.5px;">下划线</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-italic"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-italic"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">斜体</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-strikethrough"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-strikethrough"></i></a><div class="menu-tip" style="width: 47px; margin-left: -23.5px;">删除线</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-eraser"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-eraser"></i></a><div class="menu-tip" style="width: 61px; margin-left: -30.5px;">清空格式</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-pencil"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-pencil"></i></a><div class="menu-tip" style="width: 61px; margin-left: -30.5px;">文字颜色</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-brush"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-brush"></i></a><div class="menu-tip" style="width: 47px; margin-left: -23.5px;">背景色</div></div></div><div class="menu-group clearfix"><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-quotes-left"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-quotes-left"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">引用</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-font2"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-font2"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">字体</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-text-height"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-text-height"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">字号</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-header"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-header"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">标题</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-list-bullet"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-list-bullet"></i></a><div class="menu-tip" style="width: 61px; margin-left: -30.5px;">无序列表</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-list-numbered"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-list-numbered"></i></a><div class="menu-tip" style="width: 61px; margin-left: -30.5px;">有序列表</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-align-left"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-align-left"></i></a><div class="menu-tip" style="width: 47px; margin-left: -23.5px;">左对齐</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-align-center"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-align-center"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">居中</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-align-right"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-align-right"></i></a><div class="menu-tip" style="width: 47px; margin-left: -23.5px;">右对齐</div></div></div><div class="menu-group clearfix"><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-link"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-link"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">链接</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-unlink"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-unlink"></i></a><div class="menu-tip" style="width: 61px; margin-left: -30.5px;">取消链接</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-table"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-table"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">表格</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-happy"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-happy"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">表情</div></div></div><div class="menu-group clearfix"><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-picture"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-picture"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">图片</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-play"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-play"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">视频</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-location"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-location"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">位置</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-terminal"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-terminal"></i></a><div class="menu-tip" style="width: 61px; margin-left: -30.5px;">插入代码</div></div></div><div class="menu-group clearfix"><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-ccw"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-ccw"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">撤销</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-cw"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-cw"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">重复</div></div><div class="menu-item clearfix"><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1"><i class="wangeditor-menu-img-enlarge2"></i></a><a href="http://www.mpt7bp.cn/index.php/admin/system/systemseting.html#" tabindex="-1" class="selected" style="display: none;"><i class="wangeditor-menu-img-shrink2"></i></a><div class="menu-tip" style="width: 33px; margin-left: -16.5px;">全屏</div></div></div></div><div class="wangEditor-txt" contenteditable="true" style="height: 322px;"><style>
	.tip{position:fixed;top:0;left:0;background-color:rgba(0,0,0,.2);width:100%;height:40px;line-height:40px}.tip img{position:absolute;top:10px;width:20px;height:20px}.check-mark{left:10px}.close-mark{right:10px}.tip-text{display:inline-block;position:absolute;left:40px;line-height:40px;color:#09BB07;font-size:15px;font-family:PingFangSC-Regular,sans-serif}
	</style>
<div class="tip">
<img class="check-mark" src="style_files/icon_check.png">
    <div class="tip-text">此二维码安全，你可放心扫码</div>
  
</div>
<p style="text-align: center; "><b><font face="黑体" size="6" color="#ff0000">长按二维码添加客服</font></b></p><p><br></p></div></div>
			</div>
	 </div>


</div>	

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
	  <button type="submit" class="btn btn-default">提交</button>
    </div>
  </div>
  
  
  
</form>
  </div>
</div>

</div>

<script type="text/javascript">
	wangEditor.config.printLog = false;
    var editor = new wangEditor('context');

	editor.config.pasteFilter = false; 
    editor.create();
	
	
		function templatetype(type){
	if(type==2){
		$("#gjdiv").hide();
		
	}else{
		$("#gjdiv").show();
	}
}

</script></div></div><script type="text/javascript" src="style_files/highlight.js_9.2.0_highlight.min.js"></script>
</body>
</html>
