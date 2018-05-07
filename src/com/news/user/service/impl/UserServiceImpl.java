package com.news.user.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.news.user.dao.UserDao;
import com.news.user.domain.UserInfo;
import com.news.user.domain.DTO.UserNewsCountDTO;
import com.news.user.domain.VO.UserNewsCountVO;
import com.news.user.service.UserService;

import util.BuildUuid;
import util.TimeUtil;

/**
 * class UserService实现类
 * 
 * @author 创建 JXX
 * @date 2018/4/12
 * @modify JXX 2018/4/13
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

	/**
	 * 添加用户信息
	 * 
	 * @author JXX
	 * @param userInfo
	 * @return 1 成功 -1 失败
	 * @modify JXX 2018/04/12
	 */
	@Override
	public int addUser(UserInfo userInfo) {
		// 设置用户id
		userInfo.setUserId(BuildUuid.getUuid());
		userInfo.setUserCreateTime(TimeUtil.getStringSecond());
		userInfo.setUserModify(TimeUtil.getStringSecond());
		userDao.saveOrUpdateObject(userInfo);
		return 1;
	}

	/**
	 * 分页显示用户信息
	 * 
	 * @author JXX
	 * @date 2018/04/12
	 * @param obj
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@Override
	public UserNewsCountVO listUserInfoByPage(UserNewsCountVO userNewsCountVO) {
		List<UserNewsCountDTO> listUserNewsCountDTO = new ArrayList<>();
		List<UserInfo> listUserInfo = new ArrayList<>();
		UserNewsCountDTO userNewsCountDTO = null;
		// 获取数量
		// 用户数量的hql以及遍历的hql
		String userInfoCountHql = "select count(*) from UserInfo ";
		String listUserNewsCountDTOHql = "from UserInfo ";
		if (userNewsCountVO.getSearch() != null && userNewsCountVO.getSearch().trim().length() > 0) {
			String search = "%" + userNewsCountVO.getSearch().trim() + "%";
			userInfoCountHql = userInfoCountHql + "where userName like '" + search + "' ";
			listUserNewsCountDTOHql = listUserNewsCountDTOHql + "where userName like '" + search + "'";
		}
		// 这里如果不加desc表示正序，如果加上desc表示倒序
		listUserNewsCountDTOHql = listUserNewsCountDTOHql + "order by userCreateTime desc";
		int userInfoCount = userDao.getCount(userInfoCountHql);
		// 设置总数量
		userNewsCountVO.setTotalRecords(userInfoCount);
		// 设置总页数
		userNewsCountVO.setTotalPages(((userInfoCount - 1) / userNewsCountVO.getPageSize()) + 1);
		// 判断是否拥有上一页
		if (userNewsCountVO.getPageIndex() <= 1) {
			userNewsCountVO.setHavePrePage(false);
		} else {
			userNewsCountVO.setHavePrePage(true);
		}
		// 判断是否拥有下一页
		if (userNewsCountVO.getPageIndex() >= userNewsCountVO.getTotalPages()) {
			userNewsCountVO.setHaveNextPage(false);
		} else {
			userNewsCountVO.setHaveNextPage(true);
		}
		// 获取若干条DTO信息
		listUserInfo = (List<UserInfo>) userDao.queryForPage(listUserNewsCountDTOHql, userNewsCountVO.getPageIndex(),
				userNewsCountVO.getPageSize());
		// 遍历当前的信息并且组合生成DTO
		for (UserInfo userInfo : listUserInfo) {
			userNewsCountDTO = new UserNewsCountDTO();
			// 根据用户id获取所拥有的新闻数量并组合进DTO中
			String newsCount = "from NewsInfo where newsBelong = '+userInfo.getUserId()+'";
			userNewsCountDTO.setNewsCount(userDao.getCount(newsCount));
			if (userNewsCountVO.getSearch() != null && userNewsCountVO.getSearch().trim().length() > 0) {
				userInfo.setUserName(userInfo.getUserName().replaceAll(userNewsCountVO.getSearch(),
						"<mark>" + userNewsCountVO.getSearch() + "</mark>"));
			}
			userNewsCountDTO.setUserInfo(userInfo);
			listUserNewsCountDTO.add(userNewsCountDTO);
		}
		userNewsCountVO.setListUserNewsCountDTO(listUserNewsCountDTO);
		return userNewsCountVO;
	}

	/**
	 * 删除用户
	 * 
	 * @author JXX
	 * @date 2018/04/13
	 * @param userInfo
	 */
	@Override
	public int removeUser(UserInfo userInfo) {
		return userDao.removeObject(userInfo);
	}

	/**
	 * 更改用户
	 */
	@Override
	public int updateUser(UserInfo userInfo) {
		UserInfo updateUserInfo = new UserInfo();
		updateUserInfo = (UserInfo) userDao.getUserInfo(userInfo);
		updateUserInfo.setUserName(userInfo.getUserName());
		updateUserInfo.setUserPassword(userInfo.getUserPassword());
		userDao.saveOrUpdateObject(updateUserInfo);
		return 1;
	}

	@Override
	public  UserInfo loginUser(UserInfo userInfo) {	
		return userDao.getLoginUserInfo(userInfo);
	}
}
