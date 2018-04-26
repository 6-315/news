package com.news.link.domain.DTO;

import com.news.link.domain.News_LinkInfo;

/**
 * class 新闻链接信息及数量DTO
 * 
 * @author LMJ
 * @date 创建 2018/04/21
 * @modify LMJ 2018/04/21
 *
 */

public class News_LinkInfoCountDTO {
	private News_LinkInfo news_LinkInfo;

	public News_LinkInfo getNews_LinkInfo() {
		return news_LinkInfo;
	}

	public void setNews_LinkInfo(News_LinkInfo news_LinkInfo) {
		this.news_LinkInfo = news_LinkInfo;
	}

	@Override
	public String toString() {
		return "News_LinkInfoCountDTO [news_LinkInfo=" + news_LinkInfo + "]";
	}

}
