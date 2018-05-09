package com.news.jurisdiction.service;

import com.news.jurisdiction.domain.News_UserJurisdiction;
import com.news.jurisdiction.domain.VO.News_UserJurisdictionVO;
import com.news.user.domain.UserInfo;

public interface JurisdictionService {

	public int addJurisdiction(News_UserJurisdiction news_UserJurisdiction);

	public News_UserJurisdictionVO listJurisdictionInfoByPage(String userId, News_UserJurisdictionVO news_UserJurisdictionVO);

	public int updateJurisdictionInfo(News_UserJurisdiction news_UserJurisdiction);

	public News_UserJurisdiction loginUserJurisdiction(News_UserJurisdiction news_UserJurisdiction);


}
