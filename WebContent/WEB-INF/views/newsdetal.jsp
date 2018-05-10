<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath }/js/jquery1.8.2.js"></script>
<script src="${pageContext.request.contextPath }/js/header.js"></script>
<script src="${pageContext.request.contextPath }/js/lunbotu.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/xiangqing.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/pc.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/Header.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap-theme.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/Header.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/lunbotu.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/MainWarp.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/home.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/index.css" />
</head>
<body>
	<!--导航  -->
	<s:action name="navigation_headerAction" namespace="/navigation"
		executeResult="true"></s:action>
	<!-- 结束 -->
	<!-- 详情导航 -->
	<div class="wrapper center">
		<div class="row mb60">
			<!--/中间左侧菜单开始/-->
			<div class="col3 r30">
				<s:iterator value="listSelectAllDTO">
					<h1><s:property value="news_TwoNavigationInfo.TNI_Name" /></h1>
					<div id="subnav" class="f14">
						<ul>
							<s:iterator value="news_NewsInfo">
								<li><a href="${pageContext.request.contextPath}/newsinfo/info_exact2Action?news.NI_Id=<s:property value="NI_Id" />&&newsTwoNavigationInfo.TNI_Id=<s:property value="news_TwoNavigationInfo.TNI_Id" />"><s:property value="NI_Title" /></a></li>
							</s:iterator>
						</ul>
					</div>
				</s:iterator>
				<div class="module related">
					<h2>相关链接</h2>
					<ul>
						<li><a target="_blank" href="">学校活动</a></li>
						<li><a target="_blank" href="">图书馆</a></li>
						<li><a target="_blank" href="">教学周历</a></li>
						<li><a target="_blank" href="">校内电话黄页</a></li>
					</ul>
					<ul style="border: 0px;" class="mb20">
						<li><a target="_blank" href="">个人门户系统</a></li>
						<li><a target="_blank" href="">新闻网</a></li>
						<li><a target="_blank" href="">家园网</a></li>
					</ul>
				</div>
			</div>
			<!--/中间左侧菜单结束/-->
			<!--/中间右侧内容模版开始/-->
			<s:iterator value="newsinfoDTO">
				<h1>
					QQQQ:标题
					<s:property value="news_NewsInfo.NI_Title" escapeHtml="false" />
				</h1>

				<h1>
					QQQQ:正文
					<s:property value="news_Content.NC_Content" escapeHtml="false" />
				</h1>

			</s:iterator>
			<h1>25555</h1>
			<!--/中间右侧内容模版结束/-->

		</div>
	</div>
	<!-- 底部 -->
	<s:action name="link_footerAction" namespace="/link"
		executeResult="true"></s:action> 
	<!--  底部结束-->
</body>
</html>