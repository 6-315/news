package com.news.user.service.impl;

import com.news.user.dao.UserDao;
import com.news.user.service.UserService;

/**
 * class UserService实现类
 * 
 * @author 创建 JXX
 * @date 2018/4/12
 * @modify JXX 2018/4/12
 *
 */
public class UserServiceImpl implements UserService {
	/**
	 * dao层的注入
	 */
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	/**
	 * 注入结束
	 */

}
