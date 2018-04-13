package com.news.user.domain;

/**
 * 新闻信息
 * 
 * @author 创建 JXX
 * @date 2018/04/12
 * @modify JXX 2018/04/12
 *
 */
public class NewsInfo {
	private String newsId;
	private String newsBelong;
	private String newsTitle;
	private String newsReleaseTime;
	private String newsContent;
	private String newsCreateTime;
	private String newsModifyTime;

	public String getNewsId() {
		return newsId;
	}

	public void setNewsId(String newsId) {
		this.newsId = newsId;
	}

	public String getNewsBelong() {
		return newsBelong;
	}

	public void setNewsBelong(String newsBelong) {
		this.newsBelong = newsBelong;
	}

	public String getNewsTitle() {
		return newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public String getNewsReleaseTime() {
		return newsReleaseTime;
	}

	public void setNewsReleaseTime(String newsReleaseTime) {
		this.newsReleaseTime = newsReleaseTime;
	}

	public String getNewsContent() {
		return newsContent;
	}

	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}

	public String getNewsCreateTime() {
		return newsCreateTime;
	}

	public void setNewsCreateTime(String newsCreateTime) {
		this.newsCreateTime = newsCreateTime;
	}

	public String getNewsModifyTime() {
		return newsModifyTime;
	}

	public void setNewsModifyTime(String newsModifyTime) {
		this.newsModifyTime = newsModifyTime;
	}

	@Override
	public String toString() {
		return "NewsInfo [newsId=" + newsId + ", newsBelong=" + newsBelong + ", newsTitle=" + newsTitle
				+ ", newsReleaseTime=" + newsReleaseTime + ", newsContent=" + newsContent + ", newsCreateTime="
				+ newsCreateTime + ", newsModifyTime=" + newsModifyTime + ", getNewsId()=" + getNewsId()
				+ ", getNewsBelong()=" + getNewsBelong() + ", getNewsTitle()=" + getNewsTitle()
				+ ", getNewsReleaseTime()=" + getNewsReleaseTime() + ", getNewsContent()=" + getNewsContent()
				+ ", getNewsCreateTime()=" + getNewsCreateTime() + ", getNewsModifyTime()=" + getNewsModifyTime()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

}
