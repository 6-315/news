package com.news.carousel.service;

import java.util.List;

import com.news.carousel.domain.News_CarouselInfo;
import com.news.carousel.domain.DTO.NcAllDTO;
import com.news.carousel.domain.DTO.NewsCarouselDTO;
import com.news.newsinfo.domain.News_NewsInfo;

/**
 * class
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify JXX 2018/04/18
 *
 */
public interface CarouselManagementService {

	/**
	 * 添加轮播图名称
	 * @param news_CarouselInfo
	 */
	public void addCarousel(News_CarouselInfo news_CarouselInfo);

	/**
	 * 添加
	 * @return
	 */
	public List<NewsCarouselDTO> listNewsCarouselDTO();
	/**
	 * 
	 * @return
	 */
	public List<News_NewsInfo> getCarouselNews();

	public List<NcAllDTO> listNcAllDTO();

	public List<News_CarouselInfo> ListNews_CarouselInfol();

	public int update(News_CarouselInfo news_CarouselInfo);

	public int delete(News_CarouselInfo news_CarouselInfo);

}
