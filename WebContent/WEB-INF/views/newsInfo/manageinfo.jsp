<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<title>新闻管理</title>
</head>
<body onload="user_detail()">
	<s:action name="user_endHeaderAction" namespace="/user"
		executeResult="true" />
	<div class="tpl-page-container tpl-page-header-fixed">
		<s:action name="user_endNavbarAction" namespace="/user"
			executeResult="true" />
		<!-- 开始-->
		<div class="tpl-content-wrapper">
			<div class="tpl-content-page-title">新闻管理</div>
			<ol class="am-breadcrumb">
				<li><a href="#" class="am-icon-home">首页</a></li>
				<li><a href="#">李伟最帅</a></li>
				<li class="am-active">新闻管理</li>
			</ol>
			<div class="tpl-portlet-components">
				<div class="portlet-title">
					<div class="caption font-green bold">
						<span class="am-icon-code"></span> 李伟最帅
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
						<h1>这里放东西</h1>
					</div>
					<div class="am-g">
						<div class="am-u-sm-12">
								<table
									class="am-table am-table-striped am-table-hover table-main">
									<thead>
										<tr>
											<th class="table-check"><input
												class="tpl-table-fz-check" type="checkbox"></th>
											<th class="table-title">标题</th>
											<th class="table-title">是否轮播</th>

											<th class="table-type">是否发布</th>
											<th class="table-author am-hide-sm-only">是否推荐</th>
											<th class="table-date am-hide-sm-only">修改时间</th>
											<th class="table-set">操作</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="listNews">
											<tr>
												<td><input type="checkbox"></td>
												<td><a href="#"><s:property value="NI_Title" /> </a></td>
												<td><s:if test="NI_IsCarousel == 1">不可轮播</s:if> <s:if
														test="NI_IsCarousel == -1">轮播</s:if></td>
												<td><s:if test="NI_IsShow == 1">发布</s:if> <s:if
														test="NI_IsShow == -1">不发布</s:if></td>
												<td class="am-hide-sm-only"><s:if
														test="NI_IsRecommend == 1">不推荐</s:if> <s:if
														test="NI_IsRecommend == -1">推荐</s:if></td>
												<td class="am-hide-sm-only"><s:property
														value="NI_ModifyTime" /></td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs">
															<button
																class="am-btn am-btn-default am-btn-xs am-text-secondary">
																<span class="am-icon-pencil-square-o"></span> 编辑
															</button>
															<button data-target="#delete" data-toggle="modal"
																class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"
																id="<s:property value="NI_Id"/>&$&<s:property value="NI_ContentId"/>&$&<s:property value="NI_Title"/>&$&<s:property value="NI_Keywords"/>&$&<s:property value="NI_IsCarousel"/>&$&<s:property value="NI_BelongNavigation"/>&$&<s:property value="NI_BrowserCount"/> &$&<s:property value="NI_Source"/> &$&<s:property value="NI_Author"/> &$&<s:property value="NI_Content"/> &$&<s:property value="NI_IsDelete"/> &$&<s:property value="NI_IsShow"/> &$&<s:property value="NI_ShowTime"/> &$&<s:property value="NI_CreateTime"/> &$&<s:property value="NI_ModifyTime"/> &$&<s:property value="NI_IsRecommend"/> "
																onclick="chuanIdForModal2(this.id)">
																<span class="am-icon-trash-o"></span> 删除
															</button>
														</div>
													</div>
												</td>
											</tr>
										</s:iterator>
									</tbody>
								</table>

								<hr>

						</div>

					</div>
				</div>
				<div class="tpl-alert"></div>
			</div>
		</div>

		<!-- 结束 -->
	</div>
	<!-- 删除的模态框 -->
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
					action="${pageContext.request.contextPath}/newsinfo/newsinfo_deleteAction"
					method="post">
					<div class="form-group">
						<br>
						<!-- 单选框 -->
						<div style="margin-left: 33%;">
							<input type="hidden" id="NI_Id"name="news_NewsInfo.NI_Id" /> 	
							<input type="hidden" id="NI_ContentId"name="news_NewsInfo.NI_ContentId" /> 	
							<input type="hidden" id="NI_Title"name="news_NewsInfo.NI_Title" /> 	
							<input type="hidden" id="NI_Keywords"name="news_NewsInfo.NI_Keywords" /> 	
							<input type="hidden" id="NI_IsCarousel"name="news_NewsInfo.NI_IsCarousel" /> 	
							<input type="hidden" id="NI_BelongNavigation"name="news_NewsInfo.NI_BelongNavigation" /> 	
							<input type="hidden" id="NI_BrowserCount"name="news_NewsInfo.NI_BrowserCount" /> 	
							<input type="hidden" id="NI_Source"name="news_NewsInfo.NI_Source" /> 	
							<input type="hidden" id="NI_Author"name="news_NewsInfo.NI_Author" /> 	
							<input type="hidden" id="NI_Content"name="news_NewsInfo.NI_Content" /> 	
							<!-- <input type="hidden" id="NI_IsDelete"name="news_NewsInfo.NI_Id" /> 	 -->
							<input type="hidden" id="NI_IsShow"name="news_NewsInfo.NI_IsShow" /> 	
							<input type="hidden" id="NI_ShowTime"name="news_NewsInfo.NI_ShowTime" /> 	
							<input type="hidden" id="NI_CreateTime"name="news_NewsInfo.NI_CreateTime" /> 	
							<input type="hidden" id="NI_ModifyTime"name="news_NewsInfo.NI_ModifyTime" /> 	
							<input type="hidden" id="NI_IsRecommend"name="news_NewsInfo.NI_IsRecommend" /> 	
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">close</button>
						<input type="submit" class="btn btn-danger"
							value="Delete">
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
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
		function chuanIdForModal2(id) {
			var arr = id.split('&$&');
			$('#NI_Id').val(arr[0])
			$('#NI_ContentId').val(arr[1])
			$('#NI_Title').val(arr[2])
			$('#NI_Keywords').val(arr[3])
			$('#NI_IsCarousel').val(arr[4])
			$('#NI_BelongNavigation').val(arr[5])
			$('#NI_BrowserCount').val(arr[6])
			$('#NI_Source').val(arr[7])
			$('#NI_Author').val(arr[8])
			$('#NI_Content').val(arr[9])
			$('#NI_IsDelete').val(arr[10])
			$('#NI_IsShow').val(arr[11])
			$('#NI_ShowTime').val(arr[12])
			$('#NI_CreateTime').val(arr[13])
			$('#NI_ModifyTime').val(arr[14])
			$('#NI_IsRecommend').val(arr[15])
		}
	</script>
</body>
</html>