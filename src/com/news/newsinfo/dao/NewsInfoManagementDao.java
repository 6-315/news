package com.news.newsinfo.dao;

import java.util.List;

import com.news.navigation.domain.News_TwoNavigationInfo;
import com.news.newsinfo.domain.News_Content;
import com.news.newsinfo.domain.News_NewsInfo;

/**
 * interface 新闻管理
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify JXX 2018/04/18
 *
 */
public interface NewsInfoManagementDao {
	/**
	 * 保存、更新对象
	 * 
	 * @author JXX
	 * @date 2018/04/12
	 * @param obj
	 * @modify JXX 2018/04/12
	 */
	public void saveOrUpdateObject(Object obj);

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
	public List<?> queryForPage(String hql, int offset, int length);

	/**
	 * 获取对象总数量
	 * 
	 * @param hql
	 * @return
	 */
	public int getCount(String hql);

	/**
	 * 删除对象记录
	 * 
	 * @param obj
	 */
	public int removeObject(Object obj);

	/**
	 * 获取对象列表
	 */
	public List<?> listObject(String hql);

	public News_TwoNavigationInfo getnews(String trim);

	public News_NewsInfo getnew(String trim);

	public News_NewsInfo getinfo(String ni_Content);

	public News_Content getContent(String ni_Content);

}
