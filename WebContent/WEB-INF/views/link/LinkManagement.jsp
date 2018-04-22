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
<body>
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
						data-target="#myModal">添加链接</button>
					<div class="portlet-input input-small input-inline"
						style="float: right;">
						<div class="input-icon right">


							<i class="am-icon-search"></i> <input
								class="form-control form-control-solid" placeholder="搜索..."
								type="text">


						</div>
					</div>
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

			</div>
			<div class="am-g">
				<div class="am-u-sm-12">
					<table class="am-table am-table-striped am-table-hover table-main">
						<thead>
							<tr>
								<th class="table-check"><input class="tpl-table-fz-check"
									type="checkbox"></th>
								<!-- <th class="table-id">ID</th> -->
								<th class="table-title">标题</th>
								<th class="table-type">类别</th>
								<th class="table-author am-hide-sm-only">作者</th>
								<th class="table-date am-hide-sm-only">修改日期</th>
								<th class="table-set">操作</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="news_LinkInfoCountVO.listNews_LinkInfo">
								<tr>
									<td><input type="checkbox"></td>
									<%-- <td><s:property value="news_LinkInfo.LI_Id"/></td> --%>
									<td><s:property value="LI_Name" /></td>
									<td><s:property value="LI_Address" /></td>
									<td class="am-hide-sm-only"><s:property
											value="LI_CreateTime" escapeHtml="false" /></td>
									<td class="am-hide-sm-only"><s:property
											value="LI_ModifyTime" escapeHtml="false" /></td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button
													class="am-btn am-btn-default am-btn-xs am-text-secondary"
													data-toggle="modal" data-target="#myModal_1"
													id="<s:property value="LI_Id"/>&$&<s:property value="LI_Name"/>&$&<s:property value="LI_Address" />&$&<s:property value="news_LinkInfo.LI_CreateTime" />"
													onclick="chuanIdForModal(this.id)">
													<span class="am-icon-pencil-square-o"></span> 编辑
												</button>

												<a
													class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"
													href="${pageContext.request.contextPath }/link/link_removeLinkAction?tmpId=<s:property value="LI_Id" />">
													<span class="am-icon-trash-o"></span> 删除
												</a>

												<%-- <button
													class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"
													type="submit"
													onclick="${pageContext.request.contextPath }/link/link_removeLinkAction?tmpId=<s:property value="LI_Id" />">
													 删除
												</button> --%>
											</div>
										</div>
									</td>
								</tr>
							</s:iterator>
						</tbody>
					</table>

					<table class="am-table am-table-striped am-table-hover table-main">
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
			<div class="tpl-alert"></div>
		</div>
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal_1" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form
						action="${pageContext.request.contextPath}/link/link_UpdateLinkInfoAction"
						method="post">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
						</div>
						<div class="modal-body">
							<input id="link_id" name="news_LinkInfo.LI_Id" type="hidden">
							<input id="link_createTime" name="news_LinkInfo.LI_CreateTime"
								type="hidden"> 链接名称<input id="linkName"
								name="news_LinkInfo.LI_Name" type="text"
								class="form-control input-sm" placeholder="请输入链接名称" /> 链接地址 <input
								name="news_LinkInfo.LI_Address" id="linkAddress" type="text"
								class="form-control input-sm" placeholder="请输入链接地址" />
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
	</div>
	<script>
		function chuanIdForModal(id) {
			console.log(id)
			var arr = id.split('&$&');
			$('#link_id').val(arr[0])
			$('#linkName').val(arr[1])
			$('#linkAddress').val(arr[2])
			$('#link_createTime').val(arr[3])
		}
	</script>




</body>
</body>
</html>