package com.news.link.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.news.link.domain.News_LinkInfo;
import com.news.link.domain.VO.News_LinkInfoCountVO;
import com.news.link.service.LinkManagementService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * class 链接管理
 * 
 * @author JXX
 * @date 2018/04/21
 * @modify 修改 LMJ 18/04/21
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

	/**
	 * 使用域模型将News_LinkInfo对象放置到struts中 LMJ 2018/4/21
	 */
	private News_LinkInfo news_LinkInfo;

	public News_LinkInfo getNews_LinkInfo() {
		return news_LinkInfo;
	}

	public void setNews_LinkInfo(News_LinkInfo news_LinkInfo) {
		this.news_LinkInfo = news_LinkInfo;
	}

	/**
	 * 结束使用域模型News_LinkInfo
	 */

	/**
	 * 使用域模型将News_LinkInfoCountVO 对象放置到struts中 LMJ 2018/4/21
	 */
	private News_LinkInfoCountVO news_LinkInfoCountVO;

	public News_LinkInfoCountVO getNews_LinkInfoCountVO() {
		return news_LinkInfoCountVO;
	}

	public void setNews_LinkInfoCountVO(News_LinkInfoCountVO news_LinkInfoCountVO) {
		this.news_LinkInfoCountVO = news_LinkInfoCountVO;
	}

	/**
	 * 结束
	 */

	/**
	 * 添加search以及page————域模型 LMJ 2018/4/21
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
	 * 通过ID删除信息
	 * 
	 * LMJ 2018/4/21
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
	 * @test 列表详情
	 * @author LMJ 2018/04/23
	 */
	public String detailAction() {
		if (linkManagementService.addLink(news_LinkInfo) == 1) {
			return "listLinkInfoByPage";
		} else {
			return "error";
		}
	}

	/**
	 * 分页显示新闻链接信息
	 * 
	 * @author LMJ
	 * @date 2018/04/21
	 * 
	 * 
	 */
	public String listLinkInfoByPageAction() {
		news_LinkInfoCountVO = new News_LinkInfoCountVO();
		news_LinkInfoCountVO.setPageIndex(page);
		news_LinkInfoCountVO.setSearch(search);
		news_LinkInfoCountVO = linkManagementService.listLinkInfoByPage(news_LinkInfoCountVO);
		return "detail";
	}

	/**
	 * 删除链接
	 * 
	 * @return
	 */
	public String removeLinkAction() {
		news_LinkInfo = new News_LinkInfo();
		news_LinkInfo.setLI_Id(tmpId);
		linkManagementService.removeLink(news_LinkInfo);
		return "listLinkInfoByPage";
	}

	/**
	 * 更新链接
	 * 
	 * @return
	 */

	public String UpdateLinkInfoAction() {
		if (linkManagementService.updateLinkInfo(news_LinkInfo) == 1) {
			return "listLinkInfoByPage";
		} else {
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

}
