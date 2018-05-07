package com.news.user.service;

import java.util.List;

import com.news.user.domain.UserInfo;
import com.news.user.domain.VO.UserNewsCountVO;

/**
 * interface UserService接口
 * 
 * @author JXX
 * @date 2018/4/12
 * @modify JXX 2018/4/13
 *
 */
public interface UserService {
	/**
	 * 添加用户信息
	 * 
	 * @author JXX
	 * @param userInfo
	 * @return 1 成功 -1 失败
	 * @modify JXX 2018/04/12
	 */
	public int addUser(UserInfo userInfo);

	/**
	 * 分页显示用户信息
	 * 
	 * @author JXX
	 * @date 2018/04/12
	 * @param obj
	 * @return
	 */
	public UserNewsCountVO listUserInfoByPage(UserNewsCountVO userNewsCountVO);

	/**
	 * 删除用户
	 * 
	 * @author JXX
	 * @date 2018/04/13
	 * @param userInfo
	 * @return 1 success -1 失败
	 */
	public int removeUser(UserInfo userInfo);

	/**
	 * 更改用户 * @author JXX
	 * 
	 * @date 2018/04/13
	 * @param userInfo
	 * @return 1 success -1 失败
	 */
	public int updateUser(UserInfo userInfo);

	public UserInfo loginUser(UserInfo userInfo);

}
