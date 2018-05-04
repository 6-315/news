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
	<a href="${pageContext.request.contextPath}/user/user_yemianAction">后台</a>
	<div id="div1" style="width: 800px; height: 200px;">
		<p>
			欢迎使用 <b>wangEditor</b> 富文本编辑器
		</p>
	</div>
	<input id="text1" type="hidden" name="name">
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery1.8.2.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/wangEditor.js"></script>
	<script type="text/javascript">
		var E = window.wangEditor
		var editor = new E('#div1')
		editor.customConfig.pasteFilterStyle = false
		editor.customConfig.uploadImgShowBase64 = true
		var $text1 = $('#text1')
		editor.customConfig.onchange = function(html) {
			$text1.val(html)
		}
		editor.create()
		$text1.val(editor.txt.html())
	</script>

</body>

</html>