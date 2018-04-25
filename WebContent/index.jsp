<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>首页内容</title>

</head>

<body>

	<form
		action="${pageContext.request.contextPath}/user/user_detailAction">

		用户名:<input name="userInfo.userName" type="text" /> 密 码:<input
			name="userInfo.userPassword" type="password" /> <input type="submit"
			value="提交" />

	</form>

	

	<a href="${pageContext.request.contextPath}/link/link_listLinkInfoByPageAction">后台</a>

</body>

</html>