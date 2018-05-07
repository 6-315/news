package com.news.navigation.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.news.navigation.dao.NavigationManagementDao;
import com.news.navigation.domain.News_OneNavigationInfo;
import com.news.navigation.domain.News_TwoNavigationInfo;
import com.news.navigation.domain.DTO.News_NavigationInfoCountDTO;
import com.news.navigation.domain.VO.News_NavigationInfoCountVO;
import com.news.navigation.service.NavigationManagementService;
import com.news.user.domain.UserInfo;

import util.BuildUuid;
import util.TimeUtil;

/**
 * class 轮播图管理
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify JXX 2018/04/18
 *
 */
public class NavigationManagementServiceImpl implements NavigationManagementService {
	/**
	 * dao层注入
	 */
	private NavigationManagementDao navigationManagementDao;

	public NavigationManagementDao getNavigationManagementDao() {
		return navigationManagementDao;
	}

	public void setNavigationManagementDao(NavigationManagementDao navigationManagementDao) {
		this.navigationManagementDao = navigationManagementDao;
	}

	/**
	 * 注入结束
	 */

	/**
	 * 导航分页
	 */
	@SuppressWarnings("unchecked")
	@Override
	public News_NavigationInfoCountVO listNavigationInfoByPage(News_NavigationInfoCountVO news_NavigationInfoCountVO) {

		List<News_NavigationInfoCountDTO> listNews_NavigationInfoCountDTO = new ArrayList<>();
		List<News_OneNavigationInfo> listNews_OneNavigationInfo = new ArrayList<>();
		List<News_TwoNavigationInfo> two;
		News_NavigationInfoCountDTO news_NavigationInfoCountDTO;
		// 获取数量
		// 导航数量的hql以及遍历的hql
		String userInfoCountHql = "select count(*) from News_OneNavigationInfo where ONI_IsDelete = '1' ";
		String listUserNewsCountDTOHql = "from News_OneNavigationInfo where ONI_IsDelete = '1' ";
		if (news_NavigationInfoCountVO.getSearch() != null
				&& news_NavigationInfoCountVO.getSearch().trim().length() > 0) {
			String search = "%" + news_NavigationInfoCountVO.getSearch().trim() + "%";
			userInfoCountHql = userInfoCountHql + "where ONI_Name like '" + search + "' ";
			listUserNewsCountDTOHql = listUserNewsCountDTOHql + "where ONI_Name like '" + search + "'";
		}

		// 这里如果不加desc表示正序，如果加上desc表示倒序
		listUserNewsCountDTOHql = listUserNewsCountDTOHql + "order by ONI_ModifyTime desc";
		int userInfoCount = navigationManagementDao.getCount(userInfoCountHql);
		// 设置总数量
		news_NavigationInfoCountVO.setTotalRecords(userInfoCount);
		// 设置总页数
		news_NavigationInfoCountVO.setTotalPages(((userInfoCount - 1) / news_NavigationInfoCountVO.getPageSize()) + 1);
		// 判断是否拥有上一页
		if (news_NavigationInfoCountVO.getPageIndex() <= 1) {
			news_NavigationInfoCountVO.setHavePrePage(false);
		} else {
			news_NavigationInfoCountVO.setHavePrePage(true);
		}
		// 判断是否拥有下一页
		if (news_NavigationInfoCountVO.getPageIndex() >= news_NavigationInfoCountVO.getTotalPages()) {
			news_NavigationInfoCountVO.setHaveNextPage(false);
		} else {
			news_NavigationInfoCountVO.setHaveNextPage(true);
		}
		// 获取若干条DTO信息
		listNews_OneNavigationInfo = (List<News_OneNavigationInfo>) navigationManagementDao.queryForPage(
				"from  News_OneNavigationInfo where ONI_IsDelete = '1' order by ONI_ModifyTime desc",
				news_NavigationInfoCountVO.getPageIndex(), news_NavigationInfoCountVO.getPageSize());

		for (News_OneNavigationInfo news_OneNavigationInfo : listNews_OneNavigationInfo) {
			news_NavigationInfoCountDTO = new News_NavigationInfoCountDTO();
			List<News_TwoNavigationInfo>  listtwo =  new ArrayList<>();
			listtwo = navigationManagementDao.getlistNews_TwoNavigationInfo(news_OneNavigationInfo.getONI_Id().trim());
			if (listtwo != null) {
				news_NavigationInfoCountDTO.setNews_TwoNavigationInfo(listtwo);
			}
			// 根据用户id获取所拥有的新闻数量并组合进DTO中
			/*
			 * String newsCount =
			 * "from News_TwoNavigationInfo where TNI_BelongOneNavigator = '+news_OneNavigationInfo.getONI_Name()+'"
			 * ;
			 * news_NavigationInfoCountDTO.setNews_TwoNavigationInfo(newsCount);
			 * if (news_NavigationInfoCountVO.getSearch() != null &&
			 * news_NavigationInfoCountVO.getSearch().trim().length() > 0) {
			 * news_OneNavigationInfo.setONI_Name(news_OneNavigationInfo.
			 * getONI_Name().replaceAll(news_NavigationInfoCountVO.getSearch(),
			 * "<mark>" + news_NavigationInfoCountVO.getSearch() + "</mark>"));
			 * }
			 */
			news_NavigationInfoCountDTO.setNews_OneNavigationInfo(news_OneNavigationInfo);
			listNews_NavigationInfoCountDTO.add(news_NavigationInfoCountDTO);

		}
		news_NavigationInfoCountVO.setListNews_NavigationInfoCountDTO(listNews_NavigationInfoCountDTO);

		return news_NavigationInfoCountVO;
	}

