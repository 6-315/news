<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<title>后台管理</title>
</head>
<body onload="user_detail()">
	<s:action name="user_endHeaderAction" namespace="/user"
		executeResult="true" />
	<div class="am-cf admin-main">
		<s:action name="user_endNavbarAction" namespace="/user"
			executeResult="true" />




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