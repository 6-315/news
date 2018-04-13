package com.news.user.dao;

import java.util.List;

import com.news.user.domain.UserInfo;

/**
 * class userdao层的接口
 * 
 * @author 创建 JXX
 * @date 2018/04/12
 * @modify JXX 2018/04/12
 *
 */
public interface UserDao {
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
	 * 根据Id获取对象
	 * 
	 * @param userId
	 * @return
	 */
	public UserInfo getUserInfo(UserInfo userInfo);

}
