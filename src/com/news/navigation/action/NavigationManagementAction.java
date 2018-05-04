package com.news.navigation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.news.navigation.domain.News_OneNavigationInfo;
import com.news.navigation.domain.News_TwoNavigationInfo;
import com.news.navigation.domain.VO.News_NavigationInfoCountVO;
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

	/**
	 * 使用域模型将News_OneNavigationInfo,News_TwoNavigationInfo对象放置到struts中 LMJ
	 * 2018/4/27
	 */

	private News_OneNavigationInfo news_OneNavigationInfo;
	private News_TwoNavigationInfo news_TwoNavigationInfo;

	public News_OneNavigationInfo getNews_OneNavigationInfo() {
		return news_OneNavigationInfo;
	}

	public void setNews_OneNavigationInfo(News_OneNavigationInfo news_OneNavigationInfo) {
		this.news_OneNavigationInfo = news_OneNavigationInfo;
	}

	public News_TwoNavigationInfo getNews_TwoNavigationInfo() {
		return news_TwoNavigationInfo;
	}

	public void setNews_TwoNavigationInfo(News_TwoNavigationInfo news_TwoNavigationInfo) {
		this.news_TwoNavigationInfo = news_TwoNavigationInfo;
	}

	/**
	 * 结束使用域模型
	 */

	/**
	 * 使用域模型将News_NavigationInfoCountVO 对象放置到struts中 LMJ 2018/4/27 更新 LMJ
	 * 2018/4/28
	 */
	private News_NavigationInfoCountVO news_NavigationInfoCountVO;

	public News_NavigationInfoCountVO getNews_NavigationInfoCountVO() {
		return news_NavigationInfoCountVO;
	}

	public void setNews_NavigationInfoCountVO(News_NavigationInfoCountVO news_NavigationInfoCountVO) {
		this.news_NavigationInfoCountVO = news_NavigationInfoCountVO;
	}

	/**
	 * 添加search以及page————域模型 LMJ 2018/4/27
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

	/**
	 * detail
	 * 
	 * @test 一级和二级导航详情
	 * @author LMJ 2018/04/27 更新 LMJ 2018/4/29
	 */
	public String detailOneAction() {
		navigationManagementService.addOneNavigation(news_OneNavigationInfo);
		return "listNavigationInfoByPage";

	}

	public String detailTwoAction() {
		navigationManagementService.addTwoNavigation(news_TwoNavigationInfo);
		return "listNavigationInfoByPage";
	}

	/**
	 * 分页显示导航信息
	 * 
	 * @author LMJ
	 * @date 2018/04/27
	 * 
	 * 
	 */
	public String listNavigationInfoByPageAction() {
		news_NavigationInfoCountVO = new News_NavigationInfoCountVO();
		news_NavigationInfoCountVO.setPageIndex(page);
		news_NavigationInfoCountVO.setSearch(search);
		news_NavigationInfoCountVO = navigationManagementService.listNavigationInfoByPage(news_NavigationInfoCountVO);
		System.out.println(news_NavigationInfoCountVO.getListNews_NavigationInfoCountDTO());
		return "detail";
	}

	/**
	 * 更新一级和二级导航
	 * 
	 * LMJ 2018/4/27 更新 LMJ 2018/4/29
	 */

	public String UpdateOneNavigationInfoAction() {
		navigationManagementService.updateOneNavigation(news_OneNavigationInfo);
		return "listNavigationInfoByPage";

	}

	public String UpdateTwoNavigationInfoAction() {
		navigationManagementService.updateTwoNavigation(news_TwoNavigationInfo);
		return "listNavigationInfoByPage";
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

}
