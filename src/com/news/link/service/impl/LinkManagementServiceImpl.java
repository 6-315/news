package com.news.link.service.impl;

import com.news.link.dao.LinkManagementDao;
import com.news.link.service.LinkManagementService;

/**
 * class 链接管理
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify JXX 2018/04/18
 *
 */
public class LinkManagementServiceImpl implements LinkManagementService {
	/**
	 * dao层注入
	 */
	private LinkManagementDao linkManagementDao;

	public LinkManagementDao getLinkManagementDao() {
		return linkManagementDao;
	}

	public void setLinkManagementDao(LinkManagementDao linkManagementDao) {
		this.linkManagementDao = linkManagementDao;
	}
	/**
	 * 注入结束
	 */
	
	
	
}
