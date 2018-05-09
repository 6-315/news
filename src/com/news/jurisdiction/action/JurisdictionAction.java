package com.news.jurisdiction.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.news.jurisdiction.domain.News_UserJurisdiction;
import com.news.jurisdiction.domain.VO.News_UserJurisdictionVO;
import com.news.jurisdiction.service.JurisdictionService;

import com.opensymphony.xwork2.ActionSupport;

public class JurisdictionAction extends ActionSupport implements ServletResponseAware, ServletRequestAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private JurisdictionService jurisdictionService;

	public JurisdictionService getJurisdictionService() {
		return jurisdictionService;
	}

	public void setJurisdictionService(JurisdictionService jurisdictionService) {
		this.jurisdictionService = jurisdictionService;
	}

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
	 * 使用域模型将News_UserJurisdiction放入struts中
	 */
	private News_UserJurisdiction news_UserJurisdiction;
	private News_UserJurisdictionVO news_UserJurisdictionVO;
	private String search = "";
	private int page = 1;

	public News_UserJurisdiction getNews_UserJurisdiction() {
		return news_UserJurisdiction;
	}

	public void setNews_UserJurisdiction(News_UserJurisdiction news_UserJurisdiction) {
		this.news_UserJurisdiction = news_UserJurisdiction;
	}

	public News_UserJurisdictionVO getNews_UserJurisdictionVO() {
		return news_UserJurisdictionVO;
	}

	public void setNews_UserJurisdictionVO(News_UserJurisdictionVO news_UserJurisdictionVO) {
		this.news_UserJurisdictionVO = news_UserJurisdictionVO;
	}

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
	 * 域模型结束
	 */

	/**
	 * detail
	 * 
	 * @test 列表详情
	 * @author LMJ 2018/04/23
	 */
	public String detailAction() {
		if (jurisdictionService.addJurisdiction(news_UserJurisdiction) == 1) {
			return "listJurisdictionInfoByPage";
		} else {
			return "error";
		}
	}

	/**
	 * 分页显示人员信息
	 * 
	 * @author LMJ
	 * @date 2018/04/21
	 * 
	 * 
	 */
	public String listJurisdictionInfoByPageAction() {
		news_UserJurisdictionVO = new News_UserJurisdictionVO();
		news_UserJurisdictionVO.setPageIndex(page);
		news_UserJurisdictionVO.setSearch(search);
		String userId = (String) request.getSession().getAttribute("userId");
		news_UserJurisdictionVO = jurisdictionService.listJurisdictionInfoByPage(userId, news_UserJurisdictionVO);
		return "detail";
	}

	/**
	 * 更新人员信息
	 * 
	 * @return
	 */

	public String UpdateJurisdictionInfoAction() {

		if (jurisdictionService.updateJurisdictionInfo(news_UserJurisdiction) == 1) {
			return "listJurisdictionInfoByPage";
		} else {
			return "error";
		}
	}

	/**
	 * 登录
	 */
	@Override
	public String execute() throws Exception {
		// 验证登录
		News_UserJurisdiction realUser = jurisdictionService.loginUserJurisdiction(news_UserJurisdiction);
		if (realUser != null) {
			// 登录成功
			// 存储到Session中
			request.getSession().setAttribute("realUser", realUser);
			request.getSession().setAttribute("userId", realUser.getUJ_Id());
			return "yemian";
		} else {
			// 登录失败

			return "error";
		}
	}

	/**
	 * 跳转到后台
	 */
	public String yemianAction() {
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

	/**
	 * 登录页面
	 */
	public String loginAction() {
		return "login";
	}
}
