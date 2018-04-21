package com.news.navigation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.news.navigation.service.NavigationManagementService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * class 导航管理
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify JXX 2018/04/18
 *
 */
public class NavigationManagementAction extends ActionSupport implements ServletResponseAware, ServletRequestAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * service 层注入
	 */
	private NavigationManagementService navigationManagementService;

	public NavigationManagementService getNavigationManagementService() {
		return navigationManagementService;
	}

	public void setNavigationManagementService(NavigationManagementService navigationManagementService) {
		this.navigationManagementService = navigationManagementService;
	}

	/**
	 * 注入完成
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

}
