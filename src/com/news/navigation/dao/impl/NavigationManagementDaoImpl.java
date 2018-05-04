package com.news.navigation.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.news.navigation.dao.NavigationManagementDao;
import com.news.navigation.domain.News_OneNavigationInfo;
import com.news.navigation.domain.News_TwoNavigationInfo;
import com.news.newsinfo.domain.News_NewsInfo;

/**
 * class 轮播图管理
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify JXX 2018/04/18
 *
 */
public class NavigationManagementDaoImpl implements NavigationManagementDao {
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
		query.setFirstResult((offset - 1) * length);
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
	public News_TwoNavigationInfo getNews_TwoNavigationInfo(String trim) {
		News_TwoNavigationInfo two = new News_TwoNavigationInfo();
		Session session = getSession();
		String hql = "from News_TwoNavigationInfo where TNI_Id = :newsId";
		Query query = session.createQuery(hql);
		query.setParameter("newsId", trim);
		two = (News_TwoNavigationInfo) query.uniqueResult();
		return two;
	}

	@Override
	public News_OneNavigationInfo getNews_OneNavigationInfo(String trim) {
		News_OneNavigationInfo one = new News_OneNavigationInfo();
		Session session = getSession();
		String hql = "from News_OneNavigationInfo where ONI_Id = :newsId";
		Query query = session.createQuery(hql);
		query.setParameter("newsId", trim);
		one = (News_OneNavigationInfo) query.uniqueResult();
		return one;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<News_TwoNavigationInfo> getlistNews_TwoNavigationInfo(String trim) {
		Object listNews_TwoNavigationInfo = new ArrayList<>();
		Session session = getSession();
		String hql = "from News_TwoNavigationInfo where TNI_BelongOneNavigator = :newsId and TNI_IsDelete = '1' ";
		Query query = session.createQuery(hql);
		query.setParameter("newsId", trim);
		listNews_TwoNavigationInfo = query.list();
		return (List<News_TwoNavigationInfo>) listNews_TwoNavigationInfo;
	}
}
