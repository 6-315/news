<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<title>详细新闻浏览</title>
</head>
<body onload="user_detail()">
	<s:action name="user_endHeaderAction" namespace="/user"
		executeResult="true" />
	<div class="am-cf admin-main">
		<s:action name="user_endNavbarAction" namespace="/user"
			executeResult="true" />
		

		<h1>测试</h1>
		<s:iterator value="newsinfoDTO">
			1<s:property value="news_NewsInfo.NI_Title" escapeHtml="false" />
			
			2<s:property value="news_Content.NC_Content" escapeHtml="false" />

		</s:iterator>
		<!-- 测试轮播图的action -->
		<%-- <s:iterator value="listNewsCarouselDTO">

			<h1>
				QQQQQQQQQQ:
				<s:property value="newsInfo.NI_Title" />
			</h1>
		</s:iterator> --%>
		<!-- 结束 -->

		<!--  1111-->


	</div>
	<script type="text/javascript">
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