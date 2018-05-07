<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>

<title>轮播图管理</title>
<style>
.fileinput-button {
	position: relative;
	display: inline-block;
	overflow: hidden;
}

.fileinput-button input {
	position: absolute;
	right: 0px;
	top: 0px;
	opacity: 0;
	-ms-filter: 'alpha(opacity=0)';
	font-size: 200px;
	color: #357EBD;
}
</style>
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

						<s:iterator value="#session.realUser">
							<s:if test="UJ_IsCarouselManagement == 'management'.toString()">
								<button class="am-btn am-btn-default am-btn-success"
									data-toggle="modal" data-target="#myModal" type="submit">添加轮播图</button>
							</s:if>
						</s:iterator>

						<!-- 添加的模态框（Modal） -->

						<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true"
							style="margin-top: 100px;">
							<div class="modal-dialog" style="width: 400px;">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel">添加轮播图</h4>
									</div>
									<!-- 模态框内添加内容 -->
									<form
										action="${pageContext.request.contextPath}/carousel/carousel_detailAction"
										method="post" enctype="multipart/form-data">
										<div class="form-group">
											<br> <select name="news_CarouselInfo.CI_BelongNews"
												class="form-control" style="width: 240px; margin-left: 23%;">
												<s:iterator value="listNews">
													<option value="<s:property value="NI_Id" />"><s:property
															value="NI_Title" /></option>
												</s:iterator>
											</select> <br> <br>
											<!-- 单选框 -->
											<div style="margin-left: 36%;">
												<input type="hidden" value="1"
													name="news_CarouselInfo.CI_IsDelete"> <label
													class="radio-inline"> <input type="radio"
													name="news_CarouselInfo.CI_IsShow" id="inlineRadio1"
													value="1"> 显示
												</label> <label class="radio-inline"> <input type="radio"
													name="news_CarouselInfo.CI_IsShow" id="inlineRadio2"
													value="-1"> 不显示
												</label>
											</div>

											<br />
											<div class="" style="margin-left: 40%;">

												<span class="btn btn-success fileinput-button"> <span>上传轮播图</span>
													<input type="file" name="myfile" onchange="shangchuan()">
												</span>
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
						<!-- 是否显示 -->
						<div class="modal fade" id="update" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true"
							style="margin-top: 100px;">
							<div class="modal-dialog" style="width: 400px;">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel">是否显示</h4>
									</div>
									<!-- 是否显示 -->
									<form
										action="${pageContext.request.contextPath}/carousel/carousel_updateAction"
										method="post">
										<div class="form-group">
											<br>
											<!-- 单选框 -->
											<div style="margin-left: 33%;">
												<!-- 是否显示 -->
												<!-- <input type="tehixt" id="newsCarouselInfo_CI_IsShow"
													name="news_CarouselInfo.CI_IsShow" /> -->
												<!--  创建时间-->
												<input type="hidden" id="newsCarouselInfo_CI_CreateTime"
													name="news_CarouselInfo.CI_CreateTime" />
												<!-- 所属新闻 -->
												<input type="hidden" id="newsInfo_NI_Id"
													name="news_CarouselInfo.CI_BelongNews" />

												<!--  名字-->
												<input type="hidden" id="newsCarouselInfo_CI_Img"
													name="news_CarouselInfo.CI_Img" />
												<!-- 是否删除 -->
												<input type="hidden" value="1"
													name="news_CarouselInfo.CI_IsDelete" />
												<!-- 它 的ID -->
												<input type="hidden" id="newsCarouselInfo_CI_Id"
													name="news_CarouselInfo.CI_Id" /> <label
													class="radio-inline"> <input type="radio"
													name="news_CarouselInfo.CI_IsShow" id="inlineRadio1"
													value="1"> 显示
												</label> <label class="radio-inline"> <input type="radio"
													name="news_CarouselInfo.CI_IsShow" id="inlineRadio1"
													value="-1"> 不显示
												</label>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">close</button>
											<button type="submit" class="btn btn-primary">update</button>
										</div>
									</form>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal -->
						</div>
						<!-- 结束 -->




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
							<div class="tpl-table-images-content-i-time">
								发布时间：
								<s:property value="newsCarouselInfo.CI_ModifyTime" />
							</div>
							<div class="tpl-i-title">

								<h1>
									<s:property value="newsInfo.NI_Title" />
									<%-- <s:property value="newsInfo.NI_Id" /> --%>
								</h1>

								<%-- <h1>
									<s:property value="newsCarouselInfo.CI_CreateTime" />
								</h1> --%>
								<%-- <h1>
									<s:property value="newsCarouselInfo.CI_Id" />
								</h1> --%>
								<img style="margin: auto;" width="248" height="120" alt="轮播图图片"
									src="${pageContext.request.contextPath}/carousel/img_carouseImgShow?imgName=<s:property value="newsCarouselInfo.CI_Img" />">
								<h1>
									是否显示
									<s:property value="newsCarouselInfo.CI_IsShow" />
								</h1>
							</div>
							<div class="tpl-table-images-content-block">

								<div class="tpl-i-font"></div>

								<div class="am-btn-toolbar">

									<!-- 1 -->

									<s:iterator value="#session.realUser">
										<s:if
											test="UJ_IsCarouselManagement == 'management'.toString()">
											<div
												class="am-btn-group am-btn-group-xs tpl-edit-content-btn">
												<%-- <button type="button"
											class="am-btn am-btn-default am-btn-success">
											<span class="am-icon-plus"></span> 新增
										</button> --%>
												<!--  News_CarouselInfo-->
												<button data-target="#update" data-toggle="modal"
													class="am-btn am-btn-default am-btn-secondary"
													id="<s:property value="newsCarouselInfo.CI_IsShow"/>&$&<s:property value="newsInfo.NI_Id"/>&$&<s:property value="newsCarouselInfo.CI_CreateTime"/>&$&<s:property value="newsCarouselInfo.CI_Img"/>&$&<s:property value="newsCarouselInfo.CI_Id"/>&$&<s:property value="newsCarouselInfo.CI_IsDelete"/>"
													onclick="chuanIdForModal(this.id)">
													<span class="am-icon-edit"></span> 显示
												</button>

												<%-- <button type="button"
											class="am-btn am-btn-default am-btn-warning">
											<span class="am-icon-archive"></span> 审核
										</button> --%>

												<button data-target="#delete" data-toggle="modal"
													class="am-btn am-btn-default am-btn-danger"
													id="<s:property value="newsCarouselInfo.CI_IsShow"/>&$&<s:property value="newsInfo.NI_Id"/>&$&<s:property value="newsCarouselInfo.CI_CreateTime"/>&$&<s:property value="newsCarouselInfo.CI_Img"/>&$&<s:property value="newsCarouselInfo.CI_Id"/>&$&<s:property value="newsCarouselInfo.CI_IsDelete"/>"
													onclick="chuanIdForModal2(this.id)">
													<span class="am-icon-trash-o"></span> 删除
												</button>
											</div>
										</s:if>
									</s:iterator>

									<!-- 2 -->

								</div>
							</div>
						</div>
					</div>




				</s:iterator>

				<div class="tpl-alert"></div>
			</div>


		</div>

	</div>


	<div class="modal fade" id="delete" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		style="margin-top: 100px;">
		<div class="modal-dialog" style="width: 400px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">是否显示</h4>
				</div>
				<!-- 是否删除 -->
				<form
					action="${pageContext.request.contextPath}/carousel/carousel_deleteAction"
					method="post">
					<div class="form-group">
						<br>
						<!-- 单选框 -->
						<div style="margin-left: 33%;">
							<!-- 是否显示 -->
							<!-- <input type="tehixt" id="newsCarouselInfo_CI_IsShow"
													name="news_CarouselInfo.CI_IsShow" /> -->
							<!--  创建时间-->
							<input type="hidden" id="delnewsCarouselInfo_CI_CreateTime"
								name="news_CarouselInfo.CI_CreateTime" />
							<!-- 所属新闻 -->
							<input type="hidden" id="delnewsInfo_NI_Id"
								name="news_CarouselInfo.CI_BelongNews" />

							<!--  名字-->
							<input type="hidden" id="delnewsCarouselInfo_CI_Img"
								name="news_CarouselInfo.CI_Img" />
							<!-- 是否显示 -->
							<input type="hidden" id="delnewsCarouselInfo_CI_IsShow"
								name="news_CarouselInfo.CI_IsShow" />
							<!-- 它 的ID -->
							<input type="hidden" id="delnewsCarouselInfo_CI_Id"
								name="news_CarouselInfo.CI_Id" />

						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">close</button>
						<input type="submit" class="btn btn-danger" onclick="delete1"
							value="Delete">
						<!-- <button type="submit" class="btn btn-primary"  > Delete</button> -->
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
			if (val = "shanchu") {
				toastr.success(val)
			}

		}
		/* 点击编辑获得信息 */
		function chuanIdForModal(id) {
			var arr = id.split('&$&');
			$('#newsCarouselInfo_CI_IsShow').val(arr[0])
			$('#newsInfo_NI_Id').val(arr[1])
			$('#newsCarouselInfo_CI_CreateTime').val(arr[2])
			$('#newsCarouselInfo_CI_Img').val(arr[3])
			$('#newsCarouselInfo_CI_Id').val(arr[4])
		}
		function chuanIdForModal2(id) {
			var arr = id.split('&$&');
			$('#delnewsCarouselInfo_CI_IsShow').val(arr[0])
			$('#delnewsInfo_NI_Id').val(arr[1])
			$('#delnewsCarouselInfo_CI_CreateTime').val(arr[2])
			$('#delnewsCarouselInfo_CI_Img').val(arr[3])
			$('#delnewsCarouselInfo_CI_Id').val(arr[4])
		}
		function shangchuan() {
			toastr.success("上传图片成功");
		}
		function delete1() {
			toastr.success("删除成功");
		}
		/*onload  加载后调用
		onchange 改变后调用
		oncoick 点击后调用
		 */
	</script>



</body>
</html>