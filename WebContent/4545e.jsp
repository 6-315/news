<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试的JSP</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery1.8.2.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
</head>
<body onload="message()">
	<h1>测试测试</h1>
	<button class="btn btn-primary btn-lg" data-toggle="modal"
		data-target="#myModal" type="submit">添加轮播图</button>


	<!-- 模态框（Modal） -->

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
				</div>
				<!-- 模态框内添加内容 -->
				<form
					action="${pageContext.request.contextPath}/carousel/carousel_detailAction"
					method="post" enctype="multipart/form-data">
					<div class="form-group">
						<input class="form-control input-sm" type="text"
							name="news_CarouselInfo.CI_Img" placeholder="轮播图片名"> <br>
						<br>

						<!-- <input class="form-control input-sm" type="text"
							name="news_CarouselInfo.CI_BelongNews" placeholder="轮播图所属新闻"> -->
						<select class="form-control"
							name="news_CarouselInfo.CI_BelongNews">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>

						</select>
						<div class="checkbox">
							&nbsp&nbsp&nbsp&nbsp<label> <input type="checkbox"
								name="news_CarouselInfo.CI_IsShow" value="1"> 轮播
							</label> &nbsp&nbsp&nbsp<label> <input type="checkbox"
								name="news_CarouselInfo.CI_IsShow" value="-1"> 不轮播
							</label>
						</div>



						<div class="form-group" style="margin-left: 40%;">
							<label for="exampleInputFile">File input</label> <input
								type="file" name="myfile">
							<p class="help-block">选择文件</p>
						</div>

					</div>
					<!-- 	<div class="modal-body">在这里添加一些文本</div> -->
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button type="submit" class="btn btn-primary">提交更改</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<script>
		function message() {
			var val = "${message}";
			if (val == 'error') {
				toastr.error(val)
			}
			if (val == "success") {
				toastr.success(val)
			}
		}
	</script>
</body>
</html>