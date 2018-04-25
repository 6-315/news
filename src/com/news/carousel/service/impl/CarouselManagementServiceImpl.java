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
		listNewsCarouselInfo = (List<News_CarouselInfo>) carouselManagementDao.listObject("from News_CarouselInfo where CI_IsDelete = '1' order by CI_ModifyTime desc");
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

	@Override
	public int update(News_CarouselInfo news_CarouselInfo) {
		News_CarouselInfo update = new News_CarouselInfo();
		update.setCI_BelongNews(news_CarouselInfo.getCI_BelongNews());
		update.setCI_CreateTime(news_CarouselInfo.getCI_CreateTime());
		update.setCI_Id(news_CarouselInfo.getCI_Id());
		update.setCI_Img(news_CarouselInfo.getCI_Img());
		update.setCI_IsShow(news_CarouselInfo.getCI_IsShow());
		update.setCI_IsDelete(news_CarouselInfo.getCI_IsDelete());
		update.setCI_ModifyTime(TimeUtil.getStringSecond());
		carouselManagementDao.saveOrUpdateObject(update);
		return 1;
	}

	@Override
	public int delete(News_CarouselInfo news_CarouselInfo) {
		News_CarouselInfo delete = new News_CarouselInfo();
		delete.setCI_BelongNews(news_CarouselInfo.getCI_BelongNews());
		delete.setCI_CreateTime(news_CarouselInfo.getCI_CreateTime());
		delete.setCI_Id(news_CarouselInfo.getCI_Id());
		delete.setCI_Img(news_CarouselInfo.getCI_Img());
		delete.setCI_IsShow(news_CarouselInfo.getCI_IsShow());
		delete.setCI_IsDelete(news_CarouselInfo.getCI_IsDelete());
		delete.setCI_ModifyTime(TimeUtil.getStringSecond());
		carouselManagementDao.saveOrUpdateObject(delete);
		
		return 1;
	}
}
