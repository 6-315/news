package com.news.newsinfo.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.news.navigation.domain.News_TwoNavigationInfo;
import com.news.newsinfo.domain.News_NewsInfo;
import com.news.newsinfo.domain.DTO.AllNavigationNewsDTO;
import com.news.newsinfo.domain.DTO.NewsDTO;
import com.news.newsinfo.domain.DTO.SelectAllDTO;
import com.news.newsinfo.service.NewsInfoManagementService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * @author LW date :2018/4/28
 *
 */

public class SelectAllAction extends ActionSupport implements ServletResponseAware, ServletRequestAware {

	/**
	 * 查找所有标签下的所有新闻
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

	/**
	 * 使用域模型SelectAllDTO
	 */
	private List<SelectAllDTO> listSelectAllDTO;
	private SelectAllDTO selectAllDTO;
	private NewsDTO newsinfoDTO;
	private News_NewsInfo news;
	private News_TwoNavigationInfo newsTwoNavigationInfo;
	private List<News_NewsInfo> listNews;
	private List<AllNavigationNewsDTO> allNavigationNewsDTO;

	public News_TwoNavigationInfo getNewsTwoNavigationInfo() {
		return newsTwoNavigationInfo;
	}

	public void setNewsTwoNavigationInfo(News_TwoNavigationInfo newsTwoNavigationInfo) {
		this.newsTwoNavigationInfo = newsTwoNavigationInfo;
	}

	public List<AllNavigationNewsDTO> getAllNavigationNewsDTO() {
		return allNavigationNewsDTO;
	}

	public void setAllNavigationNewsDTO(List<AllNavigationNewsDTO> allNavigationNewsDTO) {
		this.allNavigationNewsDTO = allNavigationNewsDTO;
	}

	public List<News_NewsInfo> getListNews() {
		return listNews;
	}

	public void setListNews(List<News_NewsInfo> listNews) {
		this.listNews = listNews;
	}

	public List<SelectAllDTO> getListSelectAllDTO() {
		return listSelectAllDTO;
	}

	public News_NewsInfo getNews() {
		return news;
	}

	public void setNews(News_NewsInfo news) {
		this.news = news;
	}

	public void setListSelectAllDTO(List<SelectAllDTO> listSelectAllDTO) {
		this.listSelectAllDTO = listSelectAllDTO;
	}

	public NewsDTO getNewsinfoDTO() {
		return newsinfoDTO;
	}

	public void setNewsinfoDTO(NewsDTO newsinfoDTO) {
		this.newsinfoDTO = newsinfoDTO;
	}

	// 查找二级栏目下的所有新闻
	public String SelectNewsAction() {
		//listSelectAllDTO = newsInfoManagementService.listSelectAllDTO();
		System.out.println(listSelectAllDTO);
		return "";
	}

	// 查找详细新闻，根据新闻ID（后台使用）
	public String exactAction() {
		newsinfoDTO = newsInfoManagementService.getExact(news.getNI_Id());
		return "ok";
	}
	
	// 查找详细新闻，根据新闻ID（首页使用）
	public String exact2Action() {
		System.out.println("QQQQQQQQQ"+newsTwoNavigationInfo.getTNI_Id());
		listSelectAllDTO = newsInfoManagementService.listSelectAllDTO(newsTwoNavigationInfo.getTNI_Id());
		//selectAllDTO = newsInfoManagementService.getOneDTO(newsTwoNavigationInfo.getTNI_Id());
		newsinfoDTO = newsInfoManagementService.getExact(news.getNI_Id());
		return "ok2";
	}

	// 查找所有新闻还有新闻的详细内容
	public String allNewsAction() {
		/**
		 * 拿到所有新闻及其内容
		 */
		allNavigationNewsDTO = newsInfoManagementService.getExact();
		return "allNews";
	}

}
