package com.news.user.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.news.user.dao.UserDao;

/**
 * class UserDao 用户模块Dao实现类
 * 
 * @author 创建 JXX
 * @date 2018/4/12
 * @modify JXX 2018/4/12
 *
 */
public class UserDaoImpl implements UserDao {
	/**
	 * session注入
	 */
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	/**
	 * session注入结束
	 */
	
}
