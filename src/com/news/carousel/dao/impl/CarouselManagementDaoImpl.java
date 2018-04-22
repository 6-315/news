package com.news.carousel.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.news.carousel.dao.CarouselManagementDao;
import com.news.newsinfo.domain.News_NewsInfo;

/**
 * class 轮播图管理
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify JXX 2018/04/18
 *
 */
public class CarouselManagementDaoImpl implements CarouselManagementDao {
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

	/**
	 * 
	 */
	@Override
	public News_NewsInfo getNewsInfoById(String newsInfoId) {
		News_NewsInfo newsInfo = new News_NewsInfo();
		Session session = getSession();
		String hql = "from News_NewsInfo where NI_Id = :newsId";
		Query query = session.createQuery(hql);
		query.setParameter("newsId", newsInfoId);
		newsInfo = (News_NewsInfo) query.uniqueResult();
		return newsInfo;
	}
}
