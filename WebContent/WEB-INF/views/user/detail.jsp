<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body onload="user_detail()">
	<form
		action="${pageContext.request.contextPath }/user/user_listUserInfoByPageAction"
		method="post">
		<input name="page" type="hidden"
			value="<s:property value="%{userNewsCountVO.pageIndex}"/>" /> <input
			type="text" name="search" placeholder="搜索"
			value="<s:property value="%{search}"/>" id="search" /> <input
			type="submit" value="搜索" />
	</form>
	<table border='1'>
		<tr>
			<td>姓名</td>
			<td>新闻数量</td>
			<td>操作</td>
		</tr>
		<s:iterator value="userNewsCountVO.listUserNewsCountDTO">
			<tr>
				<td><s:property value="userInfo.userName" escapeHtml="false" /></td>
				<td><s:property value="newsCount" /></td>
				<td><a style="cursor: pointer;"
					href="${pageContext.request.contextPath }/user/user_removeUserAction?tmpId=<s:property value="userInfo.userId" />">删除</a>
					<a style="cursor: pointer" href="#">修改</a></td>
			</tr>
		</s:iterator>
	</table>
	<table>
		<tr>
			<td>共 <s:property value="userNewsCountVO.totalPages" /> 页
			</td>
			<td>共 <s:property value="userNewsCountVO.totalRecords" /> 条记录
			</td>
			<td>当前第 <s:property value="userNewsCountVO.pageIndex" /> 页
			</td>
			<td colspan="4"><s:if test="%{userNewsCountVO.pageIndex == 1}">第一页&nbsp;&nbsp;&nbsp;&nbsp;上一页&nbsp;&nbsp;&nbsp;&nbsp;</s:if>
				<s:else>
					<a
						href="${pageContext.request.contextPath }/user/user_listUserInfoByPageAction?page=1">第一页&nbsp;&nbsp;&nbsp;&nbsp;</a>
					<a
						href="${pageContext.request.contextPath }/user/user_listUserInfoByPageAction?page=<s:property value="%{userNewsCountVO.pageIndex-1}"/>">上一页&nbsp;&nbsp;&nbsp;&nbsp;</a>
				</s:else> <s:if
					test="%{userNewsCountVO.pageIndex != userNewsCountVO.totalPages}">
					<a
						href="${pageContext.request.contextPath }/user/user_listUserInfoByPageAction?page=<s:property value="%{userNewsCountVO.pageIndex+1}"/>">下一页&nbsp;&nbsp;&nbsp;&nbsp;</a>
					<a
						href="${pageContext.request.contextPath }/user/user_listUserInfoByPageAction?page=<s:property value="userNewsCountVO.totalPages"/>">最后一页</a>
				</s:if> <s:else>下一页&nbsp;&nbsp;&nbsp;&nbsp; 最后一页</s:else></td>
		</tr>
	</table>
	<script>
		function user_detail() {
			console.log('ffff')
			var val = "${message}";
			console.log(val)
			if (val == "success") {
				toastr.success("跳转至后台页面成功")
			}
		}
	</script>

</body>
</html>