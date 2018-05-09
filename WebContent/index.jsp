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
	<script src="${pageContext.request.contextPath }/js/jquery1.8.2.js"></script>
	<script src="${pageContext.request.contextPath }/js/header.js"></script>
	<script src="${pageContext.request.contextPath }/js/lunbotu.js"></script>
	<script>
		$(function() {
			$('#lunbotu').flexslider({
				animation : "slide",
				direction : "horizontal",
				easing : "swing"
			});
		});
	</script>

	<div style="width: 1240px; margin: auto;">
		<div class="jumbotron top-space">
			<div class="container">
				<h3 class="text-center thin">Reasons to use this template</h3>
				<div class="row"
					style="width: 1240px; margin-right: -15px; margin-left: -45px;">
					<div class="col-md-3 col-sm-6 highlight" style="margin-left: 0px;">
						<div class="h-caption">
							<h4>
								<i class="fa fa-cogs fa-5"></i>Bootstrap-powered
							</h4>
						</div>
						<div class="h-body text-center">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Atque aliquid adipisci aspernatur. Soluta quisquam dignissimos
								earum quasi voluptate. Amet, dignissimos, tenetur vitae dolor
								quam iusto assumenda hic reprehenderit?</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 highlight">
						<div class="h-caption">
							<h4>
								<i class="fa fa-flash fa-5"></i>Fat-free
							</h4>
						</div>
						<div class="h-body text-center">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Asperiores, commodi, sequi quis ad fugit omnis cumque a libero
								error nesciunt molestiae repellat quos perferendis numquam
								quibusdam rerum repellendus laboriosam reprehenderit!</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 highlight">
						<div class="h-caption">
							<h4>
								<i class="fa fa-heart fa-5"></i>Creative Commons
							</h4>
						</div>
						<div class="h-body text-center">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Voluptatem, vitae, perferendis, perspiciatis nobis voluptate
								quod illum soluta minima ipsam ratione quia numquam eveniet eum
								reprehenderit dolorem dicta nesciunt corporis?</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 highlight">
						<div class="h-caption">
							<h4>
								<i class="fa fa-smile-o fa-5"></i>Author's support
							</h4>
						</div>
						<div class="h-body text-center">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Alias, excepturi, maiores, dolorem quasi reprehenderit illo
								accusamus nulla minima repudiandae quas ducimus reiciendis odio
								sequi atque temporibus facere corporis eos expedita?</p>
						</div>
					</div>
				</div>
				<!-- /row  -->

			</div>
		</div>

		<div class="c-section-bd">
			<div class="home-service-wrap">
				<div class="home-service-list">
					<ul style="padding-left: 0px;">
						<li class="home-service-item"><a href=""> <span
								class="home-service-icon"> <img src="" alt="镜像服务">
									<img src="" alt="" class="active-img">
							</span> <span class="home-service-m-icon"> <img src="" alt="镜像服务">
							</span> <b class="home-service-tit"> 关于中粮 </b>
						</a></li>
						<li class="home-service-item"><a href=""> <span
								class="home-service-icon"> <img src="" alt="运维服务">
									<img src="" alt="运维服务" class="active-img">
							</span> <span class="home-service-m-icon"> <img src="" alt="">
							</span> <b class="home-service-tit"> 咨询动态 </b>
						</a></li>
						<li class="home-service-item"><a href=""> <span
								class="home-service-icon"> <img src="" alt=""> <img
									src="" alt="软件服务" class="active-img">
							</span> <span class="home-service-m-icon"> <img src="" alt="软件服务">
							</span> <b class="home-service-tit"> 业务概况 </b>
						</a></li>
						<li class="home-service-item"><a href=""> <span
								class="home-service-icon"> <img src="" alt="安全服务">
									<img src="" alt="安全服务" class="active-img">
							</span> <span class="home-service-m-icon"> <img src="" alt="">
							</span> <b class="home-service-tit"> 信息公开 </b>
						</a></li>
						<li class="home-service-item"><a href=""> <span
								class="home-service-icon"> <img src="" alt="建站服务">
									<img src="" alt="" class="active-img">
							</span> <span class="home-service-m-icon"> <img src="" alt="建站服务">
							</span> <b class="home-service-tit"> 企业责任 </b>
						</a></li>
						<li class="home-service-item"><a href=""> <span
								class="home-service-icon"> <img src="" alt="微信小程序">
									<img src="" alt="微信小程序" class="active-img">
							</span> <span class="home-service-m-icon"> <img src="" alt="">
							</span> <b class="home-service-tit"> 加入中粮 </b>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="footer"
		style="background-image: url(img/500604250_banner.jpg)">
		<div style="width: 1240px; margin: auto;">
			<div class="mainWrap">
				<div class="ulink clearfix">
					<div class="tlink">
						<div class="txtwrapper clearfix">
							<h2>常用链接</h2>
							<ul>
								<li><a href="" target="_blank">投资者专区</a></li>
								<li><a href="" target="_blank">加入中粮</a></li>
								<li><a href="" target="_blank">隐私政策</a></li>
								<li><a href="" target="_blank">网站地图</a></li>
								<li><a href="" target="_blank">实用信息</a></li>
								<li><a href="" target="_blank">联系我们</a></li>
							</ul>
						</div>
					</div>
					<ul class="plink">
						<li><a
							href="http://join-tsinghua.edu.cn/publish/bzw/index.html"
							target="_blank"><img src="img/2.jpg" alt=""></a></li>
						<li><a href="http://yz.tsinghua.edu.cn/" target="_blank"><img
								src="img/1.jpg" alt=""></a></li>
						<li><a href="http://www.artmuseum.tsinghua.edu.cn/"
							target="_blank"><img src="img/3.jpg" alt=""></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="copy">
			<div style="width: 1240px; margin: auto;">
				<div class="mainWrap">
					<script type="text/javascript">
						$(document).ready(
								function() {
									getResData();
									//获取数据
									function getResData() {
										jQuery.getJSON(
												"/application/visits/visits.jsp?sid=thu2018&r="
														+ Math.random(),
												function(data) {
													$("#today").empty();
													$("#today").append(
															data[0].today);
													$("#total").empty();
													$("#total").append(
															data[0].total);
													$("#arverage").empty();
													$("#arverage").append(
															data[0].arverage);
												});
									}
									;
								});
					</script>
					<!--class="copyrights" -->
					<div
						style="color: #fff; opacity: 0.6; border-top: 1px solid rgba(255, 255, 255, 0.4); padding-top: 20px; line-height: 0; font-size: 12px;">
						版权所有<a
							href="${pageContext.request.contextPath}/jurisdiction/jurisdiction_loginAction"
							style="color: #fff" target="_blank">©</a>2017 中粮集团有限公司<span>京ICP备05002557号</span>
					</div>
				</div>
			</div>
		</div>


		<!-- footer -->

		<s:action name="link_footerAction" namespace="/link"
			executeResult="true"></s:action>
	</div>
</body>

</html>