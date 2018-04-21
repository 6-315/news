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
					<div class="caption font-green bold">
						<span class="am-icon-code"></span> 列表
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
				
						
						
					<div class="am-g">
						<div class="am-u-sm-12">
							<form class="am-form">
								<table
									class="am-table am-table-striped am-table-hover table-main">
									<thead>
										<tr>
											<th class="table-check"><input
												class="tpl-table-fz-check" type="checkbox"></th>
											<th class="table-id">ID</th>
											<th class="table-title">标题</th>
											<th class="table-type">类别</th>
											<th class="table-author am-hide-sm-only">作者</th>
											<th class="table-date am-hide-sm-only">修改日期</th>
											<th class="table-set">操作</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><input type="checkbox"></td>
											<td>1</td>
											<td><a href="#">Business management</a></td>
											<td>default</td>
											<td class="am-hide-sm-only">测试1号</td>
											<td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 复制
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>2</td>
											<td><a href="#">Business management</a></td>
											<td>default</td>
											<td class="am-hide-sm-only">测试1号</td>
											<td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 复制
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>3</td>
											<td><a href="#">Business management</a></td>
											<td>default</td>
											<td class="am-hide-sm-only">测试1号</td>
											<td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 复制
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>4</td>
											<td><a href="#">Business management</a></td>
											<td>default</td>
											<td class="am-hide-sm-only">测试1号</td>
											<td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 复制
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>5</td>
											<td><a href="#">Business management</a></td>
											<td>default</td>
											<td class="am-hide-sm-only">测试1号</td>
											<td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 复制
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>6</td>
											<td><a href="#">Business management</a></td>
											<td>default</td>
											<td class="am-hide-sm-only">测试1号</td>
											<td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 复制
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>7</td>
											<td><a href="#">Business management</a></td>
											<td>default</td>
											<td class="am-hide-sm-only">测试1号</td>
											<td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 复制
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>8</td>
											<td><a href="#">Business management</a></td>
											<td>default</td>
											<td class="am-hide-sm-only">测试1号</td>
											<td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 复制
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>9</td>
											<td><a href="#">Business management</a></td>
											<td>default</td>
											<td class="am-hide-sm-only">测试1号</td>
											<td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 复制
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>10</td>
											<td><a href="#">Business management</a></td>
											<td>default</td>
											<td class="am-hide-sm-only">测试1号</td>
											<td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 复制
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>11</td>
											<td><a href="#">Business management</a></td>
											<td>default</td>
											<td class="am-hide-sm-only">测试1号</td>
											<td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 复制
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>12</td>
											<td><a href="#">Business management</a></td>
											<td>default</td>
											<td class="am-hide-sm-only">测试1号</td>
											<td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 复制
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>13</td>
											<td><a href="#">Business management</a></td>
											<td>default</td>
											<td class="am-hide-sm-only">测试1号</td>
											<td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 复制
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>14</td>
											<td><a href="#">Business management</a></td>
											<td>default</td>
											<td class="am-hide-sm-only">测试14号</td>
											<td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 复制
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>15</td>
											<td><a href="#">Business management</a></td>
											<td>default</td>
											<td class="am-hide-sm-only">测试1号</td>
											<td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 复制
														</button>
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
								<div class="am-cf">

									<div class="am-fr">
										<ul class="am-pagination tpl-pagination">
											<li class="am-disabled"><a href="#">«</a></li>
											<li class="am-active"><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>
											<li><a href="#">»</a></li>
										</ul>
									</div>
								</div>
								<hr>

							</form>
						</div>

					</div>
				</div>
				<div class="tpl-alert"></div>
			</div>










		</div>







	</div>

</body>
</body>
</html>