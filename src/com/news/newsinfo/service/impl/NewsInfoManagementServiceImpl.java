package com.news.newsinfo.service.impl;

import com.news.newsinfo.dao.NewsInfoManagementDao;
import com.news.newsinfo.service.NewsInfoManagementService;

/**
 * class 新闻管理
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify JXX 2018/04/18
 *
 */
public class NewsInfoManagementServiceImpl implements NewsInfoManagementService {
	/**
	 * dao层注入
	 */
	private NewsInfoManagementDao newsInfoManagementDao;

	public NewsInfoManagementDao getNewsInfoManagementDao() {
		return newsInfoManagementDao;
	}

	public void setNewsInfoManagementDao(NewsInfoManagementDao newsInfoManagementDao) {
		this.newsInfoManagementDao = newsInfoManagementDao;
	}

}
