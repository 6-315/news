package com.news.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.news.user.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 用户action
 * 
 * @author 创建 JXX
 * @date 2018/04/12
 * @modify JXX 2018/04/12
 * 
 */
public class UserAction extends ActionSupport implements ServletResponseAware, ServletRequestAware {
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
	 * detail
	 * 
	 * @test 暂时是测试系统的正确运行
	 * @author JXX 2018/04/12
	 */
	public String detailAction() {
		System.out.println("fff");
		return "detail";
	}

}
