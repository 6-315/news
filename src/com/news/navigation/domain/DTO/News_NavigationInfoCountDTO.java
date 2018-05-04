package com.news.navigation.domain.DTO;

import java.util.List;

import com.news.navigation.domain.News_OneNavigationInfo;
import com.news.navigation.domain.News_TwoNavigationInfo;

/**
 * class 一级导航信息及数量DTO
 * 
 * @author LMJ
 * @date 创建 2018/04/27
 * @modify LMJ 2018/04/27
 *
 */

public class News_NavigationInfoCountDTO {
	private News_OneNavigationInfo news_OneNavigationInfo;
	private List<News_TwoNavigationInfo> news_TwoNavigationInfo;
	

	public List<News_TwoNavigationInfo> getNews_TwoNavigationInfo() {
		return news_TwoNavigationInfo;
	}

	public void setNews_TwoNavigationInfo(List<News_TwoNavigationInfo> two) {
		this.news_TwoNavigationInfo = two;
	}

	public News_OneNavigationInfo getNews_OneNavigationInfo() {
		return news_OneNavigationInfo;
	}

	public void setNews_OneNavigationInfo(News_OneNavigationInfo news_OneNavigationInfo) {
		this.news_OneNavigationInfo = news_OneNavigationInfo;
	}

	@Override
	public String toString() {
		return "News_OneNavigationInfoCountDTO [news_OneNavigationInfo=" + news_OneNavigationInfo
				+ ", news_TwoNavigationInfo=" + news_TwoNavigationInfo + "]";
	}

	

}
