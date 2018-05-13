package com.news.jurisdiction.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.news.jurisdiction.dao.JurisdictionDao;
import com.news.jurisdiction.domain.News_UserJurisdiction;
import com.news.jurisdiction.domain.VO.News_UserJurisdictionVO;
import com.news.jurisdiction.service.JurisdictionService;

import util.BuildUuid;
import util.TimeUtil;

public class JurisdictionServiceImpl implements JurisdictionService {
	private JurisdictionDao jurisdictionDao;

	public JurisdictionDao getJurisdictionDao() {
		return jurisdictionDao;
	}

	public void setJurisdictionDao(JurisdictionDao jurisdictionDao) {
		this.jurisdictionDao = jurisdictionDao;
	}

	/**
	 * 添加人员
	 */
	@Override
	public int addJurisdiction(News_UserJurisdiction news_UserJurisdiction) {
		news_UserJurisdiction.setUJ_Id(BuildUuid.getUuid());
		news_UserJurisdiction.setUJ_UserPassWord("123");
		news_UserJurisdiction.setUJ_IsDelete(1);
		news_UserJurisdiction.setUJ_IsNavigationManagement("none");
		news_UserJurisdiction.setUJ_IsLinkeManagement("none");
		news_UserJurisdiction.setUJ_IsCarouselManagement("none");
		news_UserJurisdiction.setUJ_IsNewsManagement("none");
		news_UserJurisdiction.setUJ_IsJurisdictionManagement("none");
		news_UserJurisdiction.setUJ_CreateTime(TimeUtil.getStringSecond());
		news_UserJurisdiction.setUJ_ModifyTime(TimeUtil.getStringSecond());
		jurisdictionDao.saveOrUpdateObject(news_UserJurisdiction);
		return 1;
	}

	/**
	 * 分页
	 */
	@SuppressWarnings("unchecked")
	@Override
	public News_UserJurisdictionVO listJurisdictionInfoByPage(String userId,
			News_UserJurisdictionVO news_UserJurisdictionVO) {
		List<News_UserJurisdiction> list = new ArrayList<>();
		// 获取数量
		// 链接数量的hql以及遍历的hql
		String news_LinkInfoCountHql = "select count(*) from News_UserJurisdiction where UJ_IsDelete ='1' ";
		String listNews_LinkInfoCountDTOHql = "from News_UserJurisdiction where UJ_IsDelete ='1' ";
		/*
		 * if (news_UserJurisdictionVO.getSearch() != null &&
		 * news_UserJurisdictionVO.getSearch().trim().length() > 0) { String
		 * search = "%" + news_UserJurisdictionVO.getSearch().trim() + "%";
		 * news_LinkInfoCountHql = news_LinkInfoCountHql +
		 * "where UJ_UserName like '" + search + "' ";
		 * listNews_LinkInfoCountDTOHql = listNews_LinkInfoCountDTOHql +
		 * "where UJ_UserName like '" + search + "'"; }
		 */
		if (userId != null && userId.trim().length() > 0) {
			news_LinkInfoCountHql = news_LinkInfoCountHql + " and UJ_Id != '" + userId + "'";
			listNews_LinkInfoCountDTOHql = listNews_LinkInfoCountDTOHql + "and UJ_Id != '" + userId + "'";
		}
		// 这里如果不加desc表示正序，如果加上desc表示倒序
		listNews_LinkInfoCountDTOHql = listNews_LinkInfoCountDTOHql + "order by UJ_ModifyTime desc ";
		int userInfoCount = jurisdictionDao.getCount(news_LinkInfoCountHql);
		// 设置总数量
		news_UserJurisdictionVO.setTotalRecords(userInfoCount);
		// 设置总页数
		news_UserJurisdictionVO.setTotalPages(((userInfoCount - 1) / news_UserJurisdictionVO.getPageSize()) + 1);
		// 判断是否拥有上一页
		if (news_UserJurisdictionVO.getPageIndex() <= 1) {
			news_UserJurisdictionVO.setHavePrePage(false);
		} else {
			news_UserJurisdictionVO.setHavePrePage(true);
		}
		// 判断是否拥有下一页
		if (news_UserJurisdictionVO.getPageIndex() >= news_UserJurisdictionVO.getTotalPages()) {
			news_UserJurisdictionVO.setHaveNextPage(false);
		} else {
			news_UserJurisdictionVO.setHaveNextPage(true);
		}

		list = (List<News_UserJurisdiction>) jurisdictionDao.queryForPage(listNews_LinkInfoCountDTOHql,
				news_UserJurisdictionVO.getPageIndex(), news_UserJurisdictionVO.getPageSize());
		news_UserJurisdictionVO.setListNews_UserJurisdiction(list);
		// 遍历当前的信息并且组合生成DTO
		return news_UserJurisdictionVO;
	}

	/**
	 * 更新人员信息
	 */
	@Override
	public int updateJurisdictionInfo(News_UserJurisdiction news_UserJurisdiction) {
		News_UserJurisdiction updateNews_UserJurisdiction = new News_UserJurisdiction();
		updateNews_UserJurisdiction = (News_UserJurisdiction) jurisdictionDao
				.getNews_UserJurisdiction(news_UserJurisdiction);
		updateNews_UserJurisdiction.setUJ_Id(news_UserJurisdiction.getUJ_Id());
		updateNews_UserJurisdiction.setUJ_UserName(news_UserJurisdiction.getUJ_UserName());
		updateNews_UserJurisdiction.setUJ_UserPassWord(news_UserJurisdiction.getUJ_UserPassWord());
		updateNews_UserJurisdiction.setUJ_IsDelete(news_UserJurisdiction.getUJ_IsDelete());
		updateNews_UserJurisdiction.setUJ_IsNavigationManagement(news_UserJurisdiction.getUJ_IsNavigationManagement());
		updateNews_UserJurisdiction.setUJ_IsLinkeManagement(news_UserJurisdiction.getUJ_IsLinkeManagement());
		updateNews_UserJurisdiction.setUJ_IsCarouselManagement(news_UserJurisdiction.getUJ_IsCarouselManagement());
		updateNews_UserJurisdiction.setUJ_IsNewsManagement(news_UserJurisdiction.getUJ_IsNewsManagement());
		updateNews_UserJurisdiction
				.setUJ_IsJurisdictionManagement(news_UserJurisdiction.getUJ_IsJurisdictionManagement());
		updateNews_UserJurisdiction.setUJ_CreateTime(news_UserJurisdiction.getUJ_CreateTime());
		updateNews_UserJurisdiction.setUJ_ModifyTime(TimeUtil.getStringSecond());
		jurisdictionDao.saveOrUpdateObject(updateNews_UserJurisdiction);
		return 1;
	}

	@Override
	public News_UserJurisdiction loginUserJurisdiction(News_UserJurisdiction news_UserJurisdiction) {
		return jurisdictionDao.getLoginUser(news_UserJurisdiction);
	}

}
