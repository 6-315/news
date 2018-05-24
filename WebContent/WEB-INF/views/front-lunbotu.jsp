<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>轮播图</title>
<script src="${pageContext.request.contextPath }/js/jquery1.8.2.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/lunbotu.css" />
<script src="${pageContext.request.contextPath }/js/lunbotu.js"></script>
<script>
	$(function() {
		var myApi1 = new Myapi();
		myApi1.JSON.lagout($('.J_banner'), 30000, 0);
	})
</script>
</head>
<body>
	<div style="margin-left:170px;" class="J_banner">
		<ul class="img">
			<s:iterator value="listNewsCarouselDTO">
				<li><img width="1249" height="450"
					src="${pageContext.request.contextPath}/carousel/img_carouseImgShow?imgName=<s:property value="newsCarouselInfo.CI_Img" />"
					alt=""></li>
			</s:iterator>
		</ul>
		<ul class="pointer"></ul>
		<!-- 点 -->
		<a class="cut prev"><</a>
		<!-- 上一张 -->
		<a class="cut next">></a>
		<!-- 下一张 -->
	</div>

</body>

</html>