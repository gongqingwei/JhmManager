<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!-- saved from url=(0052)http://qr.coolgi.cn/index.php/admin/login/login.html -->
<html lang="zh-cn"><head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="微活码平台,微信群活码系统,如故科技">
	<meta name="description" content="微活码平台，群活码二维码，如故科技,活码二维码生成制作，满足各类微信开发的需求，是国内最强大的微信到付订单系统。">
	<title>微活码平台,助力微信精确快速吸粉-如故科技</title>	
	<link rel="shortcut icon" href="https://res.wx.qq.com/mpres/htmledition/images/favicon218877.ico">
	<link href="style_files/login/bootstrap.min.css" rel="stylesheet">		
	<link href="style_files/login/font-awesome.min.css" rel="stylesheet">
	<link href="style_files/login/common.css" rel="stylesheet">
	<script src="style_files/login/jquery.min.js"></script>
<style type="text/css">.BMap_mask{background:transparent url(about:blank);}.BMap_noscreen{display:none;}.BMap_button{cursor:pointer;}.BMap_zoomer{background-image:url(http://api.map.baidu.com/images/mapctrls1d3.gif);background-repeat:no-repeat;overflow:hidden;font-size:1px;position:absolute;width:7px;height:7px;}.BMap_stdMpCtrl div{position:absolute;}.BMap_stdMpPan{width:44px;height:44px;overflow:hidden;background:url(http://api.map.baidu.com/images/mapctrls2d0.png) no-repeat;}.BMap_ie6 .BMap_stdMpPan{background:none;}.BMap_ie6 .BMap_smcbg{left:0;width:44px;height:464px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://api.map.baidu.com/images/mapctrls2d0.png');}.BMap_ie6 .BMap_stdMpPanBg{z-index:-1;}.BMap_stdMpPan .BMap_button{height:15px;width:15px;}.BMap_panN,.BMap_panW,.BMap_panE,.BMap_panS{overflow:hidden;}.BMap_panN{left:14px;top:0;}.BMap_panW{left:1px;top:12px;}.BMap_panE{left:27px;top:12px;}.BMap_panS{left:14px;top:25px;}.BMap_stdMpZoom{top:45px;overflow:hidden;}.BMap_stdMpZoom .BMap_button{width:22px;height:21px;left:12px;overflow:hidden;background-image:url(http://api.map.baidu.com/images/mapctrls2d0.png);background-repeat:no-repeat;z-index:10;}.BMap_ie6 .BMap_stdMpZoom .BMap_button{background:none;}.BMap_stdMpZoomIn{background-position:0 -221px;}.BMap_stdMpZoomOut{background-position:0 -265px;}.BMap_ie6 .BMap_stdMpZoomIn div{left:0;top:-221px;}.BMap_ie6 .BMap_stdMpZoomOut div{left:0;top:-265px;}.BMap_stdMpType4 .BMap_stdMpZoom .BMap_button{left:0;overflow:hidden;background:-webkit-gradient(linear,50% 0,50% 100%,from(rgba(255,255,255,0.85)),to(rgba(217,217,217,0.85)));z-index:10;-webkit-border-radius:22px;width:34px;height:34px;border:1px solid rgba(255,255,255,0.5);-webkit-box-shadow:0 2px 3.6px #CCC;display:-webkit-box;-webkit-box-align:center;-webkit-box-pack:center;-webkit-box-sizing:border-box;}.BMap_stdMpType4 .BMap_smcbg{position:static;background:url(http://api.map.baidu.com/images/mapctrls2d0_mb.png) 0 0 no-repeat;-webkit-background-size:24px 32px;}.BMap_stdMpType4 .BMap_stdMpZoomIn{background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomIn .BMap_smcbg{width:24px;height:24px;background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomOut{background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomOut .BMap_smcbg{width:24px;height:6px;background-position:0 -25px;}.BMap_stdMpSlider{width:37px;top:18px;}.BMap_stdMpSliderBgTop{left:18px;width:10px;overflow:hidden;background:url(http://api.map.baidu.com/images/mapctrls2d0.png) no-repeat -23px -226px;}.BMap_stdMpSliderBgBot{left:19px;height:8px;width:10px;top:124px;overflow:hidden;background:url(http://api.map.baidu.com/images/mapctrls2d0.png) no-repeat -33px bottom;}.BMap_ie6 .BMap_stdMpSliderBgTop,.BMap_ie6 .BMap_stdMpSliderBgBot{background:none;}.BMap_ie6 .BMap_stdMpSliderBgTop div{left:-23px;top:-226px;}.BMap_ie6 .BMap_stdMpSliderBgBot div{left:-33px;bottom:0;}.BMap_stdMpSliderMask{height:100%;width:24px;left:10px;cursor:pointer;}.BMap_stdMpSliderBar{height:11px;width:19px;left:13px;top:80px;overflow:hidden;background:url(http://api.map.baidu.com/images/mapctrls2d0.png) no-repeat 0 -309px;}.BMap_stdMpSliderBar.h{background:url(http://api.map.baidu.com/images/mapctrls2d0.png) no-repeat 0 -320px;}.BMap_ie6 .BMap_stdMpSliderBar,.BMap_ie6 .BMap_stdMpSliderBar.h{background:none;}.BMap_ie6 .BMap_stdMpSliderBar div{top:-309px;}.BMap_ie6 .BMap_stdMpSliderBar.h div{top:-320px;}.BMap_zlSt,.BMap_zlCity,.BMap_zlProv,.BMap_zlCountry{position:absolute;left:34px;height:21px;width:28px;background-image:url(http://api.map.baidu.com/images/mapctrls2d0.png);background-repeat:no-repeat;font-size:0;cursor:pointer;}.BMap_ie6 .BMap_zlSt,.BMap_ie6 .BMap_zlCity,.BMap_ie6 .BMap_zlProv,.BMap_ie6 .BMap_zlCountry{background:none;overflow:hidden;}.BMap_zlHolder{display:none;position:absolute;top:0;}.BMap_zlHolder.hvr{display:block;}.BMap_zlSt{background-position:0 -380px;top:21px;}.BMap_zlCity{background-position:0 -401px;top:57px;}.BMap_zlProv{background-position:0 -422px;top:81px;}.BMap_zlCountry{background-position:0 -443px;top:105px;}.BMap_ie6 .BMap_zlSt div{top:-380px;}.BMap_ie6 .BMap_zlCity div{top:-401px;}.BMap_ie6 .BMap_zlProv div{top:-422px;}.BMap_ie6 .BMap_zlCountry div{top:-443px;}.BMap_stdMpType1 .BMap_stdMpSlider,.BMap_stdMpType2 .BMap_stdMpSlider,.BMap_stdMpType3 .BMap_stdMpSlider,.BMap_stdMpType4 .BMap_stdMpSlider,.BMap_stdMpType2 .BMap_stdMpZoom,.BMap_stdMpType3 .BMap_stdMpPan,.BMap_stdMpType4 .BMap_stdMpPan{display:none;}.BMap_stdMpType3 .BMap_stdMpZoom{top:0;}.BMap_stdMpType4 .BMap_stdMpZoom{top:0;}.BMap_cpyCtrl a{font-size:11px;color:#7979CC;}.BMap_scaleCtrl{height:23px;overflow:hidden;}.BMap_scaleCtrl div.BMap_scaleTxt{font-size:11px;font-family:Arial,sans-serif;}.BMap_scaleCtrl div{position:absolute;overflow:hidden;}.BMap_scaleHBar img,.BMap_scaleLBar img,.BMap_scaleRBar img{position:absolute;width:37px;height:442px;left:0;}.BMap_scaleHBar{width:100%;height:5px;font-size:0;bottom:0;}.BMap_scaleHBar img{top:-437px;width:100%;}.BMap_scaleLBar,.BMap_scaleRBar{width:3px;height:9px;bottom:0;font-size:0;z-index:1;}.BMap_scaleLBar img{top:-427px;left:0;}.BMap_scaleRBar img{top:-427px;left:-5px;}.BMap_scaleLBar{left:0;}.BMap_scaleRBar{right:0;}.BMap_scaleTxt{text-align:center;width:100%;cursor:default;line-height:18px;}.BMap_omCtrl{background-color:#fff;overflow:hidden;}.BMap_omOutFrame{position:absolute;width:100%;height:100%;left:0;top:0;}.BMap_omInnFrame{position:absolute;border:1px solid #999;background-color:#ccc;overflow:hidden;}.BMap_omMapContainer{position:absolute;overflow:hidden;width:100%;height:100%;left:0;top:0;}.BMap_omViewMv{border-width:1px;border-style:solid;border-left-color:#84b0df;border-top-color:#adcff4;border-right-color:#274b8b;border-bottom-color:#274b8b;position:absolute;z-index:600;}.BMap_omViewInnFrame{border:1px solid #3e6bb8;}.BMap_omViewMask{width:1000px;height:1000px;position:absolute;left:0;top:0;background-color:#68c;opacity:.2;filter:progid:DXImageTransform.Microsoft.Alpha(opacity=20);}.BMap_omBtn{height:13px;width:13px;position:absolute;cursor:pointer;overflow:hidden;background:url(http://api.map.baidu.com/images/mapctrls1d3.gif) no-repeat;z-index:1210;}.anchorBR .BMap_omOutFrame{border-top:1px solid #999;border-left:1px solid #999;}.quad4 .BMap_omBtn{background-position:-26px -27px;}.quad4 .BMap_omBtn.hover{background-position:0 -27px;}.quad4 .BMap_omBtn.BMap_omBtnClosed{background-position:-39px -27px;}.quad4 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-13px -27px;}.anchorTR .BMap_omOutFrame{border-bottom:1px solid #999;border-left:1px solid #999;}.quad1 .BMap_omBtn{background-position:-39px -41px;}.quad1 .BMap_omBtn.hover{background-position:-13px -41px;}.quad1 .BMap_omBtn.BMap_omBtnClosed{background-position:-26px -41px;}.quad1 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:0 -41px;}.anchorBL .BMap_omOutFrame{border-top:1px solid #999;border-right:1px solid #999;}.quad3 .BMap_omBtn{background-position:-27px -40px;}.quad3 .BMap_omBtn.hover{background-position:-1px -40px;}.quad3 .BMap_omBtn.BMap_omBtnClosed{background-position:-40px -40px;}.quad3 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-14px -40px;}.anchorTL .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;}.quad2 .BMap_omBtn{background-position:-40px -28px;}.quad2 .BMap_omBtn.hover{background-position:-14px -28px;}.quad2 .BMap_omBtn.BMap_omBtnClosed{background-position:-27px -28px;}.quad2 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-1px -28px;}.anchorR .BMap_omOutFrame{border-bottom:1px solid #999;border-left:1px solid #999;border-top:1px solid #999;}.anchorL .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;border-top:1px solid #999;}.anchorB .BMap_omOutFrame{border-top:1px solid #999;border-left:1px solid #999;border-right:1px solid #999;}.anchorT .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;border-left:1px solid #999;}.anchorNon .BMap_omOutFrame,.withOffset .BMap_omOutFrame{border:1px solid #999;}.BMap_zoomMask0,.BMap_zoomMask1{position:absolute;left:0;top:0;width:100%;height:100%;background:transparent url(http://api.map.baidu.com/images/blank.gif);z-index:1000;}.BMap_contextMenu{position:absolute;border-top:1px solid #adbfe4;border-left:1px solid #adbfe4;border-right:1px solid #8ba4d8;border-bottom:1px solid #8ba4d8;padding:0;margin:0;width:auto;visibility:hidden;background:#fff;z-index:10000000;}.BMap_cmShadow{position:absolute;background:#000;opacity:.3;filter:alpha(opacity=30);visibility:hidden;z-index:9000000;}div.BMap_cmDivider{border-bottom:1px solid #adbfe4;font-size:0;padding:1px;margin:0 6px;}div.BMap_cmFstItem{margin-top:2px;}div.BMap_cmLstItem{margin-bottom:2px;}.BMap_shadow img{border:0 none;margin:0;padding:0;position:absolute;height:370px;width:1144px;}.BMap_pop .BMap_top{border-top:1px solid #ababab;background-color:#fff;}.BMap_pop .BMap_center{border-left:1px solid #ababab;border-right:1px solid #ababab;background-color:#fff;}.BMap_pop .BMap_bottom{border-bottom:1px solid #ababab;background-color:#fff;}.BMap_shadow,.BMap_shadow img,.BMap_shadow div{-moz-user-select:none;-webkit-user-select:none;}.BMap_checkbox{background:url(http://api.map.baidu.com/images/mapctrls1d3.gif);vertical-align:middle;display:inline-block;width:11px;height:11px;margin-right:4px;background-position:-14px 90px;}.BMap_checkbox.checked{background-position:-2px 90px;}.BMap_pop .BMap_top img,.BMap_pop .BMap_center img,.BMap_pop .BMap_bottom img{display:none;}@media print{.BMap_noprint{display:none;}.BMap_noscreen{display:block;}.BMap_mask{background:none;}.BMap_pop .BMap_top img,.BMap_pop .BMap_center img,.BMap_pop .BMap_bottom img{display:block;}}.BMap_vectex{cursor:pointer;width:11px;height:11px;position:absolute;background-repeat:no-repeat;background-position:0 0;}.BMap_vectex_nodeT{background-image:url(http://api.map.baidu.com/images/nodeT.gif);}.BMap_vectex_node{background-image:url(http://api.map.baidu.com/images/node.gif);}</style></head>
<body>
<style>
	@media screen and (max-width:767px){.login .panel.panel-default{width:90%; min-width:300px;}}
	@media screen and (min-width:768px){.login .panel.panel-default{width:70%;}}
	@media screen and (min-width:1200px){.login .panel.panel-default{width:50%;}}
</style>

<div class="home">
	<div class="content clearfix">
		<div id="head">
			<div class="logo"></div>
		<div class="clearfix" style="margin-top:100px;">
			<div class="panel panel-default container">
				<div class="panel-body">
					<form action="login" method="post" id="form1" onsubmit="return formcheck();">
						<div class="form-group input-group">
							<span id="message" class="text-danger"></span>
						</div>
						<div class="form-group input-group">
							<div class="input-group-addon"><i class="fa fa-user"></i></div>
							<input name="userName" type="text" class="form-control input-lg" placeholder="请输入用户名登录">
						</div>
						<div class="form-group input-group">
							<div class="input-group-addon"><i class="fa fa-unlock-alt"></i></div>
							<input name="pwd" type="password" class="form-control input-lg" placeholder="请输入登录密码">
						</div>
											<div class="form-group">
							<div class="pull-right">						
								<input type="submit" id="submit" name="submit" value="登录" class="btn btn-primary btn-lg">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		</div>
		
		<div id="banner" class="carousel slide" data-ride="carousel" style="height: 633px;">
			<div class="carousel-indicators"><i class="fa fa-angle-double-down"></i></div>
			<div class="carousel-inner" role="listbox">
				<div class="item active" style="background-image: url(&quot;https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg&quot;); height: 633px;"></div>
			</div>
		</div>
		
		
		<div class="con container">
			<div class="panel panel-default">
				<h4>系统功能介绍</h4>
				<div class="panel-body">
					<div class="row system-info">
						<div class="col-xs-3">
							<div class="icon"><i class="fa fa-bullseye"></i></div>
							<h6>微信群活码活码解决方案</h6>
						</div>
						<div class="col-xs-3">
							<div class="icon"><i class="fa fa-cloud"></i></div>
							<h6>智能防封,快速切换域名,伪举报等...</h6>
						</div>
						<div class="col-xs-3">
							<div class="icon"><i class="fa fa-life-ring"></i></div>
							<h6>自动切换活码，随机访问活码</h6>
						</div>
						<div class="col-xs-3">
							<div class="icon"><i class="fa fa-sitemap"></i></div>
							<h6>活码，用户无限次添加</h6>
						</div>
						<div class="col-xs-3">
							<div class="icon"><i class="fa fa-plane"></i></div>
							<h6>扫描次数精细查询</h6>
						</div>
						<div class="col-xs-3">
							<div class="icon"><i class="fa fa-users"></i></div>
							<h6>一员工一后台</h6>
						</div>
						<div class="col-xs-3">
							<div class="icon"><i class="fa fa-legal"></i></div>
							<h6>页面可以自由DIY</h6>
						</div>
					
						<div class="col-xs-3">
							<div class="icon"><i class="fa fa-file-word-o"></i></div>
							<h6>操作方便教程齐全</h6>
						</div>
					</div>
				</div>
			</div>
		

			<div class="contact panel panel-default" style="display:none;">
				<h4>联系我们</h4>
				<div class="panel-body">
					<div class="map col-xs-5" style="height:150px;">
						<div class="img" style="width: 100%; height: 150px; border: 1px solid rgb(204, 204, 204); overflow: hidden; position: relative; z-index: 0; background-color: rgb(243, 241, 236); color: rgb(0, 0, 0); text-align: left;" id="baidumap"><div style="overflow: visible; position: absolute; z-index: 0; left: 0px; top: 0px; cursor: url(&quot;http://api.map.baidu.com/images/openhand.cur&quot;) 8 8, default;"><div class="BMap_mask" style="position: absolute; left: 0px; top: 0px; z-index: 9; overflow: hidden; user-select: none; width: 0px; height: 0px;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 800;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 700;"><span class="BMap_Marker BMap_noprint" unselectable="on" "="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; background: url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 19px; height: 25px; left: -10px; top: -25px; z-index: 0;" title=""></span></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 600;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 500;"><label class="BMapLabel" unselectable="on" style="position: absolute; display: none; cursor: inherit; background-color: rgb(190, 190, 190); border: 1px solid rgb(190, 190, 190); padding: 1px; white-space: nowrap; font: 12px arial, sans-serif; z-index: -20000; color: rgb(190, 190, 190);">shadow</label></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 400;"><span class="BMap_Marker" unselectable="on" style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: -10px; top: -25px; z-index: 0;"><div style="position: absolute; margin: 0px; padding: 0px; width: 19px; height: 25px; overflow: hidden; left: 0px; top: -8px;"><img src="style_files/login/marker_red_sprite.png" style="border:none;left:0px; top:0px; position:absolute;"></div></span></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 300;"><span unselectable="on" style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: -6px; top: -11px;"><div style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden; left: 6px; top: -6px;"><img src="style_files/login/marker_red_sprite.png" style="border:none;left:-19px; top:-13px; position:absolute;"></div></span></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 201;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 1;"><div style="position: absolute; overflow: visible; z-index: -100; left: 0px; top: 0px;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 2;"></div></div><div class=" anchorBL" style="height: 32px; position: absolute; z-index: 10; text-size-adjust: none; bottom: 0px; right: auto; top: auto; left: 1px; display: none;"><a title="到百度地图查看此区域" target="_blank" href="http://map.baidu.com/?sr=1" style="outline: none;"><img style="border:none;width:77px;height:32px" src="style_files/login/copyright_logo.png"></a></div><div id="zoomer" style="position:absolute;z-index:0;top:0px;left:0px;overflow:hidden;visibility:hidden;cursor:url(http://api.map.baidu.com/images/openhand.cur) 8 8,default"><div class="BMap_zoomer" style="top:0;left:0;"></div><div class="BMap_zoomer" style="top:0;right:0;"></div><div class="BMap_zoomer" style="bottom:0;left:0;"></div><div class="BMap_zoomer" style="bottom:0;right:0;"></div></div><div unselectable="on" class=" BMap_stdMpCtrl BMap_stdMpType0 BMap_noprint anchorTL" style="width: 62px; height: 192px; bottom: auto; right: auto; top: 10px; left: 10px; position: absolute; z-index: 1100; text-size-adjust: none;"><div class="BMap_stdMpPan"><div class="BMap_button BMap_panN" title="向上平移"></div><div class="BMap_button BMap_panW" title="向左平移"></div><div class="BMap_button BMap_panE" title="向右平移"></div><div class="BMap_button BMap_panS" title="向下平移"></div><div class="BMap_stdMpPanBg BMap_smcbg"></div></div><div class="BMap_stdMpZoom" style="height: 147px; width: 62px;"><div class="BMap_button BMap_stdMpZoomIn" title="放大一级"><div class="BMap_smcbg"></div></div><div class="BMap_button BMap_stdMpZoomOut" title="缩小一级" style="top: 126px;"><div class="BMap_smcbg"></div></div><div class="BMap_stdMpSlider" style="height: 108px;"><div class="BMap_stdMpSliderBgTop" style="height: 108px;"><div class="BMap_smcbg"></div></div><div class="BMap_stdMpSliderBgBot" style="top: 25px; height: 87px;"></div><div class="BMap_stdMpSliderMask" title="放置到此级别"></div><div class="BMap_stdMpSliderBar" title="拖动缩放" style="cursor: url(&quot;http://api.map.baidu.com/images/openhand.cur&quot;) 8 8, default; top: 25px;"><div class="BMap_smcbg"></div></div></div><div class="BMap_zlHolder"><div class="BMap_zlSt"><div class="BMap_smcbg"></div></div><div class="BMap_zlCity"><div class="BMap_smcbg"></div></div><div class="BMap_zlProv"><div class="BMap_smcbg"></div></div><div class="BMap_zlCountry"><div class="BMap_smcbg"></div></div></div></div></div><div unselectable="on" class=" BMap_omCtrl BMap_ieundefined BMap_noprint anchorBR quad4" style="width: 13px; height: 13px; bottom: 0px; right: 0px; top: auto; left: auto; position: absolute; z-index: 10; text-size-adjust: none;"><div class="BMap_omOutFrame" style="width: 149px; height: 149px;"><div class="BMap_omInnFrame" style="bottom: auto; right: auto; top: 5px; left: 5px; width: 142px; height: 142px;"><div class="BMap_omMapContainer"></div><div class="BMap_omViewMv" style="cursor: url(&quot;http://api.map.baidu.com/images/openhand.cur&quot;) 8 8, default;"><div class="BMap_omViewInnFrame"><div></div></div></div></div></div><div class="BMap_omBtn BMap_omBtnClosed" style="bottom: 0px; right: 0px; top: auto; left: auto;"></div></div><div unselectable="on" class=" BMap_cpyCtrl BMap_noprint anchorBL" style="cursor: default; white-space: nowrap; color: black; background: none; font: 11px/15px arial, sans-serif; bottom: 2px; right: auto; top: auto; left: 4px; position: absolute; z-index: 10; text-size-adjust: none;"><span _cid="1"><span style="background: rgba(255, 255, 255, 0.701961);padding: 0px 1px;line-height: 16px;display: inline;height: 16px;">©&nbsp;2018 Baidu - GS(2016)2089号 - 甲测资字1100930 - 京ICP证030173号 - Data © 长地万方</span></span></div></div>
					</div>
					<div class="info col-xs-7">
						<p>联系人：</p>
						<p>Q&nbsp;&nbsp;&nbsp;&nbsp; Q：</p>
						<p>手&nbsp;&nbsp;&nbsp;机：</p>
						<p>公&nbsp;&nbsp;&nbsp;司：</p>
						<p>地&nbsp;&nbsp;&nbsp;址：</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	   <div class="center-block footer" role="footer">
			<div class="text-center">
			<h4><a onclick="goto();" style="cursor: pointer;">如故科技</a></h4><h4>
			</h4><h5>Copyright© 2012-<script>
				var year="";
				mydate=new Date();
				myyear=mydate.getYear();
				year=(myyear > 200) ? myyear : 1900 + myyear;
				document.write(year); 
				</script>2018 RuGuKeJi All Rights Reserved. </h5>		
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
</div>
<script type="text/javascript" src="style_files/login/api"></script><script type="text/javascript" src="style_files/login/getscript"></script>
<script>

	var bmap = {
		'option' : {
			'lock' : false,
			'container' : 'baidumap',
			'infoWindow' : {'width' : 250, 'height' : 100, 'title' : ''},
			'point' : {'lng' : '', 'lat' : ''}
		},
		'init' : function(option) {
			var $this = this;
			$this.option = $.extend({},$this.option,option);
			$this.option.defaultPoint = new BMap.Point($this.option.point.lng, $this.option.point.lat);
			$this.bgeo = new BMap.Geocoder();
			$this.bmap = new BMap.Map($this.option.container);
			$this.bmap.centerAndZoom($this.option.defaultPoint, 15);
			$this.bmap.enableScrollWheelZoom();
			$this.bmap.enableDragging();
			$this.bmap.enableContinuousZoom();
			$this.bmap.addControl(new BMap.NavigationControl());
			$this.bmap.addControl(new BMap.OverviewMapControl());
			//添加标注
			$this.marker = new BMap.Marker($this.option.defaultPoint);
			$this.marker.enableDragging();
			$this.bmap.addOverlay($this.marker);
			$this.marker.setAnimation(BMAP_ANIMATION_BOUNCE);
		},
		'setMarkerCenter' : function() {
			var $this = this;
			var center = $this.bmap.getCenter();
			$this.marker.setPosition(new BMap.Point(center.lng, center.lat));
			$this.showPointValue();
			$this.showAddress();
		}
	};
	$(function(){
		var option = {};
		option = {'point' : {'lng' : '', 'lat' : ''}}
		bmap.init(option);

		//banner
		$('#banner, #banner .item').height($(window).height());
	});
</script>



<script>
var h = document.documentElement.clientHeight;
$(".login").css('min-height',h);
</script>

<div style="display:none;"><script src="style_files/login/z_stat.php" language="JavaScript"></script><script src="style_files/login/core.php" charset="utf-8" type="text/javascript"></script><a href="http://www.cnzz.com/stat/website.php?web_id=1266217694" target="_blank" title="站长统计">站长统计</a></div>



</body></html>
