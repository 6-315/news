<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<title>上传</title>
</head>
<body onload="user_detail()">
	<s:action name="user_endHeaderAction" namespace="/user"
		executeResult="true" />
	<div class="tpl-page-container tpl-page-header-fixed">
		<s:action name="user_endNavbarAction" namespace="/user"
			executeResult="true" />
		<!-- 开始 -->
		<div class="tpl-content-wrapper">
			<div class="tpl-content-page-title">Amaze UI 表单</div>
			<ol class="am-breadcrumb">
				<li><a href="#" class="am-icon-home">首页</a></li>
				<li><a href="#">表单</a></li>
				<li class="am-active">Amaze UI 表单</li>
			</ol>
			<div class="tpl-portlet-components">
				<div class="portlet-title">
					<div class="caption font-green bold">
						<span class="am-icon-code"></span> 表单
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

				<div class="tpl-block">

					<div class="am-g">
						<div class="tpl-form-body tpl-form-line">
							<form class="am-form tpl-form-line-form"
								action="${pageContext.request.contextPath}/carousel/carousel_detailAction"
								method="post" enctype="multipart/form-data">


								<!-- 下拉列表 -->
								<label for="user-name" class="am-u-sm-3 am-form-label">所属
									<span class="tpl-form-line-small-title">Navigation</span>
								</label>
								<div style="width: 130px; height: 70px; margin-left: 26.5%">

									<select class="form-control"
										name="news_CarouselInfo.CI_BelongNews">

										<s:iterator value="listNews">
											<option value="<s:property value="NI_Id" />">

												<s:property value="NI_Title" />
											</option>
										</s:iterator>
									</select>
								</div>
								<!-- 结束 -->


								<div class="am-form-group">
									<label for="user-weibo" class="am-u-sm-3 am-form-label">封面图
										<span class="tpl-form-line-small-title">Images</span>
									</label>
									<div class="am-u-sm-9">
										<div class="am-form-group am-form-file">
											<div class="tpl-form-file-img">
												<img src="assets/img/a5.png" alt="">
											</div>
											<button type="button" class="am-btn am-btn-danger am-btn-sm">
												<i class="am-icon-cloud-upload"></i> 添加封面图片
												
												
											</button>
											<input id="doc-form-file"type="file" name="myfile" onchange="shangchuan()">
										</div>

									</div>
								</div>

								<div style="margin-left: 25%;">
									<input type="hidden" value="1"
										name="news_CarouselInfo.CI_IsDelete"> <label
										class="radio-inline"> <input type="radio"
										name="news_CarouselInfo.CI_IsShow" id="inlineRadio1" value="1">
										显示
									</label> <label class="radio-inline"> <input type="radio"
										name="news_CarouselInfo.CI_IsShow" id="inlineRadio2"
										value="-1"> 不显示
									</label>
								</div>


								<div class="am-form-group">
									<div class="am-u-sm-9 am-u-sm-push-3">
										<button type="submit"
											class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
									</div>
								</div>
							</form>

						</div>
					</div>
				</div>


			</div>
		</div>
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
		function shangchuan() {
			toastr.success("上传图片成功");
		}
		if (val == 'NO Title') {
			toastr.error(val)
		}
	</script>
</body>
</html>