package com.news.carousel.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.aspectj.util.FileUtil;

import com.news.carousel.domain.News_CarouselInfo;
import com.news.carousel.domain.DTO.NcAllDTO;
import com.news.carousel.domain.DTO.NewsCarouselDTO;
import com.news.carousel.service.CarouselManagementService;
import com.news.newsinfo.domain.News_NewsInfo;
import com.opensymphony.xwork2.ActionSupport;

import util.BuildUuid;

/**
 * class 轮播图管理
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify JXX 2018/04/18
 *
 */
public class CarouselManagementAction extends ActionSupport implements ServletResponseAware, ServletRequestAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * service 层注入
	 */
	private CarouselManagementService carouselManagementService;

	/**
	 * 
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
	 * 使用域模型将News_CarouselInfo对象放置到struts中
	 */

	private News_CarouselInfo news_CarouselInfo;

	public News_CarouselInfo getNews_CarouselInfo() {
		return news_CarouselInfo;
	}

	public void setNews_CarouselInfo(News_CarouselInfo news_CarouselInfo) {
		this.news_CarouselInfo = news_CarouselInfo;
	}

	public String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	/**
	 * 结束使用域模型User Info
	 *
	 */
	private List<News_NewsInfo> listNews;

	public List<News_NewsInfo> getListNews() {
		return listNews;
	}

	public void setListNews(List<News_NewsInfo> listNews) {
		this.listNews = listNews;
	}

	/**
	 * 使用域模型newsCarouselDTO
	 * 
	 */
	private List<NewsCarouselDTO> listNewsCarouselDTO;
	/**
	 * 结束
	 */

	/**
	 * 
	 * 使用域模型private List<News_CarouselInfo> ListNews_CarouselInfol;
	 * 
	 * 
	 */
	private List<News_CarouselInfo> ListNews_CarouselInfol;

	/**
	 * 
	 * 结束
	 * 
	 * 
	 */

	public List<News_CarouselInfo> getListNews_CarouselInfol() {
		return ListNews_CarouselInfol;
	}

	public void setListNews_CarouselInfol(List<News_CarouselInfo> listNews_CarouselInfol) {
		ListNews_CarouselInfol = listNews_CarouselInfol;
	}

	/**
	 * 
	 * 
	 * 
	 *
	 * 使用域模型NcAllDTO
	 * 
	 */

	/**
	 * 
	 * 结束
	 */
	/**
	 * 文件上传
	 */
	private File myfile;
	private String myfileFileName;
	private String myfileContentType;

	/**
	 * 跳转到轮播管理
	 */

	/**
	 * 结束
	 * 
	 * @return
	 */
	public String lunboguanliAction() {
		System.out.println("9999999");
		return "lunboguanli";
	}

	/**
	 * 添加轮播图
	 * 
	 * @return
	 */
	// 添加轮播图
	public String detailAction() {
		if (news_CarouselInfo.getCI_BelongNews() == null) {
			setMessage("NO Title");
			return "save";
		}
		if (myfileFileName == null) {
			setMessage("error");
			return "save";
		}

		String path = "C://news/";
		path = path + "carousel/img/";
		String fileName = BuildUuid.getUuid() + "_" + myfileFileName;
		File file = new File(path + fileName);
		try {
			news_CarouselInfo.setCI_Img(fileName);
			news_CarouselInfo.setCI_IsDelete("1");
			carouselManagementService.addCarousel(news_CarouselInfo);
			FileUtil.copyFile(myfile, file);
		} catch (IOException e) {
			e.printStackTrace();
		}
		setMessage("success");
		return "save";
	}

	// 查看轮播图信息可以拿到ID
	public String selectAction() {
		// ListNews_CarouselInfol =
		// carouselManagementService.ListNews_CarouselInfol();
		listNewsCarouselDTO = carouselManagementService.listNewsCarouselDTO();
		listNews = carouselManagementService.getCarouselNews();
		return "listCarousel";
	}
	public String selectAction2() {
		// ListNews_CarouselInfol =
		// carouselManagementService.ListNews_CarouselInfol();
		listNewsCarouselDTO = carouselManagementService.listNewsCarouselDTO();
		listNews = carouselManagementService.getCarouselNews();
		return "123";
	}

	/**
	 * update
	 * 
	 */
	// 修改图片
	public String updateAction() {
		System.out.println(news_CarouselInfo);
		carouselManagementService.update(news_CarouselInfo);
		return "update";
	}

	// 删除
	public String deleteAction() {
		System.out.println("pppp" + news_CarouselInfo);
		news_CarouselInfo.setCI_IsDelete("-1");
		carouselManagementService.delete(news_CarouselInfo);
		setMessage("shanchu");
		return "delete";
	}

	/**
	 * 
	 */
	public CarouselManagementService getCarouselManagementService() {
		return carouselManagementService;
	}

	public void setCarouselManagementService(CarouselManagementService carouselManagementService) {
		this.carouselManagementService = carouselManagementService;
	}

	public List<NewsCarouselDTO> getListNewsCarouselDTO() {
		return listNewsCarouselDTO;
	}

	public void setListNewsCarouselDTO(List<NewsCarouselDTO> listNewsCarouselDTO) {
		this.listNewsCarouselDTO = listNewsCarouselDTO;
	}

	public File getMyfile() {
		return myfile;
	}

	public void setMyfile(File myfile) {
		this.myfile = myfile;
	}

	public String getMyfileFileName() {
		return myfileFileName;
	}

	public void setMyfileFileName(String myfileFileName) {
		this.myfileFileName = myfileFileName;
	}

	public String getMyfileContentType() {
		return myfileContentType;
	}

	public void setMyfileContentType(String myfileContentType) {
		this.myfileContentType = myfileContentType;
	}
}
