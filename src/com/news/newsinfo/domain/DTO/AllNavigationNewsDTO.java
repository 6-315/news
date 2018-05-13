package com.news.newsinfo.domain.DTO;

import java.util.List;

import com.news.navigation.domain.News_TwoNavigationInfo;

/**
 * @author LW
 * 
 *         class 实现获取所有栏目下所有的新闻
 * 
 * 
 */
public class AllNavigationNewsDTO {
	private News_TwoNavigationInfo news_TwoNavigationInfo;

	private List<NewsDTO> listNewsDTO;

	public News_TwoNavigationInfo getNews_TwoNavigationInfo() {
		return news_TwoNavigationInfo;
	}

	public void setNews_TwoNavigationInfo(News_TwoNavigationInfo news_TwoNavigationInfo) {
		this.news_TwoNavigationInfo = news_TwoNavigationInfo;
	}

	public List<NewsDTO> getListNewsDTO() {
		return listNewsDTO;
	}

	public void setListNewsDTO(List<NewsDTO> listNewsDTO) {
		this.listNewsDTO = listNewsDTO;
	}

	@Override
	public String toString() {
		return "NewsinfoDTO [news_TwoNavigationInfo=" + news_TwoNavigationInfo + ", listNewsDTO=" + listNewsDTO + "]";
	}

}
