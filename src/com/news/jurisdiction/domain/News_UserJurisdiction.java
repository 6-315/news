package com.news.jurisdiction.domain;

public class News_UserJurisdiction {
	private String UJ_Id;
	private String UJ_UserName;
	private String UJ_UserPassWord;
	private int UJ_IsDelete;
	private String UJ_IsNavigationManagement;
	private String UJ_IsLinkeManagement;
	private String UJ_IsCarouselManagement;
	private String UJ_IsNewsManagement;
	private String UJ_IsJurisdictionManagement;
	private String UJ_CreateTime;
	private String UJ_ModifyTime;

	public String getUJ_Id() {
		return UJ_Id;
	}

	public void setUJ_Id(String uJ_Id) {
		UJ_Id = uJ_Id;
	}

	public String getUJ_UserName() {
		return UJ_UserName;
	}

	public void setUJ_UserName(String uJ_UserName) {
		UJ_UserName = uJ_UserName;
	}

	public String getUJ_UserPassWord() {
		return UJ_UserPassWord;
	}

	public void setUJ_UserPassWord(String uJ_UserPassWord) {
		UJ_UserPassWord = uJ_UserPassWord;
	}

	public int getUJ_IsDelete() {
		return UJ_IsDelete;
	}

	public void setUJ_IsDelete(int uJ_IsDelete) {
		UJ_IsDelete = uJ_IsDelete;
	}

	public String getUJ_IsNavigationManagement() {
		return UJ_IsNavigationManagement;
	}

	public void setUJ_IsNavigationManagement(String uJ_IsNavigationManagement) {
		UJ_IsNavigationManagement = uJ_IsNavigationManagement;
	}

	public String getUJ_IsLinkeManagement() {
		return UJ_IsLinkeManagement;
	}

	public void setUJ_IsLinkeManagement(String uJ_IsLinkeManagement) {
		UJ_IsLinkeManagement = uJ_IsLinkeManagement;
	}

	public String getUJ_IsCarouselManagement() {
		return UJ_IsCarouselManagement;
	}

	public void setUJ_IsCarouselManagement(String uJ_IsCarouselManagement) {
		UJ_IsCarouselManagement = uJ_IsCarouselManagement;
	}

	public String getUJ_IsNewsManagement() {
		return UJ_IsNewsManagement;
	}

	public void setUJ_IsNewsManagement(String uJ_IsNewsManagement) {
		UJ_IsNewsManagement = uJ_IsNewsManagement;
	}

	public String getUJ_IsJurisdictionManagement() {
		return UJ_IsJurisdictionManagement;
	}

	public void setUJ_IsJurisdictionManagement(String uJ_IsJurisdictionManagement) {
		UJ_IsJurisdictionManagement = uJ_IsJurisdictionManagement;
	}

	public String getUJ_CreateTime() {
		return UJ_CreateTime;
	}

	public void setUJ_CreateTime(String uJ_CreateTime) {
		UJ_CreateTime = uJ_CreateTime;
	}

	public String getUJ_ModifyTime() {
		return UJ_ModifyTime;
	}

	public void setUJ_ModifyTime(String uJ_ModifyTime) {
		UJ_ModifyTime = uJ_ModifyTime;
	}

	@Override
	public String toString() {
		return "News_UserJurisdiction [UJ_Id=" + UJ_Id + ", UJ_UserName=" + UJ_UserName + ", UJ_UserPassWord="
				+ UJ_UserPassWord + ", UJ_IsDelete=" + UJ_IsDelete + ", UJ_IsNavigationManagement="
				+ UJ_IsNavigationManagement + ", UJ_IsLinkeManagement=" + UJ_IsLinkeManagement
				+ ", UJ_IsCarouselManagement=" + UJ_IsCarouselManagement + ", UJ_IsNewsManagement="
				+ UJ_IsNewsManagement + ", UJ_IsJurisdictionManagement=" + UJ_IsJurisdictionManagement
				+ ", UJ_CreateTime=" + UJ_CreateTime + ", UJ_ModifyTime=" + UJ_ModifyTime + "]";
	}

}
