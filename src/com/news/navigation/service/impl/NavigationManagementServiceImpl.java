package com.news.navigation.service.impl;

import com.news.navigation.dao.NavigationManagementDao;
import com.news.navigation.service.NavigationManagementService;

/**
 * class 轮播图管理
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify JXX 2018/04/18
 *
 */
public class NavigationManagementServiceImpl implements NavigationManagementService {
	/**
	 * dao层注入
	 */
	private NavigationManagementDao navigationManagementDao;

	public NavigationManagementDao getNavigationManagementDao() {
		return navigationManagementDao;
	}

	public void setNavigationManagementDao(NavigationManagementDao navigationManagementDao) {
		this.navigationManagementDao = navigationManagementDao;
	}

}
