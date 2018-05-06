package com.news.link.service;

import com.news.link.domain.News_LinkInfo;
import com.news.link.domain.VO.News_LinkInfoCountVO;

/**
 * interface link管理
 * 
 * @author LMJ
 * @date 2018/04/18
 * @modify LMJ 2018/04/27
 *
 */
public interface LinkManagementService {

	public int addLink(News_LinkInfo news_LinkInfo);

	public News_LinkInfoCountVO listLinkInfoByPage(News_LinkInfoCountVO news_LinkInfoCountVO);
	
	public int updateLinkInfo(News_LinkInfo news_LinkInfo);
}
