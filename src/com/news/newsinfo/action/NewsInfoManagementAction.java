package com.news.newsinfo.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.aspectj.util.FileUtil;

import com.news.navigation.domain.News_TwoNavigationInfo;
import com.news.newsinfo.domain.News_Content;
import com.news.newsinfo.domain.News_NewsInfo;
import com.news.newsinfo.domain.DTO.NewsinfoDTO;
import com.news.newsinfo.domain.VO.NewsinfoVO;
import com.news.newsinfo.service.NewsInfoManagementService;
import com.opensymphony.xwork2.ActionSupport;

import util.BuildUuid;

/**
 * class 新闻管理
 * 
 * @author LW
 * @date 2018/04/18
 * @modify JXX 2018/04/29
 *
 */
public class NewsInfoManagementAction extends ActionSupport implements ServletResponseAware, ServletRequestAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private NewsInfoManagementService newsInfoManagementService;

	public NewsInfoManagementService getNewsInfoManagementService() {
		return newsInfoManagementService;
	}

	public void setNewsInfoManagementService(NewsInfoManagementService newsInfoManagementService) {
		this.newsInfoManagementService = newsInfoManagementService;
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

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public News_NewsInfo getNews_NewsInfo() {
		return news_NewsInfo;
	}

	public void setNews_NewsInfo(News_NewsInfo news_NewsInfo) {
		this.news_NewsInfo = news_NewsInfo;
	}

	public News_Content getNews_Content() {
		return news_Content;
	}

	public void setNews_Content(News_Content news_Content) {
		this.news_Content = news_Content;
	}

	public List<News_NewsInfo> getListNews() {
		return listNews;
	}

	public void setListNews(List<News_NewsInfo> listNews) {
		this.listNews = listNews;
	}

	public List<News_TwoNavigationInfo> getListNavigation() {
		return listNavigation;
	}

	public void setListNavigation(List<News_TwoNavigationInfo> listNavigation) {
		this.listNavigation = listNavigation;
	}

	public NewsinfoVO getNewsinfoVO() {
		return newsinfoVO;
	}

	public void setNewsinfoVO(NewsinfoVO newsinfoVO) {
		this.newsinfoVO = newsinfoVO;
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
	/**
	 * 使用域模型News_NewsInfo
	 */
	private News_NewsInfo news_NewsInfo;
	private News_Content news_Content;
	private List<News_NewsInfo> listNews;
	private List<News_TwoNavigationInfo> listNavigation;
	private NewsinfoVO newsinfoVO;
	private int page = 1;

	/**
	 * 结束
	 * 
	 */
	/**
	 * 结束
	 * 
	 * @return
	 */
	//保存的action
	public String savaAction() {
		news_NewsInfo.setNI_IsDelete("1");
		news_NewsInfo.setNI_IsShow("-1");
		news_NewsInfo.setNI_IsRecommend("1");
		news_NewsInfo.setNI_IsCarousel("1");
		news_NewsInfo.setNI_BrowserCount("0");

		newsInfoManagementService.addInfo(news_Content, news_NewsInfo);
		return "sava";
	}
//查看二级菜单并且进入添加新闻
	public String selectAction() {
		listNavigation = newsInfoManagementService.getNavigation();
		setMessage("success");
		return "popo";
	}
//管理新闻
	public String manageAction() {
		newsinfoVO = new NewsinfoVO();
		newsinfoVO.setPageIndex(page);//
		newsinfoVO.getSearch();
		newsinfoVO = newsInfoManagementService.getNews2(newsinfoVO);
		// listNews = newsInfoManagementService.getNews();
		return "manage";

	}
//删除
	public String deleteAction() {
		news_NewsInfo.setNI_IsDelete("-1");
		newsInfoManagementService.delete(news_NewsInfo);
		return "delete";
	}
//修改
	public String updateAction() {
		newsInfoManagementService.update(news_NewsInfo);
		return "update";
	}
}
