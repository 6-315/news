package com.news.newsinfo.domain.DTO;

import com.news.newsinfo.domain.News_Content;
import com.news.newsinfo.domain.News_NewsInfo;

/**
 * 
 * 
 * 
 * @author LW
 *
 */
public class NewsinfoDTO {
 private News_Content news_Content;
 
 private News_NewsInfo news_NewsInfo;

public News_Content getNews_Content() {
	return news_Content;
}

public void setNews_Content(News_Content news_Content) {
	this.news_Content = news_Content;
}

public News_NewsInfo getNews_NewsInfo() {
	return news_NewsInfo;
}

public void setNews_NewsInfo(News_NewsInfo news_NewsInfo) {
	this.news_NewsInfo = news_NewsInfo;
}

@Override
public String toString() {
	return "newsinfoDTO [news_Content=" + news_Content + ", news_NewsInfo=" + news_NewsInfo + "]";
}
 
}
