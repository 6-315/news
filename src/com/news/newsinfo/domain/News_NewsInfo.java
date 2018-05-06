/**
 * domain 新闻信息表
 * 
 * @author LW
 * @date 2018/04/18
 * @modify LW 2018/04/21
 *
 */
package com.news.newsinfo.domain;

public class News_NewsInfo {
	private String NI_Id;// id
	private String NI_Title;// 新闻标题
	private String NI_Keywords;// 新闻关键词
	private String NI_IsCarousel;// 是否可为轮播
	private String NI_BelongNavigation;// 新闻所属类别
	private String NI_BrowserCount;// 新闻浏览次数
	private String NI_Source;// 新闻源头
	private String NI_Author;// 新闻编辑
	private String NI_Content;// 新闻内容对应Id
	private String NI_IsDelete;// 新闻新闻是否删除
	private String NI_IsShow;// 新闻是否发布
	private String NI_ShowTime;// 新闻发布时间
	private String NI_CreateTime;// 新闻创建时间
	private String NI_ModifyTime;// 新闻修改时间
	private String NI_IsRecommend;// 新闻是否处于推荐

	public String getNI_Id() {
		return NI_Id;
	}

	public void setNI_Id(String nI_Id) {
		NI_Id = nI_Id;
	}


	public String getNI_Title() {
		return NI_Title;
	}

	public void setNI_Title(String nI_Title) {
		NI_Title = nI_Title;
	}

	public String getNI_Keywords() {
		return NI_Keywords;
	}

	public void setNI_Keywords(String nI_Keywords) {
		NI_Keywords = nI_Keywords;
	}

	public String getNI_IsCarousel() {
		return NI_IsCarousel;
	}

	public void setNI_IsCarousel(String nI_IsCarousel) {
		NI_IsCarousel = nI_IsCarousel;
	}

	public String getNI_BelongNavigation() {
		return NI_BelongNavigation;
	}

	public void setNI_BelongNavigation(String nI_BelongNavigation) {
		NI_BelongNavigation = nI_BelongNavigation;
	}

	public String getNI_BrowserCount() {
		return NI_BrowserCount;
	}

	public void setNI_BrowserCount(String nI_BrowserCount) {
		NI_BrowserCount = nI_BrowserCount;
	}

	public String getNI_Source() {
		return NI_Source;
	}

	public void setNI_Source(String nI_Source) {
		NI_Source = nI_Source;
	}

	public String getNI_Author() {
		return NI_Author;
	}

	public void setNI_Author(String nI_Author) {
		NI_Author = nI_Author;
	}

	public String getNI_Content() {
		return NI_Content;
	}

	public void setNI_Content(String nI_Content) {
		NI_Content = nI_Content;
	}

	public String getNI_IsDelete() {
		return NI_IsDelete;
	}

	public void setNI_IsDelete(String nI_IsDelete) {
		NI_IsDelete = nI_IsDelete;
	}

	public String getNI_IsShow() {
		return NI_IsShow;
	}

	public void setNI_IsShow(String nI_IsShow) {
		NI_IsShow = nI_IsShow;
	}

	public String getNI_ShowTime() {
		return NI_ShowTime;
	}

	public void setNI_ShowTime(String nI_ShowTime) {
		NI_ShowTime = nI_ShowTime;
	}

	public String getNI_CreateTime() {
		return NI_CreateTime;
	}

	public void setNI_CreateTime(String nI_CreateTime) {
		NI_CreateTime = nI_CreateTime;
	}

	public String getNI_ModifyTime() {
		return NI_ModifyTime;
	}

	public void setNI_ModifyTime(String nI_ModifyTime) {
		NI_ModifyTime = nI_ModifyTime;
	}

	public String getNI_IsRecommend() {
		return NI_IsRecommend;
	}

	public void setNI_IsRecommend(String nI_IsRecommend) {
		NI_IsRecommend = nI_IsRecommend;
	}

	@Override
	public String toString() {
		return "News_NewsInfo [NI_Id=" + NI_Id + ", NI_Title=" + NI_Title + ", NI_Keywords=" + NI_Keywords
				+ ", NI_IsCarousel=" + NI_IsCarousel + ", NI_BelongNavigation=" + NI_BelongNavigation
				+ ", NI_BrowserCount=" + NI_BrowserCount + ", NI_Source=" + NI_Source + ", NI_Author=" + NI_Author
				+ ", NI_Content=" + NI_Content + ", NI_IsDelete=" + NI_IsDelete + ", NI_IsShow=" + NI_IsShow
				+ ", NI_ShowTime=" + NI_ShowTime + ", NI_CreateTime=" + NI_CreateTime + ", NI_ModifyTime="
				+ NI_ModifyTime + ", NI_IsRecommend=" + NI_IsRecommend + "]";
	}



}
