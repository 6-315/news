package com.news.jurisdiction.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.news.jurisdiction.dao.JurisdictionDao;
import com.news.jurisdiction.domain.News_UserJurisdiction;
import com.news.user.domain.UserInfo;

public class JurisdictionDaoImpl implements JurisdictionDao {
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
	public News_UserJurisdiction getNews_UserJurisdiction(News_UserJurisdiction news_UserJurisdiction) {
		Session session = getSession();
		String hql = "from News_UserJurisdiction where UJ_Id =:UJ_Id";
		Query query = session.createQuery(hql);
		query.setParameter("UJ_Id", news_UserJurisdiction.getUJ_Id());
		session.evict(news_UserJurisdiction);
		return news_UserJurisdiction;
	}

	
	/**
	 * 获取登录信息
	 */
	@Override
	public News_UserJurisdiction getLoginUser(News_UserJurisdiction news_UserJurisdiction) {
		Session session = getSession();
		String hql = "from News_UserJurisdiction where UJ_UserName = :name and UJ_UserPassWord = :password";
		Query query = session.createQuery(hql);
		query.setString("name", news_UserJurisdiction.getUJ_UserName());
		query.setString("password", news_UserJurisdiction.getUJ_UserPassWord());
		List<News_UserJurisdiction> list = query.list();
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		return null;
	}
}
