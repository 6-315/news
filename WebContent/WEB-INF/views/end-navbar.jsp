<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>

<html>



<head>

<meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Amaze UI Admin index Examples</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="renderer" content="webkit">

<meta http-equiv="Cache-Control" content="no-siteapp" />

<meta name="apple-mobile-web-app-title" content="Amaze UI" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/amazeui.min.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/admin.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/app.css">



</head>

<body data-type="index">





	<!--左边导航栏-->



	<!-- <div class="tpl-page-container tpl-page-header-fixed"> -->



	<div class="tpl-left-nav tpl-left-nav-hover">

		<div class="tpl-left-nav-list">

			<ul class="tpl-left-nav-menu">

				<li class="tpl-left-nav-item"><a href="#"
					class="nav-link active"> <i class="am-icon-home"></i> <span>首页</span>

				</a></li>
				
			<li class="tpl-left-nav-item"><a
					href="${pageContext.request.contextPath}/newsinfo/info_SelectNewsAction"
					class="nav-link"> <i class="am-icon-home"></i> <span>新闻信息管理</span>
				</a></li> 
				<li class="tpl-left-nav-item"><a
					href="${pageContext.request.contextPath}/carousel/carousel_selectAction?message="
					class="nav-link"> <i class="am-icon-home"></i> <span>管理轮播图</span>
				</a></li>

				<li class="tpl-left-nav-item"><a
					href="${pageContext.request.contextPath}/link/link_listLinkInfoByPageAction"
					class="nav-link"> <i class="am-icon-home"></i> <span>管理链接</span>
				</a></li>


				<li class="tpl-left-nav-item"><a href="javascript:;"
					class="nav-link tpl-left-nav-link-list"> <i
						class="am-icon-table"></i> <span>新闻管理</span> <i
						class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>

				</a>

					<ul class="tpl-left-nav-sub-menu">

						<li><a href="${pageContext.request.contextPath}/newsinfo/newsinfo_selectAction"> <i class="am-icon-angle-right"></i> <span>添加新闻</span>

								<i
								class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>

						</a> <a href="${pageContext.request.contextPath}/newsinfo/newsinfo_manageAction"> <i class="am-icon-angle-right"></i> <span>新闻管理</span></a></li>

					</ul></li>

			</ul>

		</div>

	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery1.8.2.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/amazeui.min.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/iscroll.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/app.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/toastr.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/bootstrap.js"></script>

</body>



</html>