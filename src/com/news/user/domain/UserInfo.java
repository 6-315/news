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
	private String userCreateTime;
	private String userModify;

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

	public String getUserCreateTime() {
		return userCreateTime;
	}

	public void setUserCreateTime(String userCreateTime) {
		this.userCreateTime = userCreateTime;
	}

	public String getUserModify() {
		return userModify;
	}

	public void setUserModify(String userModify) {
		this.userModify = userModify;
	}

	@Override
	public String toString() {
		return "UserInfo [userId=" + userId + ", userName=" + userName + ", userPassword=" + userPassword
				+ ", userCreateTime=" + userCreateTime + ", userModify=" + userModify + "]";
	}

}
