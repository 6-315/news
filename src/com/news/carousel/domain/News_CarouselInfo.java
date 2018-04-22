package com.news.carousel.domain;

/**
 * domain 轮播图
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify LW 2018/04/21
 *
 */
public class News_CarouselInfo {
	private String CI_Id;// 轮播图id
	private String CI_Img;//轮播图图片名
	private String CI_BelongNews;//轮播图所属新闻
	private int CI_IsShow;//轮播图是否显示
	private String CI_CreateTime;//轮播图创建时间
	private String CI_ModifyTime;//轮播图修改时间
	public String getCI_Id() {
		return CI_Id;
	}
	public void setCI_Id(String cI_Id) {
		CI_Id = cI_Id;
	}
	public String getCI_Img() {
		return CI_Img;
	}
	public void setCI_Img(String cI_Img) {
		CI_Img = cI_Img;
	}
	public String getCI_BelongNews() {
		return CI_BelongNews;
	}
	public void setCI_BelongNews(String cI_BelongNews) {
		CI_BelongNews = cI_BelongNews;
	}
	public int getCI_IsShow() {
		return CI_IsShow;
	}
	public void setCI_IsShow(int cI_IsShow) {
		CI_IsShow = cI_IsShow;
	}
	public String getCI_CreateTime() {
		return CI_CreateTime;
	}
	public void setCI_CreateTime(String cI_CreateTime) {
		CI_CreateTime = cI_CreateTime;
	}
	public String getCI_ModifyTime() {
		return CI_ModifyTime;
	}
	public void setCI_ModifyTime(String cI_ModifyTime) {
		CI_ModifyTime = cI_ModifyTime;
	}
	@Override
	public String toString() {
		return "News_CarouselInfo [CI_Id=" + CI_Id + ", CI_Img=" + CI_Img + ", CI_BelongNews=" + CI_BelongNews
				+ ", CI_IsShow=" + CI_IsShow + ", CI_CreateTime=" + CI_CreateTime + ", CI_ModifyTime=" + CI_ModifyTime
				+ "]";
	}

	
}
