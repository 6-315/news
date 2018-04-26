
package com.news.carousel.domain.DTO;

import com.news.carousel.domain.News_CarouselInfo;
import com.news.newsinfo.domain.News_NewsInfo;

/**
 * class 轮播图管理DTO
 * 
 * @author LW
 * @date 创建 2018/04/21
 * @modify LW 2018/04/21
 *
 */
public class NewsCarouselDTO {
	private News_CarouselInfo newsCarouselInfo;
	private News_NewsInfo newsInfo;

	public News_CarouselInfo getNewsCarouselInfo() {
		return newsCarouselInfo;
	}

	public void setNewsCarouselInfo(News_CarouselInfo newsCarouselInfo) {
		this.newsCarouselInfo = newsCarouselInfo;
	}

	public News_NewsInfo getNewsInfo() {
		return newsInfo;
	}

	public void setNewsInfo(News_NewsInfo newsInfo) {
		this.newsInfo = newsInfo;
	}

	@Override
	public String toString() {
		return "newsCarouselDTO [newsCarouselInfo=" + newsCarouselInfo + ", newsInfo=" + newsInfo + "]";
	}

}
