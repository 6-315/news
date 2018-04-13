package com.news.user.domain.DTO;

import com.news.user.domain.UserInfo;

/**
 * class 用户信息以及用户发表新闻数量DTO
 * 
 * @author JXX
 * @date 创建 2018/04/12
 * @modify JXX 2018/04/13
 *
 */
public class UserNewsCountDTO {
	private UserInfo userInfo;
	private int newsCount;

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public int getNewsCount() {
		return newsCount;
	}

	public void setNewsCount(int newsCount) {
		this.newsCount = newsCount;
	}

	@Override
	public String toString() {
		return "UserNewsCountDTO [userInfo=" + userInfo + ", newsCount=" + newsCount + "]";
	}

}
