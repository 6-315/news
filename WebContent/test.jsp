<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页内容</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="js/jquery1.8.2.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
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
		href="${pageContext.request.contextPath}/link/link_listLinkInfoByPageAction">后台</a>

	<%-- <button class="btn btn-primary btn-lg" data-toggle="modal"
		data-target="#myModal">开始演示模态框</button>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form
					action="${pageContext.request.contextPath}/link/link_detailAction"
					method="post">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
					</div>
					<div class="modal-body">

						链接名称<input name="news_LinkInfo.LI_Name" type="text"
							class="form-control input-sm" placeholder="请输入链接名称" /> 链接地址 <input
							name="news_LinkInfo.LI_Address" type="text"
							class="form-control input-sm" placeholder="请输入链接地址" />

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary">提交更改</button>
					</div>
				</form>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div> --%>

</body>
</html>