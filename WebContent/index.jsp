<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页内容</title>
</head>
<body>
	<!-- 
		DTO 数据传输对象。
	 -->
	<form
		action="${pageContext.request.contextPath}/link/link_detailAction"
		method="post">
		链接名:<input name="news_LinkInfo.LI_Name" type="text" /> 链接地址:<input
			name="news_LinkInfo.LI_Address" type="text" id="" /> <input
			type="submit" value="提交" />
	</form>
	<a
		href="${pageContext.request.contextPath}/user/user_listUserInfoByPageAction">dd</a>
	<a
		href="${pageContext.request.contextPath}/link/link_listLinkInfoByPageAction">后台</a>



</body>
</html>