<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导航栏</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/Header.css" />
<script src="${pageContext.request.contextPath }/js/jquery1.8.2.js"></script>
	<script src="${pageContext.request.contextPath }/js/header.js"></script>
</head>
<body>
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
						target="_blank">业务概览<span>BRAND PRODUCT</span></a></li>
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
</body>
</html>