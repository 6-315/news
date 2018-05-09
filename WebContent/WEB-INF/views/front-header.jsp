<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导航栏</title>

</head>
<body>
	<div class="top">
		<div class="top-inner layout">
			<div id="J_nav" class="main-nav-wrap">
				<ul class="main-nav">
					<li><a href=""
						onclick="pgvSendClick({hottag:'v2.nav.info.link'})">首页<span>HOME
								PAGE</span></a></li>
					<s:iterator
						value="news_NavigationInfoCountVO.listNews_NavigationInfoCountDTO">
						<s:if test="news_OneNavigationInfo.ONI_IsDisplay == 1">
							<li><a href=""
								onclick="pgvSendClick({hottag:'v2.nav.info.link'})"><s:property
										value="news_OneNavigationInfo.ONI_Name" /> </a></li>
						</s:if>
					</s:iterator>
				</ul>
				下拉子导航
				<div id="J_subNav" class="sub-nav">
					<ul class="sub-nav-inner">
						<s:iterator
							value="news_NavigationInfoCountVO.listNews_NavigationInfoCountDTO">
							<s:if test="news_OneNavigationInfo.ONI_IsDisplay == 1">
								<li class="sub-nav-item">
									<s:iterator value="news_TwoNavigationInfo">
										<s:if test="TNI_IsDisplay == 1">
											<a class="sub-nav-lnk"> <s:property value="TNI_Name" />
											</a>
										</s:if>
									</s:iterator>
								</li>
							</s:if>
						</s:iterator>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>