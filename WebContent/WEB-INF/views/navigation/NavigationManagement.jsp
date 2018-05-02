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
						data-target="#myModal_One">添加一级导航</button>
					<button class="btn btn-primary btn-lg" data-toggle="modal"
						data-target="#myModal_Two">添加二级导航</button>
					<div class="portlet-input input-small input-inline"
						style="float: right;">
						<div class="input-icon right"></div>
					</div>

					<!-- 添加信息模态框（Modal_One） -->
					<div class="modal fade" id="myModal_One" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog" style="margin-top: 120px;">
							<div class="modal-content">
								<form
									action="${pageContext.request.contextPath}/navigation/navigation_detailOneAction"
									method="post">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel">添加一级导航信息</h4>
									</div>
									<div class="modal-body">

										一级导航名称<input name="news_OneNavigationInfo.ONI_Name"
											type="text" class="form-control input-sm"
											placeholder="请输入导航名称" /> 一级导航介绍 <input
											name="news_OneNavigationInfo.ONI_NavigatorIntroduce"
											type="text" class="form-control input-sm"
											placeholder="请输入导航介绍" />



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

					<!-- 添加信息模态框（Modal_Two） -->
					<div class="modal fade" id="myModal_Two" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog" style="margin-top: 120px;">
							<div class="modal-content">
								<form
									action="${pageContext.request.contextPath}/navigation/navigation_detailTwoAction"
									method="post">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel">添加二级导航信息</h4>
									</div>
									<div class="modal-body">

										二级导航名称<input name="news_TwoNavigationInfo.TNI_Name"
											type="text" class="form-control input-sm"
											placeholder="请输入导航名称" /> 二级导航介绍 <input
											name="news_TwoNavigationInfo.TNI_NavigatorIntroduce"
											type="text" class="form-control input-sm"
											placeholder="请输入导航介绍" />
										<!-- 1 -->
										二级导航所属 <select
											name="news_TwoNavigationInfo.TNI_BelongOneNavigator"
											style="width: 40%;" class="form-control">
											<s:iterator
												value="news_NavigationInfoCountVO.listNews_NavigationInfoCountDTO">
												<option
													value="<s:property value="news_OneNavigationInfo.ONI_Id" />">
													<s:property value="news_OneNavigationInfo.ONI_Name" />
												</option>
											</s:iterator>
										</select>

										<!-- 2 -->


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
									<!-- <th class="table-check"><input class="tpl-table-fz-check"
									type="checkbox"></th> -->
									<!-- <th class="table-id">ID</th> -->
									<!-- <th class="table-title">一级导航名称</th> -->
									<th class="table-title">一级级导航名称</th>


									<th class="table-author am-hide-sm-only">创建日期</th>
									<th class="table-date am-hide-sm-only">修改日期</th>
									<th class="table-set">操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator
									value="news_NavigationInfoCountVO.listNews_NavigationInfoCountDTO">
									<tr>


										<%-- <td><s:property value="news_OneNavigationInfo.ONI_Name" /></td> --%>
										<td><s:property value="news_OneNavigationInfo.ONI_Name" /></td>

										<td class="am-hide-sm-only"><s:property
												value="news_OneNavigationInfo.ONI_CreateTime" /></td>
										<td class="am-hide-sm-only"><s:property
												value="news_OneNavigationInfo.ONI_ModifyTime" /></td>
										<td>
											<div class="am-btn-toolbar">
												<div class="am-btn-group am-btn-group-xs">
													<button
														class="am-btn am-btn-default am-btn-xs am-text-secondary"
														data-toggle="modal" data-target="#myModal_update"
														id="<s:property value="news_OneNavigationInfo.ONI_Id"/>&$&<s:property value="news_OneNavigationInfo.ONI_Name"/>&$&<s:property value="news_OneNavigationInfo.ONI_NavigatorIntroduce" />&$&<s:property value="news_OneNavigationInfo.ONI_CreateTime" />&$&<s:property value="news_OneNavigationInfo.ONI_IsDelete" />&$&<s:property value="news_OneNavigationInfo.ONI_Order" />"
														onclick="chuanIdForModal(this.id)">
														<span class="am-icon-pencil-square-o"></span> 编辑
													</button>


													<button
														class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"
														data-toggle="modal" data-target="#myModal_2"
														id="<s:property value="news_OneNavigationInfo.ONI_Id"/>&$&<s:property value="news_OneNavigationInfo.ONI_Name"/>&$&<s:property value="news_OneNavigationInfo.ONI_NavigatorIntroduce" />&$&<s:property value="news_OneNavigationInfo.ONI_CreateTime" />&$&<s:property value="news_OneNavigationInfo.ONI_IsDisplay" />&$&<s:property value="news_OneNavigationInfo.ONI_Order" />"
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
										value="news_NavigationInfoCountVO.totalPages" /> 页
								</td>
								<td>共 <s:property
										value="news_NavigationInfoCountVO.totalRecords" /> 条记录
								</td>
								<td>当前第 <s:property
										value="news_NavigationInfoCountVO.pageIndex" /> 页
								</td>
								<td colspan="4"><s:if
										test="%{news_NavigationInfoCountVO.pageIndex == 1}">第一页&nbsp;&nbsp;&nbsp;&nbsp;上一页&nbsp;&nbsp;&nbsp;&nbsp;</s:if>
									<s:else>
										<a
											href="${pageContext.request.contextPath }/navigation/navigation_listNavigationInfoByPageAction?page=1">第一页&nbsp;&nbsp;&nbsp;&nbsp;</a>
										<a
											href="${pageContext.request.contextPath }/navigation/navigation_listNavigationInfoByPageAction?page=<s:property value="%{news_NavigationInfoCountVO.pageIndex-1}"/>">上一页&nbsp;&nbsp;&nbsp;&nbsp;</a>

									</s:else> <s:if
										test="%{news_NavigationInfoCountVO.pageIndex != news_NavigationInfoCountVO.totalPages}">
										<a
											href="${pageContext.request.contextPath }/navigation/navigation_listNavigationInfoByPageAction?page=<s:property value="%{news_NavigationInfoCountVO.pageIndex+1}"/>">下一页&nbsp;&nbsp;&nbsp;&nbsp;</a>
										<a
											href="${pageContext.request.contextPath }/navigation/navigation_listNavigationInfoByPageAction?page=<s:property value="news_NavigationInfoCountVO.totalPages"/>">最后一页</a>
									</s:if> <s:else>下一页&nbsp;&nbsp;&nbsp;&nbsp; 最后一页</s:else></td>
							</tr>
						</table>

					</div>
				</div>
			</div>

			<div class="tpl-alert"></div>
		</div>

		<!-- 二级导航信息模态框（Modal） -->
		<div class="modal fade" id="myModal_TwoNavigation" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
			style="margin-top: 80px;">
			<div class="modal-dialog">
				<div class="modal-content">

					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">二级导航信息</h4>
					</div>
					<div class="modal-body">
						<table class="table  table-striped table-hover table-main">
							<thead>
								<tr>

									<th class="table-title">二级导航名称</th>
									<th class="table-title">二级导航所属</th>

									<th class="table-author am-hide-sm-only">创建日期</th>
									<th class="table-date am-hide-sm-only">修改日期</th>
									<th class="table-set">操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator
									value="news_NavigationInfoCountVO.listNews_NavigationInfoCountDTO">
									<tr>


										<td><s:property value="news_TwoNavigationInfo.TNI_Name" /></td>
										<td><s:property value="news_OneNavigationInfo.ONI_Name" /></td>

										<td class="am-hide-sm-only"><s:property
												value="news_TwoNavigationInfo.TNI_CreateTime" /></td>
										<td class="am-hide-sm-only"><s:property
												value="news_TwoNavigationInfo.TNI_ModifyTime" /></td>
										<td>
											<div class="am-btn-toolbar">
												<div class="am-btn-group am-btn-group-xs">
													<button
														class="am-btn am-btn-default am-btn-xs am-text-secondary"
														data-toggle="modal" data-target="#myModal_update"
														id="<s:property value="news_OneNavigationInfo.ONI_Id"/>&$&<s:property value="news_OneNavigationInfo.ONI_Name"/>&$&<s:property value="news_OneNavigationInfo.ONI_NavigatorIntroduce" />&$&<s:property value="news_OneNavigationInfo.ONI_CreateTime" />&$&<s:property value="news_OneNavigationInfo.ONI_IsDelete" />&$&<s:property value="news_OneNavigationInfo.ONI_Order" />"
														onclick="chuanIdForModal(this.id)">
														<span class="am-icon-pencil-square-o"></span> 编辑
													</button>


													<button
														class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"
														data-toggle="modal" data-target="#myModal_2"
														id="<s:property value="news_OneNavigationInfo.ONI_Id"/>&$&<s:property value="news_OneNavigationInfo.ONI_Name"/>&$&<s:property value="news_OneNavigationInfo.ONI_NavigatorIntroduce" />&$&<s:property value="news_OneNavigationInfo.ONI_CreateTime" />&$&<s:property value="news_OneNavigationInfo.ONI_IsDisplay" />&$&<s:property value="news_OneNavigationInfo.ONI_Order" />"
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


					</div>



				</div>
			</div>
			<!-- /.modal -->
		</div>


		<!-- 修改信息模态框（Modal） -->
		<div class="modal fade" id="myModal_update" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
			style="margin-top: 80px;">
			<div class="modal-dialog">
				<div class="modal-content">
					<form
						action="${pageContext.request.contextPath}/navigation/navigation_UpdateOneNavigationInfoAction"
						method="post">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">修改一级导航信息</h4>
						</div>
						<div class="modal-body">
							<input id="onenavigationOrder"
								name="news_OneNavigationInfo.ONI_Order" type="hidden"> <input
								id="onenavigationid" name="news_OneNavigationInfo.ONI_Id"
								type="hidden"> <input id="onenavigationisDelete"
								name="news_OneNavigationInfo.ONI_IsDelete" type="hidden">
							<input id="onenavigationcreateTime"
								name="news_OneNavigationInfo.ONI_CreateTime" type="hidden">
							一级导航名称<input id="onenavigationName"
								name="news_OneNavigationInfo.ONI_Name" type="text"
								class="form-control input-sm" placeholder="请输入链接名称" /> 一级导航介绍 <input
								name="news_OneNavigationInfo.ONI_NavigatorIntroduce"
								id="onenavigatorIntroduce" type="text"
								class="form-control input-sm" placeholder="请输入链接地址" /> 是否可见 <label
								class="form-control input-sm"> <input type="radio"
								name="news_OneNavigationInfo.ONI_IsDisplay" id="sr1" value="1" />可见
								<input type="radio" name="news_OneNavigationInfo.ONI_IsDisplay"
								id="sr1" value="-1" />不可见
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
						action="${pageContext.request.contextPath}/navigation/navigation_UpdateOneNavigationInfoAction"
						method="post">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>

						</div>
						<div class="modal-body">
							<input id="one_navigationOrder"
								name="news_OneNavigationInfo.ONI_Order" type="hidden"> <input
								id="one_navigationid" name="news_OneNavigationInfo.ONI_Id"
								type="hidden"> <input id="one_navigationcreateTime"
								name="news_OneNavigationInfo.ONI_CreateTime" type="hidden">
							<input id="one_navigationName"
								name="news_OneNavigationInfo.ONI_Name" type="hidden"> <input
								id="one_navigatorIntroduce"
								name="news_OneNavigationInfo.ONI_NavigatorIntroduce"
								type="hidden"> <input id="one_navigationisDisplay"
								name="news_OneNavigationInfo.ONI_IsDisplay" type="hidden">
							<input name="news_OneNavigationInfo.ONI_IsDelete" type="hidden"
								value="-1">
							<center>是否删除？</center>
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
			$('#onenavigationid').val(arr[0])
			$('#onenavigationName').val(arr[1])
			$('#onenavigatorIntroduce').val(arr[2])
			$('#onenavigationcreateTime').val(arr[3])
			$('#onenavigationisDelete').val(arr[4])
			$('#onenavigationOrder').val(arr[5])
		}
	</script>

	<script>
		function chuanIdForModal_1(id) {
			console.log(id)
			var arr = id.split('&$&');
			$('#one_navigationid').val(arr[0])
			$('#one_navigationName').val(arr[1])
			$('#one_navigatorIntroduce').val(arr[2])
			$('#one_navigationcreateTime').val(arr[3])
			$('#one_navigationisDisplay').val(arr[4])
			$('#one_navigationOrder').val(arr[5])

		}
	</script>




</body>

</html>