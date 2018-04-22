<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<title>轮播图管理</title>
</head>
<body onload="message()">
	<s:action name="user_endHeaderAction" namespace="/user"
		executeResult="true" />
	<div class="tpl-page-container tpl-page-header-fixed">
		<s:action name="user_endNavbarAction" namespace="/user"
			executeResult="true" />

		<div class="tpl-content-wrapper">
			<div class="tpl-content-page-title">轮播图管理</div>
			<ol class="am-breadcrumb">
				<li><a href="#" class="am-icon-home">首页</a></li>
				<li><a href="#">Amaze UI CSS</a></li>
				<li class="am-active">轮播图管理</li>
			</ol>
			<div class="tpl-portlet-components">
				<div class="portlet-title">
					<div class="caption font-green bold">



						<!--class="am-btn am-btn-default am-btn-success"  -->

						<button class="am-btn am-btn-default am-btn-success"
							data-toggle="modal" data-target="#myModal" type="submit">添加轮播图</button>


						<!-- 模态框（Modal） -->

						<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true"
							style="margin-top: 100px;">
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
											<select name="news_CarouselInfo.CI_BelongNews"
												class="form-control">
												<s:iterator value="listNews">
													<option value="<s:property value="NI_Id" />"><s:property
															value="NI_Title" /></option>
												</s:iterator>
											</select> <br> <br>
											<div class="checkbox">
												&nbsp;&nbsp;&nbsp;&nbsp;<label> <input
													type="checkbox" name="news_CarouselInfo.CI_IsShow"
													value="1"> 轮播
												</label> &nbsp;&nbsp;&nbsp;<label> <input type="checkbox"
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
											<button type="button" class="btn btn-default"
												data-dismiss="modal">关闭</button>
											<button type="submit" class="btn btn-primary">提交更改</button>
										</div>
									</form>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal -->
						</div>
					</div>
					<div class="tpl-portlet-input tpl-fz-ml">
						<div class="portlet-input input-small input-inline">
							<div class="input-icon right">

								<i class="am-icon-search"></i> <input
									class="form-control form-control-solid" placeholder="搜索..."
									type="text">
							</div>
						</div>
					</div>


				</div>
				<s:iterator value="listNewsCarouselDTO">
					<div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
						<div class="tpl-table-images-content">
							<div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div>
							<div class="tpl-i-title">

								<h1>
									<s:property value="newsInfo.NI_Title" />
								</h1>

							</div>

							<div class="tpl-table-images-content-block">

								<div class="tpl-i-font">
									你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片。</div>

								<div class="am-btn-toolbar">
									<div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">
										<button type="button"
											class="am-btn am-btn-default am-btn-success">
											<span class="am-icon-plus"></span> 新增
										</button>
										<button type="button"
											class="am-btn am-btn-default am-btn-secondary">
											<span class="am-icon-edit"></span> 编辑
										</button>
										<button type="button"
											class="am-btn am-btn-default am-btn-warning">
											<span class="am-icon-archive"></span> 审核
										</button>
										<button type="button"
											class="am-btn am-btn-default am-btn-danger">
											<span class="am-icon-trash-o"></span> 删除
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>




				</s:iterator>

				<div class="tpl-alert"></div>
			</div>


		</div>

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