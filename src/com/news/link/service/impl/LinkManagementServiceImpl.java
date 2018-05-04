package com.news.link.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.news.link.dao.LinkManagementDao;
import com.news.link.domain.News_LinkInfo;
import com.news.link.domain.DTO.News_LinkInfoCountDTO;
import com.news.link.domain.VO.News_LinkInfoCountVO;
import com.news.link.service.LinkManagementService;
import com.news.user.domain.UserInfo;
import com.news.user.domain.DTO.UserNewsCountDTO;

import util.BuildUuid;
import util.TimeUtil;

/**
 * class 链接管理
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify LMJ 2018/04/27
 *
 */
public class LinkManagementServiceImpl implements LinkManagementService {
	/**
	 * dao层注入
	 */
	private LinkManagementDao linkManagementDao;

	public LinkManagementDao getLinkManagementDao() {
		return linkManagementDao;
	}

	public void setLinkManagementDao(LinkManagementDao linkManagementDao) {
		this.linkManagementDao = linkManagementDao;
	}

	/**
	 * 注入结束
	 */

	/**
	 * 添加链接 LMJ 2018/4/22
	 */

	@Override
	public int addLink(News_LinkInfo news_LinkInfo) {
		news_LinkInfo.setLI_Id(BuildUuid.getUuid());
		news_LinkInfo.setLI_IsDisplay(1);
		news_LinkInfo.setLI_IsDelete(1);
		news_LinkInfo.setLI_CreateTime(TimeUtil.getStringSecond());
		news_LinkInfo.setLI_ModifyTime(TimeUtil.getStringSecond());
		linkManagementDao.saveOrUpdateObject(news_LinkInfo);
		return 1;
	}

	/**
	 * 分页 LMJ 2018/4/22
	 */
	@SuppressWarnings("unchecked")
	@Override
	public News_LinkInfoCountVO listLinkInfoByPage(News_LinkInfoCountVO news_LinkInfoCountVO) {
		/*List<News_LinkInfoCountDTO> listNews_LinkInfoCountDTO = new ArrayList<>();*/
		List<News_LinkInfo> listLinkInfo = new ArrayList<>();
		/*News_LinkInfoCountDTO news_LinkInfoCountDTO = null;*/
		// 获取数量
		// 链接数量的hql以及遍历的hql
		String news_LinkInfoCountHql = "select count(*) from News_LinkInfo ";
		String listNews_LinkInfoCountDTOHql = "from News_LinkInfo ";
		if (news_LinkInfoCountVO.getSearch() != null && news_LinkInfoCountVO.getSearch().trim().length() > 0) {
			String search = "%" + news_LinkInfoCountVO.getSearch().trim() + "%";
			news_LinkInfoCountHql = news_LinkInfoCountHql + "where LI_Name like '" + search + "' ";
			listNews_LinkInfoCountDTOHql = listNews_LinkInfoCountDTOHql + "where LI_Name like '" + search + "'";
		}
		// 这里如果不加desc表示正序，如果加上desc表示倒序
		listNews_LinkInfoCountDTOHql = listNews_LinkInfoCountDTOHql + "order by LI_IsDelete desc,LI_ModifyTime desc";
		int userInfoCount = linkManagementDao.getCount(news_LinkInfoCountHql);
		// 设置总数量
		news_LinkInfoCountVO.setTotalRecords(userInfoCount);
		// 设置总页数
		news_LinkInfoCountVO.setTotalPages(((userInfoCount - 1) / news_LinkInfoCountVO.getPageSize()) + 1);
		// 判断是否拥有上一页
		if (news_LinkInfoCountVO.getPageIndex() <= 1) {
			news_LinkInfoCountVO.setHavePrePage(false);
		} else {
			news_LinkInfoCountVO.setHavePrePage(true);
		}
		// 判断是否拥有下一页
		if (news_LinkInfoCountVO.getPageIndex() >= news_LinkInfoCountVO.getTotalPages()) {
			news_LinkInfoCountVO.setHaveNextPage(false);
		} else {
			news_LinkInfoCountVO.setHaveNextPage(true);
		}
		// 获取若干条DTO信息
		/*
		 * System.out.println("--------------");
		 * System.out.println(listNews_LinkInfoCountDTOHql);
		 * System.out.println(news_LinkInfoCountVO.getPageIndex());
		 * System.out.println(news_LinkInfoCountVO.getPageSize());
		 * System.out.println("--------------");
		 */
		listLinkInfo = (List<News_LinkInfo>) linkManagementDao.queryForPage(listNews_LinkInfoCountDTOHql,
				news_LinkInfoCountVO.getPageIndex(), news_LinkInfoCountVO.getPageSize());
		news_LinkInfoCountVO.setListNews_LinkInfo(listLinkInfo);
		// 遍历当前的信息并且组合生成DTO
		return news_LinkInfoCountVO;
	}

	

	/**
	 * 更新链接信息 LMJ 2018/4/22
	 */
	@Override
	public int updateLinkInfo(News_LinkInfo news_LinkInfo) {
		News_LinkInfo updateLinkInfo = new News_LinkInfo();
		updateLinkInfo = (News_LinkInfo) linkManagementDao.getNews_LinkInfo(news_LinkInfo);
		updateLinkInfo.setLI_Name(news_LinkInfo.getLI_Name());
		updateLinkInfo.setLI_Address(news_LinkInfo.getLI_Address());
		updateLinkInfo.setLI_IsDisplay(news_LinkInfo.getLI_IsDisplay());
		updateLinkInfo.setLI_IsDelete(news_LinkInfo.getLI_IsDelete());
		updateLinkInfo.setLI_CreateTime(news_LinkInfo.getLI_CreateTime());
		updateLinkInfo.setLI_ModifyTime(TimeUtil.getStringSecond());
		linkManagementDao.saveOrUpdateObject(updateLinkInfo);
		return 1;
	}

}
