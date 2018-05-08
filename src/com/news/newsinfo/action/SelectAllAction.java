package com.news.newsinfo.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.news.newsinfo.domain.News_NewsInfo;
import com.news.newsinfo.domain.DTO.NewsinfoDTO;
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
	private NewsinfoDTO newsinfoDTO;
	private News_NewsInfo news;

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

	public NewsinfoDTO getNewsinfoDTO() {
		return newsinfoDTO;
	}

	public void setNewsinfoDTO(NewsinfoDTO newsinfoDTO) {
		this.newsinfoDTO = newsinfoDTO;
	}

	// 查找二级栏目下的所有新闻
	public String SelectNewsAction() {
		listSelectAllDTO = newsInfoManagementService.listSelectAllDTO();
		System.out.println(listSelectAllDTO);
		return "";
	}

	// 查找详细新闻，根据新闻ID
	public String exactAction() {
		newsinfoDTO = newsInfoManagementService.getExact(news.getNI_Id());
		return "ok";
	}

	/**
	 * 结束
	 */

}
