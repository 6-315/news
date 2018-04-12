package com.news.user.domain;

/**
 * class domain 映射用户信息表
 * 
 * @author JXX
 * @date 2018/4/12
 * @modify JXX 2018/4/12
 *
 */
public class UserInfo {
	private String userId;
	private String userName;
	private String userPassword;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	@Override
	public String toString() {
		return "UserInfo [userId=" + userId + ", userName=" + userName + ", userPassword=" + userPassword + "]";
	}

}
