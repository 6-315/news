package com.news.user.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.news.navigation.domain.News_TwoNavigationInfo;
import com.news.user.dao.UserDao;
import com.news.user.domain.UserInfo;

/**
 * class UserDao 用户模块Dao实现类
 * 
 * @author 创建 JXX
 * @date 2018/4/12
 * @modify JXX 2018/4/13
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

	/**
	 * 保存、更新对象
	 * 
	 * @author JXX
	 * @date 2018/04/12
	 * @param obj
	 * @modify JXX 2018/04/12
	 */
	@Override
	public void saveOrUpdateObject(Object obj) {
		Session session = getSession();
		session.saveOrUpdate(obj);
		session.flush();
	}

	/**
	 * 分页获取对象，这里是获取一页中的数据
	 * 
	 * @param hql
	 * @param offset
	 *            当前页
	 * @param length
	 *            获取每页记录数
	 * @return
	 */
	@Override
	public List<?> queryForPage(String hql, int offset, int length) {
		Session session = getSession();
		Query query = session.createQuery(hql);
		query.setFirstResult(offset - 1);
		query.setMaxResults(length);
		List<?> list = query.list();
		session.clear();
		return list;
	}

	/**
	 * 获取对象总数量
	 * 
	 * @param hql
	 * @return
	 */
	@Override
	public int getCount(String hql) {
		Session session = getSession();
		Query query = session.createQuery(hql);
		if (query.list().size() > 0) {
			return Integer.parseInt(query.list().get(0).toString());
		} else {
			return 0;
		}
	}

	/**
	 * 移除对象
	 */
	@Override
	public int removeObject(Object obj) {
		getSession().delete(obj);
		return 1;
	}

	// 根据id获取对象
	@Override
	public UserInfo getUserInfo(UserInfo userInfo) {
		Session session = getSession();
		String hql = "from UserInfo where userId = :userId";
		Query query = session.createQuery(hql);
		query.setParameter("userId", userInfo.getUserId());
		session.evict(userInfo);
		return userInfo;
	}

	/**
	 * 获取对象列表
	 */
	@Override
	public List<?> listObject(String hql) {
		Session session = getSession();
		Query query = session.createQuery(hql);
		List<?> list = query.list();
		session.clear();
		return list;
	}

	@Override
	public UserInfo getLoginUserInfo(UserInfo userInfo) {
		Session session = getSession();
		String hql = "from UserInfo where userName = :userName and userPassword = :password";
		Query query = session.createQuery(hql);
		query.setString("userName", userInfo.getUserName());
		query.setString("password", userInfo.getUserPassword());
		List<UserInfo> list = query.list();
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		return null;

	}

}
