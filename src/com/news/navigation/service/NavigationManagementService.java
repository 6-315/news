package com.news.navigation.service;

import com.news.navigation.dao.NavigationManagementDao;
import com.news.navigation.domain.News_OneNavigationInfo;
import com.news.navigation.domain.News_TwoNavigationInfo;
import com.news.navigation.domain.VO.News_NavigationInfoCountVO;

/**
 * interface 链接管理
 * 
 * @author LMJ
 * @date 2018/04/27
 * @modify LMJ 2018/04/27
 *
 */
public interface NavigationManagementService {

	/**
	 * 
	 * 导航分页 LMJ 2018/4/27
	 */
	public News_NavigationInfoCountVO listNavigationInfoByPage(News_NavigationInfoCountVO news_NavigationInfoCountVO);

	/**
	 * 
	 * 添加导航 LMJ 2018/4/27
	 */
	public int addOneNavigation(News_OneNavigationInfo news_OneNavigationInfo);

	public int addTwoNavigation(News_TwoNavigationInfo news_TwoNavigationInfo);

	/**
	 * 
	 * 更改导航 LMJ 2018/4/27
	 */
	public int updateOneNavigation(News_OneNavigationInfo news_OneNavigationInfo);

	public int updateTwoNavigation(News_TwoNavigationInfo news_TwoNavigationInfo);

}
