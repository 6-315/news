package com.news.newsinfo.domain.DTO;

import java.util.List;

import com.news.navigation.domain.News_TwoNavigationInfo;
import com.news.newsinfo.domain.News_NewsInfo;

public class SelectAllDTO {
	
	private News_TwoNavigationInfo news_TwoNavigationInfo;
	private List< News_NewsInfo> news_NewsInfo;
	public News_TwoNavigationInfo getNews_TwoNavigationInfo() {
		return news_TwoNavigationInfo;
	}
	public void setNews_TwoNavigationInfo(News_TwoNavigationInfo news_TwoNavigationInfo) {
		this.news_TwoNavigationInfo = news_TwoNavigationInfo;
	}
	public List<News_NewsInfo> getNews_NewsInfo() {
		return news_NewsInfo;
	}
	public void setNews_NewsInfo(List<News_NewsInfo> news_NewsInfo) {
		this.news_NewsInfo = news_NewsInfo;
	}
	@Override
	public String toString() {
		return "SelectAllDTO [news_TwoNavigationInfo=" + news_TwoNavigationInfo + ", news_NewsInfo=" + news_NewsInfo
				+ "]";
	}
	
	
	
	
	

}
