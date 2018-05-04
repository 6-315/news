<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<title>链接管理</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
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
				<div class="portlet-title" style="border-bottom-width: 0px;">
					<button class="btn btn-primary btn-lg" data-toggle="modal"
						data-target="#myModal" style="margin-left: 14px;">添加链接</button>
					<div class="portlet-input input-small input-inline"
						style="float: right;">
						<div class="input-icon right">


							<!-- 	<i class="am-icon-search"></i> <input
								class="form-control form-control-solid" placeholder="搜索..."
								type="text"> -->


						</div>
					</div>
					<!-- 添加信息模态框（Modal） -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog" style="margin-top: 120px;">
							<div class="modal-content">
								<form
									action="${pageContext.request.contextPath}/link/link_detailAction"
									method="post">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel">添加链接信息</h4>
									</div>
									<div class="modal-body">

										链接名称<input name="news_LinkInfo.LI_Name" type="text"
											class="form-control input-sm" placeholder="请输入链接名称" /> 链接地址
										<input name="news_LinkInfo.LI_Address" type="text"
											class="form-control input-sm" placeholder="请输入链接地址" />

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
									<th class="table-title">链接名称</th>
									<th class="table-type">链接地址</th>
									<th class="table-title">是否可见</th>
									<!-- <th class="table-title">是否删除</th> -->
									<th class="table-author am-hide-sm-only">创建日期</th>
									<th class="table-date am-hide-sm-only">修改日期</th>
									<th class="table-set">操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="news_LinkInfoCountVO.listNews_LinkInfo">
									<tr>
										<!-- <td><input type="checkbox"></td> -->
										<%-- <td><s:property value="news_LinkInfo.LI_Id"/></td> --%>
										<td><s:property value="LI_Name" /></td>
										<td><s:property value="LI_Address" /></td>
										<td><s:if test="LI_IsDisplay == 1">可见</s:if> <s:if
												test="LI_IsDisplay != 1">不可见</s:if> <%-- <s:property value="LI_IsDisplay" /> --%>

										</td>

										<%-- <td><s:if test="LI_IsDelete == 1">未删除</s:if> <s:if
											test="LI_IsDelete != 1">已删除</s:if> <s:property value="LI_IsDelete" />

									</td> --%>
										<td class="am-hide-sm-only"><s:property
												value="LI_CreateTime" /></td>
										<td class="am-hide-sm-only"><s:property
												value="LI_ModifyTime" /></td>
										<td>
											<div class="am-btn-toolbar">
												<div class="am-btn-group am-btn-group-xs">
													<button
														class="am-btn am-btn-default am-btn-xs am-text-secondary"
														data-toggle="modal" data-target="#myModal_1"
														id="<s:property value="LI_Id"/>&$&<s:property value="LI_Name"/>&$&<s:property value="LI_Address" />&$&<s:property value="LI_CreateTime" />&$&<s:property value="LI_IsDelete" />"
														onclick="chuanIdForModal(this.id)">
														<span class="am-icon-pencil-square-o"></span> 编辑
													</button>


													<button
														class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"
														data-toggle="modal" data-target="#myModal_2"
														id="<s:property value="LI_Id"/>&$&<s:property value="LI_Name"/>&$&<s:property value="LI_Address" />&$&<s:property value="LI_CreateTime" />&$&<s:property value="LI_IsDisplay" />"
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
								<td>共 <s:property value="news_LinkInfoCountVO.totalPages" />
									页
								</td>
								<td>共 <s:property value="news_LinkInfoCountVO.totalRecords" />
									条记录
								</td>
								<td>当前第 <s:property value="news_LinkInfoCountVO.pageIndex" />
									页
								</td>
								<td colspan="4"><s:if
										test="%{news_LinkInfoCountVO.pageIndex == 1}">第一页&nbsp;&nbsp;&nbsp;&nbsp;上一页&nbsp;&nbsp;&nbsp;&nbsp;</s:if>
									<s:else>
										<a
											href="${pageContext.request.contextPath }/link/link_listLinkInfoByPageAction?page=1">第一页&nbsp;&nbsp;&nbsp;&nbsp;</a>
										<a
											href="${pageContext.request.contextPath }/link/link_listLinkInfoByPageAction?page=<s:property value="%{news_LinkInfoCountVO.pageIndex-1}"/>">上一页&nbsp;&nbsp;&nbsp;&nbsp;</a>

									</s:else> <s:if
										test="%{news_LinkInfoCountVO.pageIndex != news_LinkInfoCountVO.totalPages}">
										<a
											href="${pageContext.request.contextPath }/link/link_listLinkInfoByPageAction?page=<s:property value="%{news_LinkInfoCountVO.pageIndex+1}"/>">下一页&nbsp;&nbsp;&nbsp;&nbsp;</a>
										<a
											href="${pageContext.request.contextPath }/link/link_listLinkInfoByPageAction?page=<s:property value="news_LinkInfoCountVO.totalPages"/>">最后一页</a>
									</s:if> <s:else>下一页&nbsp;&nbsp;&nbsp;&nbsp; 最后一页</s:else></td>
							</tr>
						</table>

					</div>
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
					action="${pageContext.request.contextPath}/link/link_UpdateLinkInfoAction"
					method="post">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">修改链接信息</h4>
					</div>
					<div class="modal-body">
						<input id="link_id" name="news_LinkInfo.LI_Id" type="hidden">
						<input id="link_isDelete" name="news_LinkInfo.LI_IsDelete"
							type="hidden"> <input id="link_createTime"
							name="news_LinkInfo.LI_CreateTime" type="hidden"> 链接名称<input
							id="link_Name" name="news_LinkInfo.LI_Name" type="text"
							class="form-control input-sm" placeholder="请输入链接名称" /> 链接地址 <input
							name="news_LinkInfo.LI_Address" id="link_Address" type="text"
							class="form-control input-sm" placeholder="请输入链接地址" /> 是否可见 <label
							class="form-control input-sm"> <input type="radio"
							name="news_LinkInfo.LI_IsDisplay" id="sr1" value="1" />可见 <input
							type="radio" name="news_LinkInfo.LI_IsDisplay" id="sr1"
							value="-1" />不可见
						</label>
						<!-- 是否删除 <label class="form-control input-sm"> <input
								type="radio" name="news_LinkInfo.LI_IsDelete" id="sr2" value="1" />未删除
								<input type="radio" name="news_LinkInfo.LI_IsDelete" id="sr2"
								value="-1" />已删除
							</label> -->

					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
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
					action="${pageContext.request.contextPath}/link/link_UpdateLinkInfoAction"
					method="post">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>

					</div>
					<div class="modal-body">
						<input id="linkid" name="news_LinkInfo.LI_Id" type="hidden">
						<input id="linkcreateTime" name="news_LinkInfo.LI_CreateTime"
							type="hidden"> <input id="linkName"
							name="news_LinkInfo.LI_Name" type="hidden"> <input
							id="linkAddress" name="news_LinkInfo.LI_Address" type="hidden">
						<input id="linkisDisplay" name="news_LinkInfo.LI_IsDisplay"
							type="hidden"> <input name="news_LinkInfo.LI_IsDelete"
							type="hidden" value="-1"> <span style="margin: auto;">是否删除？
						</span>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary">确认删除</button>
					</div>
				</form>
			</div>
		</div>
		<!-- /.modal -->
	</div>


	<script>
		function chuanIdForModal(id) {
			console.log(id)
			var arr = id.split('&$&');
			$('#link_id').val(arr[0])
			$('#link_Name').val(arr[1])
			$('#link_Address').val(arr[2])
			$('#link_createTime').val(arr[3])
			$('#link_isDelete').val(arr[4])
		}
	</script>

	<script>
		function chuanIdForModal_1(id) {
			console.log(id)
			var arr = id.split('&$&');
			$('#linkid').val(arr[0])
			$('#linkName').val(arr[1])
			$('#linkAddress').val(arr[2])
			$('#linkcreateTime').val(arr[3])
			$('#linkisDisplay').val(arr[4])
		}
	</script>
</body>

</html>