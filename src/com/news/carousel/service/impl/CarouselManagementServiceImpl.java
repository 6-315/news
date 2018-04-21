package com.news.carousel.service.impl;

import com.news.carousel.dao.CarouselManagementDao;
import com.news.carousel.service.CarouselManagementService;

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

}
