<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>底部</title>
</head>
<body>
	<div class="footer"
		style="background-image: url(img/500604250_banner.jpg)">



		<div style="width: 1240px; margin: auto;">
			<div class="mainWrap">
				<div class="ulink clearfix">
					<div class="tlink">
						<div class="txtwrapper clearfix">
							<h2>常用链接</h2>
							<ul>
								<s:iterator value="news_LinkInfoCountVO.listNews_LinkInfo">
									<s:if test="LI_IsDisplay == 1">

										<li><a href="" target="_blank"> <s:property
													value="LI_Name" />
										</a></li>
									</s:if>
								</s:iterator>
								<!-- <li><a href="" target="_blank">投资者专区</a></li>
							<li><a href="" target="_blank">加入中粮</a></li>
							<li><a href="" target="_blank">隐私政策</a></li>
							<li><a href="" target="_blank">网站地图</a></li>
							<li><a href="" target="_blank">实用信息</a></li>
							<li><a href="" target="_blank">联系我们</a></li> -->
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



	</div>
</body>
</html>