	/**
	 * 添加一级导航
	 */
	@Override
	public int addOneNavigation(News_OneNavigationInfo news_OneNavigationInfo) {
		news_OneNavigationInfo.setONI_Id(BuildUuid.getUuid());
		news_OneNavigationInfo.setONI_IsDisplay(1);
		news_OneNavigationInfo.setONI_IsDelete(1);
		news_OneNavigationInfo.setONI_Order(1);
		news_OneNavigationInfo.setONI_CreateTime(TimeUtil.getStringSecond());
		news_OneNavigationInfo.setONI_ModifyTime(TimeUtil.getStringSecond());
		navigationManagementDao.saveOrUpdateObject(news_OneNavigationInfo);
		return 1;
	}

	/**
	 * 添加二级级导航
	 */
	@Override
	public int addTwoNavigation(News_TwoNavigationInfo news_TwoNavigationInfo) {
		news_TwoNavigationInfo.setTNI_Id(BuildUuid.getUuid());
		news_TwoNavigationInfo.setTNI_IsDisplay(1);
		news_TwoNavigationInfo.setTNI_IsDelete(1);
		news_TwoNavigationInfo.setTNI_Order(1);
		news_TwoNavigationInfo.setTNI_CreateTime(TimeUtil.getStringSecond());
		news_TwoNavigationInfo.setTNI_ModifyTime(TimeUtil.getStringSecond());
		navigationManagementDao.saveOrUpdateObject(news_TwoNavigationInfo);
		return 1;
	}

	/**
	 * 更新一级导航
	 */
	@Override
	public int updateOneNavigation(News_OneNavigationInfo news_OneNavigationInfo) {
		News_OneNavigationInfo updatenews_OneNavigationInfo = new News_OneNavigationInfo();
		updatenews_OneNavigationInfo.setONI_Id(news_OneNavigationInfo.getONI_Id());
		updatenews_OneNavigationInfo.setONI_Name(news_OneNavigationInfo.getONI_Name());
		updatenews_OneNavigationInfo.setONI_IsDisplay(news_OneNavigationInfo.getONI_IsDisplay());
		updatenews_OneNavigationInfo.setONI_Order(news_OneNavigationInfo.getONI_Order());
		updatenews_OneNavigationInfo.setONI_NavigatorIntroduce(news_OneNavigationInfo.getONI_NavigatorIntroduce());
		updatenews_OneNavigationInfo.setONI_IsDelete(news_OneNavigationInfo.getONI_IsDelete());
		updatenews_OneNavigationInfo.setONI_CreateTime(news_OneNavigationInfo.getONI_CreateTime());
		updatenews_OneNavigationInfo.setONI_ModifyTime(TimeUtil.getStringSecond());
		navigationManagementDao.saveOrUpdateObject(updatenews_OneNavigationInfo);
		return 1;
	}

	/**
	 * 更新二级导航
	 */
	@Override
	public int updateTwoNavigation(News_TwoNavigationInfo news_TwoNavigationInfo) {
		News_TwoNavigationInfo updatenews_TwoNavigationInfo = new News_TwoNavigationInfo();
		updatenews_TwoNavigationInfo.setTNI_Id(news_TwoNavigationInfo.getTNI_Id());
		updatenews_TwoNavigationInfo.setTNI_BelongOneNavigator(news_TwoNavigationInfo.getTNI_BelongOneNavigator());
		updatenews_TwoNavigationInfo.setTNI_Name(news_TwoNavigationInfo.getTNI_Name());
		updatenews_TwoNavigationInfo.setTNI_IsDisplay(news_TwoNavigationInfo.getTNI_IsDisplay());
		updatenews_TwoNavigationInfo.setTNI_Order(news_TwoNavigationInfo.getTNI_Order());
		updatenews_TwoNavigationInfo.setTNI_NavigatorIntroduce(news_TwoNavigationInfo.getTNI_NavigatorIntroduce());
		updatenews_TwoNavigationInfo.setTNI_IsDelete(news_TwoNavigationInfo.getTNI_IsDelete());
		updatenews_TwoNavigationInfo.setTNI_CreateTime(news_TwoNavigationInfo.getTNI_CreateTime());
		updatenews_TwoNavigationInfo.setTNI_ModifyTime(TimeUtil.getStringSecond());
		navigationManagementDao.saveOrUpdateObject(updatenews_TwoNavigationInfo);

		return 1;
	}

}
