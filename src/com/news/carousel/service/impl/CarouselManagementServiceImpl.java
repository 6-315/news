package com.news.carousel.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.news.carousel.dao.CarouselManagementDao;
import com.news.carousel.domain.News_CarouselInfo;
import com.news.carousel.domain.DTO.NcAllDTO;
import com.news.carousel.domain.DTO.NewsCarouselDTO;
import com.news.carousel.service.CarouselManagementService;
import com.news.newsinfo.domain.News_NewsInfo;

import util.BuildUuid;
import util.TimeUtil;

/**
 * class 轮播图管理
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify JXX 2018/04/18
 *
 */
public class CarouselManagementServiceImpl implements CarouselManagementService {
	/**
	 * dao层注入
	 */
	private CarouselManagementDao carouselManagementDao;

	public CarouselManagementDao getCarouselManagementDao() {
		return carouselManagementDao;
	}

	public void setCarouselManagementDao(CarouselManagementDao carouselManagementDao) {
		this.carouselManagementDao = carouselManagementDao;
	}

	@Override
	public void addCarousel(News_CarouselInfo news_CarouselInfo) {
		// TODO Auto-generated method stub
		news_CarouselInfo.setCI_Id(BuildUuid.getUuid());
		news_CarouselInfo.setCI_CreateTime(TimeUtil.getStringSecond());
		news_CarouselInfo.setCI_ModifyTime(TimeUtil.getStringSecond());
		carouselManagementDao.saveOrUpdateObject(news_CarouselInfo);
	}

	/**
	 * 
	 */
	@Override
	public List<NewsCarouselDTO> listNewsCarouselDTO() {
		List<NewsCarouselDTO> listNewsCarouselDTO = new ArrayList<>();
		List<News_CarouselInfo> listNewsCarouselInfo = new ArrayList<>();
		News_NewsInfo newsInfo;
		NewsCarouselDTO newsCarouselDTO;
		listNewsCarouselInfo = (List<News_CarouselInfo>) carouselManagementDao.listObject("from News_CarouselInfo");
		for (News_CarouselInfo news_CarouselInfo : listNewsCarouselInfo) {
			newsInfo = new News_NewsInfo();
			newsCarouselDTO = new NewsCarouselDTO();
			if (news_CarouselInfo.getCI_BelongNews() != null
					&& news_CarouselInfo.getCI_BelongNews().trim().length() > 0) {
				newsInfo = carouselManagementDao.getNewsInfoById(news_CarouselInfo.getCI_BelongNews().trim());
				if (newsInfo != null) {
					newsCarouselDTO.setNewsInfo(newsInfo);
				}
			}
			newsCarouselDTO.setNewsCarouselInfo(news_CarouselInfo);
			listNewsCarouselDTO.add(newsCarouselDTO);
		}
		return listNewsCarouselDTO;
	}

	@Override
	public List<News_NewsInfo> getCarouselNews() {
		List<News_NewsInfo> listNews;
		listNews = (List<News_NewsInfo>) carouselManagementDao
				.listObject("from News_NewsInfo where NI_IsCarousel = - 1");
		return listNews;
	}

	/**
	 * 
	 * 这个是轮播图 的信息
	 */
	@Override
	public List<News_CarouselInfo> ListNews_CarouselInfol() {
		return null;
	}

	/**
	 * 
	 */
	@Override
	public List<NcAllDTO> listNcAllDTO() {
		return null;
	}

}
