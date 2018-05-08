<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>侧边栏</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/MainWarp.css" />
<script src="${pageContext.request.contextPath }/js/jquery1.8.2.js"></script>
</head>
<body>
	<%-- <s:iterator value="allNavigationNewsDTO"> --%>
	<div class="MainWrap">
		<div class="events">
			<h2>
				<b></b>头条新闻<b></b> <a class="newsmore" href="">更多>></a>

			</h2>
			<ul class="clearfix">
				<!--循环开始  -->
				<s:iterator value="allNavigationNewsDTO">
					<s:if test="news_TwoNavigationInfo.TNI_Name == '阿斯顿'.toString()">
						<s:iterator value="listNewsDTO" begin="0" end="2">
							<li><a href="" target="_blank" style="display: block;">
									<span class="time"> <span>19</span>2018.04
								</span>
									<div class="txtwrapper">
										<h3>
											<s:property value="news_NewsInfo.NI_Title" />
										</h3>
										<p>
											<s:property value="news_NewsInfo.NI_Title" />
										</p>
									</div>
							</a></li>
						</s:iterator>
					</s:if>
				</s:iterator>
				<!-- 循环结束 -->
			</ul>
		</div>
		<hr class="solid_1" />
		<!-- 咨询动态 -->
		<div class="info_center">
			<div class="information_left">
				<h2>
					<b></b>咨询动态<b></b><a class="newsmore" href="">更多>></a>
				</h2>
				<div class="from_1">
					<ul class="clearfix" style="margin-left: 20px;">
						<s:iterator value="allNavigationNewsDTO">
							<s:if test="news_TwoNavigationInfo.TNI_Name == '阿斯顿'.toString()">
								<s:iterator value="listNewsDTO">
									<li>
										<div class="intimate" style="float: left; width: 100%;">
											<a href="" target="_blank"> <span class="text"> <s:property
														value="news_NewsInfo.NI_Title" /></span> <span class="time">
													2018</span>
											</a>
										</div>
									</li>
								</s:iterator>
							</s:if>
						</s:iterator>
					</ul>
					<div class="solid_2">
						<hr />
					</div>
					<div class="img_1">
						<img src="img/08.jpg" />

					</div>
				</div>
			</div>
			<div class="information_right">
				<div class="right_top">
					<h2>
						<b></b>业务动态1<b></b><a class="newsmore" href="">更多>></a>
					</h2>
					<div class="from_2">
						<ul class="clearfix" style="margin-left: 20px;">
							<s:iterator value="allNavigationNewsDTO">
								<s:if test="news_TwoNavigationInfo.TNI_Name == '阿斯顿'.toString()">
									<s:iterator value="listNewsDTO">
										<li>
											<div class="intimate" style="float: left; width: 100%;">
												<a href="" target="_blank"> <span class="text"> <s:property
															value="news_NewsInfo.NI_Title" /></span> <span class="time">
														2018</span>
												</a>
											</div>
										</li>
									</s:iterator>
								</s:if>
							</s:iterator>
						</ul>
					</div>
				</div>
				<div class="right_bottom">
					<h2>
						<b></b>业务动态2<b></b><a class="newsmore" href="">更多>></a>
					</h2>
					<div class="from_3">
						<ul class="clearfix" style="margin-left: 20px;">
							<s:iterator value="allNavigationNewsDTO">
								<s:if test="news_TwoNavigationInfo.TNI_Name == '阿斯顿'.toString()">
									<s:iterator value="listNewsDTO">
										<li>
											<div class="intimate" style="float: left; width: 100%;">
												<a href="" target="_blank"> <span class="text"><s:property
															value="news_NewsInfo.NI_Title" /></span> <span class="time">
														2018</span>
												</a>
											</div>
										</li>
									</s:iterator>
								</s:if>
							</s:iterator>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%-- </s:iterator> --%>
</body>
</html>