<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/Header.css" />
<script src="${pageContext.request.contextPath }/js/jquery1.8.2.js"></script>
<script src="${pageContext.request.contextPath }/js/header.js"></script>
</head>
<body>

	<!--导航  -->
	<s:action name="navigation_headerAction" namespace="/navigation"
		executeResult="true"></s:action>
	<!-- 结束 -->

	<div id="left" class="news-left"
		style="width: 940px; margin-left: 150px;">
		<div class="crumbs">
			<span id="ctl00_ContentPlaceHolder1_SiteMapPath2"><a
				href="#ctl00_ContentPlaceHolder1_SiteMapPath2_SkipLink"><img
					alt="Skip Navigation Links"
					src="/WebResource.axd?d=CUACRZxTvhEweHmbKbTqHHWRHgPyyDS23ZGQgd-KIsm3Vt56u3aiwafqq8LKlQ_Xgp1naTc83NnW9zcTNCDM12isnBU1&amp;t=635589723570790873"
					style="border-width: 0px;" width="0" height="0"></a><span><a
					href="/index.aspx">首页</a></span><span> &gt; </span><span><a
					href="/news.aspx">新闻中心</a></span><span> &gt; </span><span class="last">集团要闻</span><a
				id="ctl00_ContentPlaceHolder1_SiteMapPath2_SkipLink"></a></span>
		</div>
		<div id="ctl00_ContentPlaceHolder1_ctl00_Panel1">


			<div class="group-news">

				<div class="top-news clearfix">
					<a href="news.aspx?tags=1&amp;Newsid=209815">
						<div class="content">
							<h1 title="2018中国品牌价值百强榜发布 恒大品牌价值780亿领跑">2018中国品牌价值百强榜发布
								恒大品牌价值780...</h1>
							<p>5月9日，由中国品牌建设促进会、经济日报社、中国国际贸易促进委员会等单位联合举办的“2018中国品牌价值评价信息发布”活动在上海举行，活动首次发布了2018年中国品牌价值百强榜，其中恒大品牌价值达779.51亿，居上榜品牌的第22位。据悉，此次活动是我国权威机构首次举办公益性的中国品牌价值百强榜发布，榜单的产生过程具有高度专业性与独立性，对于榜单的排名顺序和入围标准，只采用科学的方式，不接受任何来自于官方非官方人员的其它推荐，保证评价结果是科学的、公正的、公开的、公认的，也是与国际接轨的。据主办方表示，此次发布中国品牌价值百强榜，一方面是为了引领中国品牌价值评价方式的规范化，与国际品牌价值评价...</p>
						</div>
					</a>

				</div>
				<div class="link-list" id="newslist">
					<div id="page1">
						<li style="display: none"></li>
						<li style="display: none"></li>
						<li style="display: none"></li>
						<!-- 遍历开始 -->
						<s:iterator value="listSelectAllDTO">
							<h1>
								栏目：
								<s:property value="news_TwoNavigationInfo.TNI_Name" />
							</h1>
							<s:iterator value="news_NewsInfo">
								<li>标题： <a
									href="${pageContext.request.contextPath}/newsinfo/info_exact2Action?news.NI_Id=<s:property value="NI_Id" />&&newsTwoNavigationInfo.TNI_Id=<s:property value="news_TwoNavigationInfo.TNI_Id" />">

										<span><s:property value="NI_ShowTime" /></span> <s:property
											value="NI_Title" />
								</a></li>
							</s:iterator>
						</s:iterator>
						<!-- 遍历结束 -->
					</div>
				</div>
			</div>
			<!--<script src="../../js/jquery.scrollto.js"></script>-->
			<script type="text/javascript">
				$(function() {
					var _tags = request("Tags");

					$(".getmore").live("click", function() { //绑定点击事件
						show();
					});
					function show() {
						var n = $("#newslist").find("li").length;//当前LI个数
						var _pageSize = 10;//第页显示多少条
						var _page = Math.ceil(n / _pageSize);//当前页
						if (_page == 0) {

							_page = 1;
						}

						/*                //ajax开始=======================================
						 $.ajax({
						 type: "POST",
						 url: "/WebUserControl/news/list.ashx",
						 data: { page: _page, tags: _tags, pageSize: _pageSize },   //id:新的排列对应的ID,order：原排列顺序
						 success: function (data) {

						 // alert(data);

						 $("#more").remove();
						 $("#newslist").append("<div id=\"page" + _page + "\">" + data + "</div>");
						 $("#page" + _page + "").ScrollTo(1000);
						 var len = $("#page" + _page + " li").length;
						 for (i = 0; i < len; i++) {
						 $("#page" + _page + " li").eq(i).fadeToggle(300 * i);
						 }
						 //繁体翻译==================
						 StranLink_Obj = document.getElementById("StranLink");
						 if (StranLink_Obj) {
						 var JF_cn = "ft" + self.location.hostname.toString().replace(/\./g, "")
						 var BodyIsFt = getCookie(JF_cn)
						 if (BodyIsFt != "1") BodyIsFt = Default_isFT
						 with (StranLink_Obj) {
						 if (typeof (document.all) != "object") //非IE浏览器
						 {
						 href = "javascript:StranBody()"
						 }
						 else {
						 href = "#";
						 onclick = new Function("StranBody();return false")
						 }
						 title = StranText("点击以繁体中文方式浏览", 1, 1)
						 innerHTML = StranText(innerHTML, 1, 1)
						 }
						 if (BodyIsFt == "1") { setTimeout("StranBody()", StranIt_Delay) }
						 }
						 //繁体翻译==================


						 }
						 });
						 //ajax结束=======================================*/

					}
				});
			</script>


		</div>


	</div>
	<div id="right"
		style="float: left; margin-top: 50px; margin-left: 60px;">
		<div class="title news"></div>
		<ul class="menu">
			<li id="tags1" class="on"><a href="">头条新闻</a>
				<p class="abs" style="width: 100%; overflow: hidden;"></p></li>
			<li id="tags2"><a href="">咨询动态</a>
				<p class="abs" style="overflow: hidden; width: 0px;"></p></li>
			<li id="tags2"><a href="">业务动态1</a>
				<p class="abs" style="overflow: hidden; width: 0px;"></p></li>
			<li id="tags4"><a href="">业务动态2</a>
				<p class="abs"></p></li>
		</ul>
	</div>
</body>
</html>