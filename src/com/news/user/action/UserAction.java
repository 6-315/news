package com.news.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.news.user.domain.UserInfo;
import com.news.user.domain.VO.UserNewsCountVO;
import com.news.user.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 用户action
 * 
 * @author 创建 JXX
 * @date 2018/04/12
 * @modify JXX 2018/04/13
 * 
 */
public class UserAction extends ActionSupport implements ServletResponseAware, ServletRequestAware {
	/**
	 * 不知道干什么用的,好像是与序列化有关
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * service层的注入
	 */
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	/**
	 * service 层的注入完成
	 */
	/**
	 * 实现request以及response
	 */
	private HttpServletResponse response;

	private HttpServletRequest request;

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	/**
	 * 实现结束
	 */

	/**
	 * 使用域模型将UserInfo对象放置到struts中
	 */
	private UserInfo userInfo;

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	/**
	 * 结束使用域模型User Info
	 */
	/**
	 * 使用域模型将UserNewsCountVO 对象放置到struts中
	 */
	private UserNewsCountVO userNewsCountVO;

	public UserNewsCountVO getUserNewsCountVO() {
		return userNewsCountVO;
	}

	public void setUserNewsCountVO(UserNewsCountVO userNewsCountVO) {
		this.userNewsCountVO = userNewsCountVO;
	}

	/**
	 * 结束
	 */

	/**
	 * 添加search以及page————域模型
	 */
	private String search = "";
	private int page = 1;

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	/**
	 * 实现结束
	 */
	private String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	/**
	 * 删除用户Id
	 */
	private String tmpId;

	public String getTmpId() {
		return tmpId;
	}

	public void setTmpId(String tmpId) {
		this.tmpId = tmpId;
	}

	/**
	 * 结束
	 */

	/**
	 * detail
	 * 
	 * @test 暂时是测试系统的正确运行
	 * @author JXX 2018/04/12
	 */
	public String detailAction() {

		if (userService.addUser(userInfo) == 1) {
			return "listUserInfoByPage";
		} else {
			return "error";
		}

	}

	/**
	 * 分页显示用户信息
	 * 
	 * @author JXX
	 * @date 2018/04/12
	 * @param obj
	 * @return
	 */
	public String listUserInfoByPageAction() {
		userNewsCountVO = new UserNewsCountVO();
		userNewsCountVO.setPageIndex(page);
		userNewsCountVO.setSearch(search);
		userNewsCountVO = userService.listUserInfoByPage(userNewsCountVO);
		return "detail";
	}

	/**
	 * 删除用户
	 * 
	 * @return
	 */
	public String removeUserAction() {
		userInfo = new UserInfo();
		userInfo.setUserId(tmpId);
		userService.removeUser(userInfo);
		return "listUserInfoByPage";
	}

	/**
	 * 更改用户信息
	 * 
	 * @return
	 */
	public String UpdateUserInfoAction() {
		return "listUserInfoByPage";
	}

	/**
	 * 跳转到后台
	 */
	public String yemianAction() {
		setMessage("success");
		return "yemian";
	}

	/**
	 * 头部
	 */
	public String endHeaderAction() {
		return "endHeader";
	}

	/**
	 * 侧边栏
	 */
	public String endNavbarAction() {
		return "endNavbar";
	}

}
