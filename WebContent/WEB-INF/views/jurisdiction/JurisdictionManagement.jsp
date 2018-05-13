<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<title>后台管理</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin index Examples</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link href="css/bootstrap.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="js/jquery1.8.2.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body data-type="generalComponents">
	<s:action name="user_endHeaderAction" namespace="/user"
		executeResult="true" />
	<div class="tpl-page-container tpl-page-header-fixed">
		<s:action name="user_endNavbarAction" namespace="/user"
			executeResult="true" />
		<div class="tpl-content-wrapper">
			<div class="tpl-content-page-title">Amaze UI 文字列表</div>
			<ol class="am-breadcrumb">
				<li><a href="#" class="am-icon-home">首页</a></li>
				<li><a href="#">Amaze UI CSS</a></li>
				<li class="am-active">文字列表</li>
			</ol>
			<div class="tpl-portlet-components">
				<div class="portlet-title">
					<button class="btn btn-primary btn-lg" data-toggle="modal"
						data-target="#myModal">添加人员</button>
					<div class="portlet-input input-small input-inline"
						style="float: right;">
						<div class="input-icon right"></div>
					</div>
					<!-- 添加信息模态框（Modal） -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog" style="margin-top: 120px;">
							<div class="modal-content">
								<form
									action="${pageContext.request.contextPath}/jurisdiction/jurisdiction_detailAction"
									method="post">
									<div class="modal-header">

										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel">添加人员信息</h4>

									</div>
									<div class="modal-body">

										人员名称<input name="news_UserJurisdiction.UJ_UserName"
											type="text" class="form-control input-sm"
											placeholder="请输入人员名称" />

									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">关闭</button>
										<button type="submit" class="btn btn-primary">确认添加</button>
									</div>
								</form>

							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal -->
					</div>
				</div>
				<div class="am-g" style="background-color: white;">
					<div class="am-u-sm-12">
						<table class="table  table-striped table-hover table-main">
							<thead>
								<tr>
									<th class="table-title">人员名称</th>
									<th>导航权限</th>
									<th>链接权限</th>
									<th>轮播权限</th>
									<th>新闻权限</th>
									<th>人员权限</th>
									<th class="table-author am-hide-sm-only">创建日期</th>
									<th class="table-date am-hide-sm-only">修改日期</th>

									<th class="table-set">操作</th>

								</tr>
							</thead>
							<tbody>
								<s:iterator
									value="news_UserJurisdictionVO.listNews_UserJurisdiction">
									<tr>

										<td><s:property value="UJ_UserName" /></td>
										<td><s:if
												test="UJ_IsNavigationManagement == 'management'">可管理</s:if>
											<s:if test="UJ_IsNavigationManagement == 'see'">仅查看</s:if> <s:if
												test="UJ_IsNavigationManagement == 'none'">无权限</s:if></td>
										<td><s:if test="UJ_IsLinkeManagement == 'management'">可管理</s:if>
											<s:if test="UJ_IsLinkeManagement == 'see'">仅查看</s:if> <s:if
												test="UJ_IsLinkeManagement == 'none'">无权限</s:if></td>
										<td><s:if test="UJ_IsCarouselManagement == 'management'">可管理</s:if>
											<s:if test="UJ_IsCarouselManagement == 'see'">仅查看</s:if> <s:if
												test="UJ_IsCarouselManagement == 'none'">无权限</s:if></td>
										<td><s:if test="UJ_IsNewsManagement == 'management'">可管理</s:if>
											<s:if test="UJ_IsNewsManagement == 'see'">仅查看</s:if> <s:if
												test="UJ_IsNewsManagement == 'none'">无权限</s:if></td>
										<td><s:if
												test="UJ_IsJurisdictionManagement == 'management'">可管理</s:if>
											<s:if test="UJ_IsJurisdictionManagement == 'see'">仅查看</s:if>
											<s:if test="UJ_IsJurisdictionManagement == 'none'">无权限</s:if>
										</td>

										<td class="am-hide-sm-only"><s:property
												value="UJ_CreateTime" /></td>
										<td class="am-hide-sm-only"><s:property
												value="UJ_ModifyTime" /></td>
										<td>
											<div class="am-btn-toolbar">
												<div class="am-btn-group am-btn-group-xs">

													<button
														class="am-btn am-btn-default am-btn-xs am-text-secondary"
														data-toggle="modal" data-target="#myModal_1"
														id="<s:property value="UJ_Id"/>&$&<s:property value="UJ_UserName"/>&$&<s:property value="UJ_UserPassWord" />&$&<s:property value="UJ_CreateTime" />&$&<s:property value="UJ_IsDelete" />&$&<s:property value="UJ_IsNavigationManagement" />&$&<s:property value="UJ_IsLinkeManagement" />&$&<s:property value="UJ_IsCarouselManagement" />&$&<s:property value="UJ_IsNewsManagement" />&$&<s:property value="UJ_IsJurisdictionManagement" />"
														onclick="chuanIdForModal(this.id)">
														<span class="am-icon-pencil-square-o"></span> 编辑
													</button>

													<button
														class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"
														data-toggle="modal" data-target="#myModal_2"
														id="<s:property value="UJ_Id"/>&$&<s:property value="UJ_UserName"/>&$&<s:property value="UJ_UserPassWord" />&$&<s:property value="UJ_CreateTime" />&$&<s:property value="UJ_IsNavigationManagement" />&$&<s:property value="UJ_IsLinkeManagement" />&$&<s:property value="UJ_IsCarouselManagement" />&$&<s:property value="UJ_IsNewsManagement" />&$&<s:property value="UJ_IsJurisdictionManagement" />"
														onclick="chuanIdForModal_1(this.id)">
														<span class="am-icon-trash-o"></span> 删除
													</button>


												</div>
											</div>
										</td>
									</tr>
								</s:iterator>
							</tbody>
						</table>

						<table class="table  table-striped table-hover table-main">
							<tr>
								<td>共 <s:property
										value="news_UserJurisdictionVO.totalPages" /> 页
								</td>
								<td>共 <s:property
										value="news_UserJurisdictionVO.totalRecords" /> 条记录
								</td>
								<td>当前第 <s:property
										value="news_UserJurisdictionVO.pageIndex" /> 页
								</td>
								<td colspan="4"><s:if
										test="%{news_UserJurisdictionVO.pageIndex == 1}">第一页&nbsp;&nbsp;&nbsp;&nbsp;上一页&nbsp;&nbsp;&nbsp;&nbsp;</s:if>
									<s:else>
										<a
											href="${pageContext.request.contextPath }/jurisdiction/jurisdiction_listJurisdictionInfoByPageAction?page=1">第一页&nbsp;&nbsp;&nbsp;&nbsp;</a>
										<a
											href="${pageContext.request.contextPath }/jurisdiction/jurisdiction_listJurisdictionInfoByPageAction?page=<s:property value="%{news_UserJurisdictionVO.pageIndex-1}"/>">上一页&nbsp;&nbsp;&nbsp;&nbsp;</a>

									</s:else> <s:if
										test="%{news_UserJurisdictionVO.pageIndex != news_UserJurisdictionVO.totalPages}">
										<a
											href="${pageContext.request.contextPath }/jurisdiction/jurisdiction_listJurisdictionInfoByPageAction?page=<s:property value="%{news_UserJurisdictionVO.pageIndex+1}"/>">下一页&nbsp;&nbsp;&nbsp;&nbsp;</a>
										<a
											href="${pageContext.request.contextPath }/jurisdiction/jurisdiction_listJurisdictionInfoByPageAction?page=<s:property value="news_UserJurisdictionVO.totalPages"/>">最后一页</a>
									</s:if> <s:else>下一页&nbsp;&nbsp;&nbsp;&nbsp; 最后一页</s:else></td>
							</tr>
						</table>

					</div>
				</div>
			</div>

			<div class="tpl-alert"></div>
		</div>
		<!-- 修改信息模态框（Modal） -->
		<div class="modal fade" id="myModal_1" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true"
			style="margin-top: 80px;">
			<div class="modal-dialog">
				<div class="modal-content">
					<form
						action="${pageContext.request.contextPath}/jurisdiction/jurisdiction_UpdateJurisdictionInfoAction"
						method="post">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">修改人员信息</h4>
						</div>
						<div class="modal-body">
							<input id="uj_IsDelete" name="news_UserJurisdiction.UJ_IsDelete"
								type="hidden"> <input id="uj_Password"
								name="news_UserJurisdiction.UJ_UserPassWord" type="hidden">
							<input id="uj_Id" name="news_UserJurisdiction.UJ_Id"
								type="hidden"> <input id="uj_CreateTime"
								name="news_UserJurisdiction.UJ_CreateTime" type="hidden">
							人员名称<input id="uj_Name" name="news_UserJurisdiction.UJ_UserName"
								type="text" class="form-control input-sm" placeholder="请输入人员名称" />
							导航管理权限 <label class="form-control input-sm"> <input
								type="radio"
								name="news_UserJurisdiction.UJ_IsNavigationManagement" id="sr11"
								value="management" />可管理 <input type="radio"
								name="news_UserJurisdiction.UJ_IsNavigationManagement" id="sr12"
								value="see" />仅查看 <input type="radio"
								name="news_UserJurisdiction.UJ_IsNavigationManagement" id="sr13"
								value="none" />无权限
							</label> 链接管理权限 <label class="form-control input-sm"> <input
								type="radio" name="news_UserJurisdiction.UJ_IsLinkeManagement"
								id="sr21" value="management" />可管理 <input type="radio"
								name="news_UserJurisdiction.UJ_IsLinkeManagement" id="sr22"
								value="see" />仅查看 <input type="radio"
								name="news_UserJurisdiction.UJ_IsLinkeManagement" id="sr23"
								value="none" checked />无权限
							</label> 轮播管理权限 <label class="form-control input-sm"> <input
								type="radio"
								name="news_UserJurisdiction.UJ_IsCarouselManagement" id="sr31"
								value="management" />可管理 <input type="radio"
								name="news_UserJurisdiction.UJ_IsCarouselManagement" id="sr32"
								value="see" />仅查看 <input type="radio"
								name="news_UserJurisdiction.UJ_IsCarouselManagement" id="sr33"
								value="none" checked />无权限
							</label> 新闻管理权限 <label class="form-control input-sm"> <input
								type="radio" name="news_UserJurisdiction.UJ_IsNewsManagement"
								id="sr41" value="management" />可管理 <input type="radio"
								name="news_UserJurisdiction.UJ_IsNewsManagement" id="sr42"
								value="see" />仅查看 <input type="radio"
								name="news_UserJurisdiction.UJ_IsNewsManagement" id="sr43"
								value="none" checked />无权限
							</label> 人员管理权限 <label class="form-control input-sm"> <input
								type="radio"
								name="news_UserJurisdiction.UJ_IsJurisdictionManagement"
								id="sr51" value="management" />可管理 <input type="radio"
								name="news_UserJurisdiction.UJ_IsJurisdictionManagement"
								id="sr52" value="see" />仅查看 <input type="radio"
								name="news_UserJurisdiction.UJ_IsJurisdictionManagement"
								id="sr53" value="none" checked />无权限
							</label>


						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="submit" class="btn btn-primary">确认修改</button>
						</div>
					</form>
				</div>
			</div>
			<!-- /.modal -->
		</div>

		<!-- 修改信息模态框（Modal） -->
		<div class="modal fade" id="myModal_2" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true"
			style="margin-top: 80px;">
			<div class="modal-dialog">
				<div class="modal-content">
					<form
						action="${pageContext.request.contextPath}/jurisdiction/jurisdiction_UpdateJurisdictionInfoAction"
						method="post">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">删除人员信息</h4>
						</div>
						<div class="modal-body">
							<input type="hidden" id="ujId" name="news_UserJurisdiction.UJ_Id">
							<input type="hidden" id="ujName"
								name="news_UserJurisdiction.UJ_UserName"> <input
								type="hidden" id="ujPassword"
								name="news_UserJurisdiction.UJ_UserPassWord"> <input
								type="hidden" name="news_UserJurisdiction.UJ_IsDelete"
								value="-1"> <input type="hidden" id="ujCreateTime"
								name="news_UserJurisdiction.UJ_CreateTime"> <input
								type="hidden" id="ujIsNavigationManagement"
								name="news_UserJurisdiction.UJ_IsNavigationManagement">
							<input type="hidden" id="ujIsLinkManagement"
								name="news_UserJurisdiction.UJ_IsLinkeManagement"> <input
								type="hidden" id="ujIsCarouselManagement"
								name="news_UserJurisdiction.UJ_IsCarouselManagement"> <input
								type="hidden" id="ujIsNewsManagement"
								name="news_UserJurisdiction.UJ_IsNewsManagement"> <input
								type="hidden" id="ujIsJurisdictionManagement"
								name="news_UserJurisdiction.UJ_IsJurisdictionManagement">
							是否删除？
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="submit" class="btn btn-primary">确认删除</button>
						</div>
					</form>
				</div>
			</div>
			<!-- /.modal -->
		</div>



	</div>
	<script>
		function chuanIdForModal(id) {

			console.log(id)
			var arr = id.split('&$&');
			$('#uj_Id').val(arr[0])
			$('#uj_Name').val(arr[1])
			$('#uj_Password').val(arr[2])
			$('#uj_CreateTime').val(arr[3])
			$('#uj_IsDelete').val(arr[4])
			$('#uj_IsNavigationManagement').val(arr[5])
			$('#uj_IsLinkManagement').val(arr[6])
			$('#uj_IsCarouselManagement').val(arr[7])
			$('#uj_IsNewsManagement').val(arr[8])
			$('#uj_IsJurisdictionManagement').val(arr[9])
			
			if (arr[5] == 'management') {
				$('#sr11').prop("checked", true);
			} else if (arr[5] == 'see') {
				$('#sr12').prop("checked", true);
			} else {
				$('#sr13').prop("checked", true);
			}
			
			if (arr[6] == 'management') {
				$('#sr21').prop("checked", true);
			} else if (arr[6] == 'see') {
				$('#sr22').prop("checked", true);
			} else {
				$('#sr23').prop("checked", true);
			}
			
			if (arr[7] == 'management') {
				$('#sr31').prop("checked", true);
			} else if (arr[7] == 'see') {
				$('#sr32').prop("checked", true);
			} else {
				$('#sr33').prop("checked", true);
			}
			
			if (arr[8] == 'management') {
				$('#sr41').prop("checked", true);
			} else if (arr[8] == 'see') {
				$('#sr42').prop("checked", true);
			} else {
				$('#sr43').prop("checked", true);
			}
			
			if (arr[9] == 'management') {
				$('#sr51').prop("checked", true);
			} else if (arr[9] == 'see') {
				$('#sr52').prop("checked", true);
			} else {
				$('#sr53').prop("checked", true);
			}

		}

		function chuanIdForModal_1(id) {
			console.log(id)
			var arr = id.split('&$&');
			$('#ujId').val(arr[0])
			$('#ujName').val(arr[1])
			$('#ujPassword').val(arr[2])
			$('#ujCreateTime').val(arr[3])
			$('#ujIsNavigationManagement').val(arr[4])
			$('#ujIsLinkManagement').val(arr[5])
			$('#ujIsCarouselManagement').val(arr[6])
			$('#ujIsNewsManagement').val(arr[7])
			$('#ujIsJurisdictionManagement').val(arr[8])

			//------------------------

		}
	</script>


</body>

</html>