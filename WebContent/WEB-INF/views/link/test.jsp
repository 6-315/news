<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/link/link_listLinkInfoByPageAction" method="post">
<input name="page" type="hidden"
			value="<s:property value="%{news_LinkInfoCountVO.pageIndex}"/>" /> <input
			type="text" name="search" placeholder="搜索"
			value="<s:property value="%{search}"/>" id="search" /> <input
			type="submit" value="搜索" />
</form>
<table border='1'>
		<tr>
			<td>链接名称</td>
			<td>链接地址</td>
			<td>操作</td>
		</tr>
		<s:iterator value="news_LinkInfoCountVO.listNews_LinkInfoDTO">
			<tr>
				<td><s:property value="news_LinkInfo.LI_Name" escapeHtml="false" /></td>
				<td><s:property value="newsCount" /></td>
				<td><a style="cursor: pointer;"
					href="${pageContext.request.contextPath }/link/link_removeLinkAction?tmpId=<s:property value="news_LinkInfo.linkId" />">删除</a>
					<a style="cursor: pointer" href="#">修改</a></td>
			</tr>
		</s:iterator>
	</table>
	<table>
		<tr>
			<td>共 <s:property value="news_LinkInfoCountVO.totalPages" /> 页
			</td>
			<td>共 <s:property value="news_LinkInfoCountVO.totalRecords" /> 条记录
			</td>
			<td>当前第 <s:property value="news_LinkInfoCountVO.pageIndex" /> 页
			</td>
			<td colspan="4"><s:if test="%{news_LinkInfoCountVO.pageIndex == 1}">第一页&nbsp;&nbsp;&nbsp;&nbsp;上一页&nbsp;&nbsp;&nbsp;&nbsp;</s:if>
				<s:else>
					<a
						href="${pageContext.request.contextPath }/link/link_listLinkInfoByPageAction?page=1">第一页&nbsp;&nbsp;&nbsp;&nbsp;</a>
					<a
						href="${pageContext.request.contextPath }/link/link_listLinkInfoByPageAction?page=<s:property value="%{news_LinkInfoCountVO.pageIndex-1}"/>">上一页&nbsp;&nbsp;&nbsp;&nbsp;</a>
				</s:else> <s:if
					test="%{news_LinkInfoCountVO.pageIndex != news_LinkInfoCountVO.totalPages}">
					<a
						href="${pageContext.request.contextPath }/link/link_listLinkInfoByPageAction?page=<s:property value="%{news_LinkInfoCountVO.pageIndex+1}"/>">下一页&nbsp;&nbsp;&nbsp;&nbsp;</a>
					<a
						href="${pageContext.request.contextPath }/link/link_listLinkInfoByPageAction?page=<s:property value="news_LinkInfoCountVO.totalPages"/>">最后一页</a>
				</s:if> <s:else>下一页&nbsp;&nbsp;&nbsp;&nbsp; 最后一页</s:else></td>
		</tr>
	</table>
</body>
</html>