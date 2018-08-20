<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
							<a class="list-group-item active" href="admin/Qrcode/qrcodeList"><i class="fa fa-star"></i> &nbsp;&nbsp;员工投放查看</a>
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
							<a class="list-group-item " href="admin/System/systemSeting"><i class="fa fa-cogs"></i> &nbsp;&nbsp;系统设置</a>	
						</ul>						
					</div>
										
				</div>
				
				
<div class="col-xs-12 col-sm-9 col-lg-10">
			<ol class="breadcrumb" style="padding:5px 0;">
				<li><a href="http://www.mpt7bp.cn/index.php/admin/Qrcode/qrcodeList#"><i class="fa fa-cogs"></i> &nbsp; 微活码平台</a></li>
				<li class="active">活码查看</li>
			</ol>

<div class="panel panel-default">
  <!-- Table -->
       <table class="table table-hover">
        <thead class="navbar-inner">
          <tr>
            <th width="50">编号</th>
            <th>缩略图</th>
			<th>二维码名称</th>
			<th>页面标题</th>
            <th>总投放次数</th>
            <th>已投放次数</th>
			<th>用户编号</th>
            <th width="180">创建时间</th>
            <th style="text-align:center;" width="180">操作</th>
		</tr>
		<c:forEach var="toufang" items="${toufangs}">
			<tr>
	            <td>${toufang.num}</td>
	            <td><img src="${toufang.suoluetu}" width="50px" height="50px"></td>
				<td>${toufang.erweicodename }</td>
				<td>${toufang.pagetitle }</td>
	            <td>${toufang.alltoufangnum }</td>
	            <td>${toufang.alreadytoufangnum }</td>
				<td>${toufang.usernum }</td>
	            <td><fmt:formatDate value='${toufang.createdate}' pattern='yyyy-MM-dd HH:mm:ss'/></td>
	            <td align="center" style="vertical-align:middle">
				<button type="button" class="btn btn-primary btn-sm" onclick="changeCiShu(${toufang.num},${toufang.alreadytoufangnum});">更改投放次数</button>
                <button type="button" class="btn btn-danger btn-sm" onclick="deleteQrcode(${toufang.num});">删除</button>
				</td>
			</tr>
		</c:forEach>
        </thead>
        
      </table>
</div>




</div>


<script>
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
          url: "admin/Qrcode/qrcodeDelete?id=" + qrcodeid,
          success: function(result) {
        	  result = eval("("+result+")");
            if (result.result == "0") {
              $("#tr" + qrcodeid).remove();
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
			  url: "admin/Qrcode/changeCiShu?qrcodeid=" + qrcodeid+"&cishu="+inputValue,
			  success: function(result) {
				  result=eval("("+result+")");
				if (result.result == "0") {
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
</script></div></div></body></html>
