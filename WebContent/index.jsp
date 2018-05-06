<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
</head>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/bootstrap-theme.css" />
<link rel="stylesheet" type="text/css" href="css/Header.css" />
<link rel="stylesheet" href="css/lunbotu.css" />
<link rel="stylesheet" href="css/MainWarp.css" />
<link rel="stylesheet" href="css/home.css" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<body>
	<!--TOP S-->
	<div class="top">
		<div class="top-inner layout">
			<div id="J_nav" class="main-nav-wrap">
				<ul class="main-nav">
					<li><a href=""
						onclick="pgvSendClick({hottag:'v2.nav.info.link'})">首页<span>HOME
								PAGE</span></a></li>
					<li><a class="" href=""
						onclick="pgvSendClick({hottag:'v2.nav.info.link'})">关于中粮<span>ABOUT
								COFCO</span></a></li>
					<li><a class="" href=""
						onclick="pgvSendClick({hottag:'v2.nav.info.link'})">咨询动态<span>
								NEWS</span></a></li>
					<li><a href=""
						onclick="pgvSendClick({hottag:'v2.nav.match.link'})"
						target="_blank">业务概览<span>BRAND  PRODUCT</span></a></li>
					<li><a class="" href="" onclick="">企业责任<span>RESPONSIBILITY</span></a>
					</li>
					<li><a class="" href="" onclick="">投资者专区<span>INVESTOR
								ZONE</span></a></li>
				</ul>
				<!--下拉子导航 S-->
				<div id="J_subNav" class="sub-nav">
					<ul class="sub-nav-inner">
						<li class="sub-nav-item"><a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.info.what'})" href=""
							target="_blank">管理团队</a> <a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.info.heros'})" href=""
							target="_blank">组织架构 </a> <a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.info.guides'})" href=""
							target="_blank">历史荣誉</a> <a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.info.rgm'})" href=""
							target="_blank">品牌专区</a></li>
						<li class="sub-nav-item"><a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.store.pay'})"
							target="_blank" href=""><i class="publicspr ico-h"></i>最新资讯</a> <a
							class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.store.daoju'})"
							target="_blank" href="">业务动态</a> <a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.store.mall'})" href=""
							target="_blank">媒体报道 </a> <a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.store.mvm'})" href=""
							target="_blank">国资动态</a> <a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.store.cmb'})" href=""
							target="_blank">资料下载</a></li>
						<li class="sub-nav-item"><a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.user.online'})"
							href="//kf.qq.com/product/lol.html?pc_scene=web" target="_blank">中粮国际</a>
							<a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.user.video'})"
							href="/v/" target="_blank">中粮贸易</a> <a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.user.bbs'})"
							target="_blank" href="//bbs.lol.qq.com/forum.php">中粮梁谷</a> <a
							class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.user.weixin'})"
							href="/act/a20160425wxlol/" target="_blank">中粮生化</a> <a
							class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.user.weibo'})"
							href="//weibo.com/lol" target="_blank">更&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;多</a>
							<a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.user.tr'})"
							href="http://tr.lol.qq.com/" target="_blank">玩家创作馆 </a></li>
						<li class="sub-nav-item"><a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.match.lpl'})"
							target="_blank" href="//lpl.qq.com/es/lpl/">责任管理 </a> <a
							class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.match.demacia'})"
							target="_blank" href="//lpl.qq.com/es/2017demacia/">公司治理 </a> <a
							class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.match.s7'})"
							target="_blank" href="//lpl.qq.com/es/2017worlds/">服务国家粮食安全</a> <a
							class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.match.allstar'})"
							target="_blank" href="">践行绿色环保</a> <a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.match.ldl'})"
							target="_blank" href=" ">保障食品安全</a></li>
						<li class="sub-nav-item"><a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.system.icon'})"
							target="_blank"
							href="/act/a20170608transferzone/index.html?ADTAG=lolweb.v2">
								中国粮油 </a> <a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.system.fenghao'})"
							target="_blank" href="/act/a20151118fh/">中国食品 </a> <a
							class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.system.exp'})"
							target="_blank" href="/act/a20110907exp/">蒙牛乳业</a> <a
							class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.system.replay'})"
							target="_blank" href="/act/a20170728replay/">中粮糖业</a> <a
							class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.system.server'})"
							target="_blank" href="/act/a20150326dqpd/">中粮包装</a> <a
							class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.system.justice'})"
							target="_blank" href="/act/a20171108ambient/index.html">福田实业
						</a> <a class="sub-nav-lnk"
							onclick="pgvSendClick({hottag:'v2.subnav.system.cjf'})"
							target="_blank"
							href="/act/a20170704super/index.shtml?e_code=336975">其&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;他
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="lunbotu" class="flexslider">
		<div class="flex-viewport"
			style="overflow: hidden; position: relative;">
			<ul class="slides"
				style="width: 1400%; transition-duration: 0.4s; transform: translate3d(-2880px, 0px, 0px);">
				<li class="clone" style="width: 100%; float: left; display: block;">
					<div class="img">
						<img src="img/02.jpg" width="100%" alt="" height="600">
					</div>
				</li>
				<li class="" style="width: 100%; float: left; display: block;">
					<div class="img">
						<img src="img/01.jpg" width="100%" alt="" height="600">
					</div>
				</li>
			</ul>
		</div>
		<ul class="flex-direction-nav" style="margin-bottom: 0px;">
			<li><a class="flex-prev" href="#">Previous</a></li>
			<li><a class="flex-next" href="#">Next</a></li>
		</ul>
	</div>
	<div class="MainWrap">
		<div class="events">
			<h2>
				<b></b>头条新闻<b></b> <a class="newsmore" href="">更多>></a>
			</h2>
			<ul class="clearfix">
				<li><a href="" target="_blank"> <span class="time">
							<span>19</span>2018.04
					</span> <span class="txtwrapper"> <b>陈旭访问法国 深化中法教育合作</b> <b>4月14日至16日，清华大学党委书记、校务委员会主任陈旭前往法国，分别访问法国科学院、巴黎综合理工大学、巴黎科研人文大学等高校及科研院所，签署校际合作...
						</b>
					</span>
				</a></li>

				<li><a href="" target="_blank"> <span class="time">
							<span>19</span>2018.04
					</span> <span class="txtwrapper"> <b>邱勇会见挪威奥斯陆大学校长斯韦恩·斯托伦
								授予斯滕塞斯教授名誉教授学衔</b> <b>4月17日下午，校长邱勇在工字厅会见了奥斯陆大学校长斯韦恩·斯托伦一行，就如何深化两校的合作交流进行了探讨，并授予随行来访的奥斯陆大学尼尔斯·克里斯蒂...
						</b>
					</span>
				</a></li>
				<li><a href="" target="_blank"> <span class="time">
							<span>19</span>2018.04
					</span> <span class="txtwrapper"> <b>邱勇会见挪威奥斯陆大学校长斯韦恩·斯托伦
								授予斯滕塞斯教授名誉教授学衔</b> <b>4月17日下午，校长邱勇在工字厅会见了奥斯陆大学校长斯韦恩·斯托伦一行，就如何深化两校的合作交流进行了探讨，并授予随行来访的奥斯陆大学尼尔斯·克里斯蒂...
						</b>
					</span>
				</a></li>
			</ul>
		</div>
		<hr class="solid_1" />
		<!-- 咨询动态 -->
		<div class="info_center">
			<div class="information_left">
				<h2>
					<b></b>咨询动态<b></b>
				</h2>
				<div class="from_1">
					<ul class="clearfix" style="margin-left: 20px;">
						<li>
							<div class="intimate" style="float: left; width: 100%;">
								<a href="" target="_blank"> <span class="text">啦啦啦德玛西亚，啦啦啦蛮王开大，啦啦啦剑圣偷塔，啦啦啦。。。。</span>
									<span class="time"> 2018.04.19 </span>
								</a>
							</div>
						</li>
						<li>
							<div class="intimate" style="float: left; width: 100%;">
								<a href="" target="_blank"> <span class="text">啦啦啦德玛西亚，啦啦啦蛮王开大，啦啦啦剑圣偷塔，啦啦啦。。。。</span>
									<span class="time"> 2018.04.19 </span>
								</a>
							</div>
						</li>
						<li>
							<div class="intimate" style="float: left; width: 100%;">
								<a href="" target="_blank"> <span class="text">啦啦啦德玛西亚，啦啦啦蛮王开大，啦啦啦剑圣偷塔，啦啦啦。。。。</span>
									<span class="time"> 2018.04.19 </span>
								</a>
							</div>
						</li>
						<li>
							<div class="intimate" style="float: left; width: 100%;">
								<a href="" target="_blank"> <span class="text">啦啦啦德玛西亚，啦啦啦蛮王开大，啦啦啦剑圣偷塔，啦啦啦。。。。</span>
									<span class="time"> 2018.04.19 </span>
								</a>
							</div>
						</li>
						<li>
							<div class="intimate" style="float: left; width: 100%;">
								<a href="" target="_blank"> <span class="text">啦啦啦德玛西亚，啦啦啦蛮王开大，啦啦啦剑圣偷塔，啦啦啦啦啦啦。。。。</span>
									<span class="time"> 2018.04.19 </span>
								</a>
							</div>
						</li>
					</ul>
					<div class="solid_2">
						<hr />
					</div>
					<div class="img_1">
						<img src="img/08.jpg" />

					</div>
				</div>

				<!--<div class="solid_2">
				</div>-->
			</div>
			<div class="information_right">
				<div class="right_top">
					<h2>
						<b></b>业务动态<b></b>
					</h2>
					<div class="from_2">
						<ul class="clearfix" style="margin-left: 20px;">
							<li>
								<div class="intimate" style="float: left; width: 100%;">
									<a href="" target="_blank"> <span class="text">啦啦啦德玛西亚，啦啦啦蛮王开大，啦啦啦剑圣偷塔，啦啦啦。。。。</span>
										<span class="time"> 2018.04.19 </span>
									</a>
								</div>
							</li>
							<li>
								<div class="intimate" style="float: left; width: 100%;">
									<a href="" target="_blank"> <span class="text">啦啦啦德玛西亚，啦啦啦蛮王开大，啦啦啦剑圣偷塔，啦啦啦。。。。</span>
										<span class="time"> 2018.04.19 </span>
									</a>
								</div>
							</li>
							<li>
								<div class="intimate" style="float: left; width: 100%;">
									<a href="" target="_blank"> <span class="text">啦啦啦德玛西亚，啦啦啦蛮王开大，啦啦啦剑圣偷塔，啦啦啦。。。。</span>
										<span class="time"> 2018.04.19 </span>
									</a>
								</div>
							</li>
							<li>
								<div class="intimate" style="float: left; width: 100%;">
									<a href="" target="_blank"> <span class="text">啦啦啦德玛西亚，啦啦啦蛮王开大，啦啦啦剑圣偷塔，啦啦啦。。。。</span>
										<span class="time"> 2018.04.19 </span>
									</a>
								</div>
							</li>
							<li>
								<div class="intimate" style="float: left; width: 100%;">
									<a href="" target="_blank"> <span class="text">啦啦啦德玛西亚，啦啦啦蛮王开大，啦啦啦剑圣偷塔，啦啦啦。。。。</span>
										<span class="time"> 2018.04.19 </span>
									</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="right_bottom">
					<h2>
						<b></b>业务动态<b></b>
					</h2>
					<div class="from_3">
						<ul class="clearfix" style="margin-left: 20px;">
							<li>
								<div class="intimate" style="float: left; width: 100%;">
									<a href="" target="_blank"> <span class="text">啦啦啦德玛西亚，啦啦啦蛮王开大，啦啦啦剑圣偷塔，啦啦啦。。。。</span>
										<span class="time"> 2018.04.19 </span>
									</a>
								</div>
							</li>
							<li>
								<div class="intimate" style="float: left; width: 100%;">
									<a href="" target="_blank"> <span class="text">啦啦啦德玛西亚，啦啦啦蛮王开大，啦啦啦剑圣偷塔，啦啦啦。。。。</span>
										<span class="time"> 2018.04.19 </span>
									</a>
								</div>
							</li>
							<li>
								<div class="intimate" style="float: left; width: 100%;">
									<a href="" target="_blank"> <span class="text">啦啦啦德玛西亚，啦啦啦蛮王开大，啦啦啦剑圣偷塔，啦啦啦。。。。</span>
										<span class="time"> 2018.04.19 </span>
									</a>
								</div>
							</li>
							<li>
								<div class="intimate" style="float: left; width: 100%;">
									<a href="" target="_blank"> <span class="text">啦啦啦德玛西亚，啦啦啦蛮王开大，啦啦啦剑圣偷塔，啦啦啦。。。。</span>
										<span class="time"> 2018.04.19 </span>
									</a>
								</div>
							</li>
							<li>
								<div class="intimate" style="float: left; width: 100%;">
									<a href="" target="_blank"> <span class="text">啦啦啦德玛西亚，啦啦啦蛮王开大，啦啦啦剑圣偷塔，啦啦啦。。。。</span>
										<span class="time"> 2018.04.19 </span>
									</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="js/jquery1.8.2.js"></script>
	<script src="js/header.js"></script>
	<script src="js/lunbotu.js"></script>
	<script>
		$(function() {
			$('#lunbotu').flexslider({
				animation : "slide",
				direction : "horizontal",
				easing : "swing"
			});
		});
	</script>
	<!--<iframe name="lunbo" width="100%" height="500%"  src="lunbo.html"></iframe>-->

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
								class="home-service-icon"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp.svg"
									alt="微信小程序"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp-actived.svg"
									alt="微信小程序" class="active-img">
							</span> <span class="home-service-m-icon"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp-m.svg"
									alt="">
							</span> <b class="home-service-tit"> 加入中粮 </b>
						</a></li>
						<li class="home-service-item"><a href=""> <span
								class="home-service-icon"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp.svg"
									alt="微信小程序"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp-actived.svg"
									alt="微信小程序" class="active-img">
							</span> <span class="home-service-m-icon"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp-m.svg"
									alt="">
							</span> <b class="home-service-tit"> 加入中粮 </b>
						</a></li>
						<li class="home-service-item"><a href=""> <span
								class="home-service-icon"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp.svg"
									alt="微信小程序"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp-actived.svg"
									alt="微信小程序" class="active-img">
							</span> <span class="home-service-m-icon"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp-m.svg"
									alt="">
							</span> <b class="home-service-tit"> 加入中粮 </b>
						</a></li>
						<li class="home-service-item"><a href=""> <span
								class="home-service-icon"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp.svg"
									alt="微信小程序"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp-actived.svg"
									alt="微信小程序" class="active-img">
							</span> <span class="home-service-m-icon"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp-m.svg"
									alt="">
							</span> <b class="home-service-tit"> 加入中粮 </b>
						</a></li>
						<li class="home-service-item"><a href=""> <span
								class="home-service-icon"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp.svg"
									alt="微信小程序"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp-actived.svg"
									alt="微信小程序" class="active-img">
							</span> <span class="home-service-m-icon"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp-m.svg"
									alt="">
							</span> <b class="home-service-tit"> 加入中粮 </b>
						</a></li>
						<li class="home-service-item"><a href=""> <span
								class="home-service-icon"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp.svg"
									alt="微信小程序"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp-actived.svg"
									alt="微信小程序" class="active-img">
							</span> <span class="home-service-m-icon"> <img
									src="//imgcache.qq.com/open_proj/proj_qcloud_v2/gateway/portal/css/img/home2017/market/microapp-m.svg"
									alt="">
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
								<li><a
									href="http://www.tsinghua.edu.cn/publish/newthu/newthu_cnt/intothu/intothu-3-2.html"
									target="_blank">投资者专区</a></li>
								<li><a
									href="http://www.tsinghua.edu.cn/publish/newthu/newthu_cnt/intothu/intothu-2-1.html"
									target="_blank">加入中粮</a></li>
								<li><a href="http://www.tuef.tsinghua.edu.cn/"
									target="_blank">隐私政策</a></li>
								<li><a
									href="http://www.tsinghua.edu.cn/publish/newthu/newthu_cnt/intothu/intothu-3-1.html"
									target="_blank">网站地图</a></li>
								<li><a
									href="http://www.tsinghua.edu.cn/publish/newthu/newthu_cnt/intothu/intothu-3.html"
									target="_blank">实用信息</a></li>
								<li><a
									href="http://www.tsinghua.org.cn/publish/alumni/index.html"
									target="_blank">联系我们</a></li>
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
					<div class="copyrights">
						版权所有 © 2017 中粮集团有限公司<span>京ICP备05002557号</span><i
							class="icon-chart-bar"></i> <span id="total"
							style="padding: 0; opacity: 1;"></span>
					</div>
				</div>
			</div>
		</div>


	</div>



</body>

</html>