package com.news.newsinfo.domain.VO;

import java.util.List;

import com.news.newsinfo.domain.News_NewsInfo;

public class NewsinfoVO {

	private int totalRecords = 0;

	private int pageIndex = 1;

	private int pageSize = 8;

	private int totalPages = 1;

	private boolean havePrePage = false;
	private boolean haveNextPage = false;

	// 信息表
	private List<News_NewsInfo> listNews;

	private String search;

	public int getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public boolean isHavePrePage() {
		return havePrePage;
	}

	public void setHavePrePage(boolean havePrePage) {
		this.havePrePage = havePrePage;
	}

	public boolean isHaveNextPage() {
		return haveNextPage;
	}

	public void setHaveNextPage(boolean haveNextPage) {
		this.haveNextPage = haveNextPage;
	}

	public List<News_NewsInfo> getListNews() {
		return listNews;
	}

	public void setListNews(List<News_NewsInfo> listNews) {
		this.listNews = listNews;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	@Override
	public String toString() {
		return "NewsinfoVO [totalRecords=" + totalRecords + ", pageIndex=" + pageIndex + ", pageSize=" + pageSize
				+ ", totalPages=" + totalPages + ", havePrePage=" + havePrePage + ", haveNextPage=" + haveNextPage
				+ ", listNews=" + listNews + ", search=" + search + "]";
	}

}
