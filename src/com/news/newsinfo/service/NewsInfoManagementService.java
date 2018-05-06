package com.news.newsinfo.service;

import java.util.List;

import com.news.navigation.domain.News_TwoNavigationInfo;
import com.news.newsinfo.domain.News_Content;
import com.news.newsinfo.domain.News_NewsInfo;
import com.news.newsinfo.domain.DTO.NewsinfoDTO;
import com.news.newsinfo.domain.DTO.SelectAllDTO;
import com.news.newsinfo.domain.VO.NewsinfoVO;

/**
 * interface 新闻管理
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify JXX 2018/04/18
 *
 */
public interface NewsInfoManagementService {


	public void addInfo(News_Content news_Content, News_NewsInfo news_NewsInfo);

	public List<SelectAllDTO> listSelectAllDTO();

	public List<News_NewsInfo> getNews();

	public int delete(News_NewsInfo news_NewsInfo);

	public int update(News_NewsInfo news_NewsInfo);

	public List<News_TwoNavigationInfo> getNavigation();

	public NewsinfoVO getNews2(NewsinfoVO newsinfoVO);

	public NewsinfoDTO getExact(String ni_Content);

}
