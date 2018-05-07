<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<title>新闻信息管理</title>
</head>
<body onload="user_detail()">
	<s:action name="user_endHeaderAction" namespace="/user"
		executeResult="true" />
	<div class="tpl-page-container tpl-page-header-fixed">
		<s:action name="user_endNavbarAction" namespace="/user"
			executeResult="true" />

		<!-- 添加新闻 -->

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
				<!-- 填写内容 -->
				<div class="tpl-block">

					<div class="am-g">
						<div class="tpl-form-body tpl-form-line">
							<form class="am-form tpl-form-line-form"
								action="${pageContext.request.contextPath}/newsinfo/newsinfo_savaAction"
								method="post" enctype="multipart/form-data">

								<div class="am-form-group">
									<label for="user-name" class="am-u-sm-3 am-form-label">标题
										<span class="tpl-form-line-small-title">Title</span>
									</label>
									<div class="am-u-sm-9">
										<input class="tpl-form-input" id="user-name"name="news_NewsInfo.NI_Title"
											placeholder="请输入标题文字" type="text"> <small>请填写标题文字10-20字左右。</small>
									</div>
								</div>

								<%-- <div class="am-form-group">
									<label for="user-name" class="am-u-sm-3 am-form-label">作者
										<span class="tpl-form-line-small-title">Author</span>
									</label>
									<div class="am-u-sm-9">
										<input class="tpl-form-input" id="user-name"name=""
											placeholder="名字你懂的" type="text"> <small>请填写你的艺名</small>
									</div>
								</div> --%>

								<!-- 下拉列表 -->
								<label for="user-name" class="am-u-sm-3 am-form-label">所属
									<span class="tpl-form-line-small-title">Navigation</span>
								</label>
								<div style="width: 130px; height: 70px; margin-left: 26.5%">

									<select class="form-control" name="news_NewsInfo.NI_BelongNavigation">
									
									<s:iterator value="listNavigation">
										<option value="<s:property value="TNI_Id" />">
										
										<s:property value="TNI_Name" />
										</option>
										</s:iterator>
									</select>
								</div>
								<!-- 结束 -->

								<div class="am-form-group">
									<label class="am-u-sm-3 am-form-label">SEO关键字 <span
										class="tpl-form-line-small-title">SEO</span></label>
									<div class="am-u-sm-9">
										<input placeholder="输入SEO关键字" type="text" name="news_NewsInfo.NI_Keywords">
									</div>
								</div>

								<div class="am-form-group">
									<label for="user-weibo" class="am-u-sm-3 am-form-label">源头
										<span class="tpl-form-line-small-title">Source</span>
									</label>
									<div class="am-u-sm-9">
										<input id="user-weibo" placeholder="请添加分类用点号隔开" type="text" name="news_NewsInfo.NI_Source">
										<div></div>
									</div>
								</div>


								<div class="am-form-group">
									<label for="user-intro" class="am-u-sm-3 am-form-label">文章内容</label>
									<div class="am-u-sm-9">
										<textarea class="" rows="10" id="user-intro"
											placeholder="请输入文章内容" name="news_Content.NC_Content"></textarea>
									</div>
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
		<!-- 添加新闻结束 -->
	</div>
	<script type="text/javascript">
		function user_detail() {
			console.log('ffff')
			var val = "${message}";
			console.log(val)
			if (val == "success") {
				toastr.success("跳转至新闻管理页面成功")
			}
		}
		function shangchuan() {
			toastr.success("上传图片成功");
		}
	</script>
</body>
</html>