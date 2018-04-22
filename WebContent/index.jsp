<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.css">
<title>首页内容</title>
</head>
<body>
	<!-- 
		DTO 数据传输对象。
	 -->
	<form
		action="${pageContext.request.contextPath}/user/user_detailAction">
		<input name="message" value="" type="hidden"> 用户名:<input
			name="userInfo.userName" type="text" /> 密 码:<input
			name="userInfo.userPassword" type="password" /> <input type="submit"
			value="提交" />
	</form>
	<a
		href="${pageContext.request.contextPath}/user/user_listUserInfoByPageAction">dd</a>
	<a href="${pageContext.request.contextPath}/user/user_yemianAction">后台</a>



	<hr>
	<!-- 测试轮播图添加 -->
	<form
		action="${pageContext.request.contextPath}/carousel/carousel_detailAction"
		method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label for="exampleInputEmail1">轮播图图片名</label> <input type="text"
				class="form-control" placeholder="轮播图图片名">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">轮播图所属新闻</label> <input
				type="password" class="form-control"
				name="news_CarouselInfo.CI_BelongNews" placeholder="轮播图所属新闻">
		</div>
		<div class="form-group">
			<label for="exampleInputFile">File input</label> <input type="file"
				name="myfile">
			<p class="help-block">给爸爸上去！</p>
		</div>
		<div class="checkbox">
			<label> <input type="checkbox" value="1"
				name="news_CarouselInfo.CI_IsShow"> 是否显示
			</label>
		</div>
		<button type="submit" class="btn btn-default">Submit</button>
	</form>

	<h1>listNewsCarouselDTO.newsInfo
</body>
</html>