<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
</head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap-theme.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/MainWarp.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/home.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/index.css" />
<body>
	<!--TOP S-->
	<s:action name="navigation_headerAction" namespace="/navigation"
		executeResult="true"></s:action>
	<!-- 轮播图的显示 -->
	<s:action name="carousel_selectAction2" namespace="/carousel"
		executeResult="true" />
	<!-- 结束轮播图的显示 -->
	<s:action name="info_allNewsAction" namespace="/newsinfo"
		executeResult="true" />
	<!-- footer -->
	<s:action name="link_footerAction" namespace="/link"
		executeResult="true"></s:action>
</body>
</html>