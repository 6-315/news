package com.news.link.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.news.link.service.LinkManagementService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * class 链接管理
 * 
 * @author JXX
 * @date 18/04/18
 * @modify 修改 JXX 18/04/18
 *
 */
public class LinkManagementAction extends ActionSupport implements ServletResponseAware, ServletRequestAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * service层注入
	 */
	private LinkManagementService linkManagementService;

	public LinkManagementService getLinkManagementService() {
		return linkManagementService;
	}

	public void setLinkManagementService(LinkManagementService linkManagementService) {
		this.linkManagementService = linkManagementService;
	}

	/**
	 * service层注入
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
