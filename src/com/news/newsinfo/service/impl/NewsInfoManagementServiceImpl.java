package com.news.newsinfo.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.news.navigation.domain.News_TwoNavigationInfo;
import com.news.newsinfo.dao.NewsInfoManagementDao;
import com.news.newsinfo.domain.News_Content;
import com.news.newsinfo.domain.News_NewsInfo;
import com.news.newsinfo.domain.DTO.SelectAllDTO;
import com.news.newsinfo.service.NewsInfoManagementService;

import util.BuildUuid;
import util.TimeUtil;

/**
 * class 新闻管理
 * 
 * @author LW
 * @date 2018/04/18
 * @modify JXX 2018/04/27
 *
 */
public class NewsInfoManagementServiceImpl implements NewsInfoManagementService {
	/**
	 * dao层注入
	 */
	private NewsInfoManagementDao newsInfoManagementDao;

	public NewsInfoManagementDao getNewsInfoManagementDao() {
		return newsInfoManagementDao;
	}

	public void setNewsInfoManagementDao(NewsInfoManagementDao newsInfoManagementDao) {
		this.newsInfoManagementDao = newsInfoManagementDao;
	}


/*
	@Override
	public void addInfo(NewsinfoDTO newsinfoDTO) {
		News_NewsInfo news_NewsInfo = new News_NewsInfo();
		News_Content news_Content = new News_Content();
		news_NewsInfo.setNI_Id(BuildUuid.getUuid());
		news_NewsInfo.setNI_CreateTime(TimeUtil.getStringSecond());
		news_NewsInfo.setNI_ModifyTime(TimeUtil.getStringSecond());
		news_Content.setNC_Id(BuildUuid.getUuid());
		newsInfoManagementDao.saveOrUpdateObject(news_Content);
		news_NewsInfo.setNI_Content(news_Content.getNC_Id());
		news_Content.setNC_CreateTime(TimeUtil.getStringSecond());
		news_Content.setNC_ModifyTime(TimeUtil.getStringSecond());
		newsInfoManagementDao.saveOrUpdateObject(newsinfoDTO.getNews_Content());
		
		
		
	}*/
/**
 * 存新闻
 */
	@Override
	public void addInfo(News_Content news_Content, News_NewsInfo news_NewsInfo) {
	
		news_Content.setNC_CreateTime(TimeUtil.getStringSecond());
		news_Content.setNC_ModifyTime(TimeUtil.getStringSecond());
		news_Content.setNC_Id(BuildUuid.getUuid());
		newsInfoManagementDao.saveOrUpdateObject(news_Content);
		news_NewsInfo.setNI_Content(news_Content.getNC_Id());
		news_NewsInfo.setNI_Id(BuildUuid.getUuid());
		news_NewsInfo.setNI_CreateTime(TimeUtil.getStringSecond());
		news_NewsInfo.setNI_ModifyTime(TimeUtil.getStringSecond());
		news_NewsInfo.setNI_ShowTime(TimeUtil.getStringSecond());
		news_NewsInfo.setNI_ContentId(news_Content.getNC_Id());
		newsInfoManagementDao.saveOrUpdateObject(news_NewsInfo);
		System.out.println("KKKKK"+news_Content);
		System.out.println("PPP"+news_NewsInfo);
	
	}

@Override
public List<SelectAllDTO> listSelectAllDTO() {
	List<SelectAllDTO> listSelectAllDTO = new ArrayList<>();
	List<News_NewsInfo> listNewsNewsInfo = new ArrayList<>();
	News_TwoNavigationInfo newsTwoNavigationInfo;
	SelectAllDTO selectAllDTO;
	
	
	
	
	
	listNewsNewsInfo = (List<News_NewsInfo>) newsInfoManagementDao.listObject("from News_NewsInfo where NI_IsDelete='1'");
	for (News_NewsInfo news_NewsInfo : listNewsNewsInfo) {
		newsTwoNavigationInfo = new News_TwoNavigationInfo();
		selectAllDTO = new SelectAllDTO();
		if(news_NewsInfo.getNI_BelongNavigation()!= null
				&&news_NewsInfo.getNI_BelongNavigation().trim().length()>0){
			newsTwoNavigationInfo=newsInfoManagementDao.getnews(news_NewsInfo.getNI_BelongNavigation().trim());
			if(newsTwoNavigationInfo!=null){
				selectAllDTO.setNews_TwoNavigationInfo(newsTwoNavigationInfo);
			}
			
		}
		selectAllDTO.setNews_NewsInfo(news_NewsInfo);
		listSelectAllDTO.add(selectAllDTO);
	}
	return listSelectAllDTO;
}

@Override
public List<News_NewsInfo> getNews() {
	List<News_NewsInfo> listnews;
	listnews=(List<News_NewsInfo>) newsInfoManagementDao.
			listObject("from News_NewsInfo where NI_IsDelete =  1");
	return listnews ;
}

@Override
public int delete(News_NewsInfo news_NewsInfo) {
	System.out.println("ieieiei"+news_NewsInfo.getNI_IsDelete());
	News_NewsInfo delete = new News_NewsInfo();
	delete.setNI_Id(news_NewsInfo.getNI_Id());
	delete.setNI_Author(news_NewsInfo.getNI_Author());
	delete.setNI_BelongNavigation(news_NewsInfo.getNI_BelongNavigation());
	delete.setNI_BrowserCount(news_NewsInfo.getNI_BrowserCount());
	delete.setNI_Content(news_NewsInfo.getNI_Content());
	delete.setNI_ContentId(news_NewsInfo.getNI_ContentId());
	delete.setNI_CreateTime(news_NewsInfo.getNI_CreateTime());
	delete.setNI_IsCarousel(news_NewsInfo.getNI_IsCarousel());
	delete.setNI_IsDelete(news_NewsInfo.getNI_IsDelete());
	delete.setNI_IsRecommend(news_NewsInfo.getNI_IsRecommend());
	delete.setNI_IsShow(news_NewsInfo.getNI_IsShow());
	delete.setNI_Keywords(news_NewsInfo.getNI_Keywords());
	delete.setNI_Title(news_NewsInfo.getNI_Title());
	delete.setNI_ShowTime(news_NewsInfo.getNI_ShowTime());
	delete.setNI_Source(news_NewsInfo.getNI_Source());
	delete.setNI_ModifyTime(TimeUtil.getStringSecond());
	newsInfoManagementDao.saveOrUpdateObject(delete);
	return 1;
}

}
