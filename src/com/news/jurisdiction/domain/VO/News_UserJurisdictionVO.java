package com.news.jurisdiction.domain.VO;

import java.util.List;

import com.news.jurisdiction.domain.News_UserJurisdiction;

public class News_UserJurisdictionVO {
	private int totalRecords = 0;

	private int pageIndex = 1;

	private int pageSize = 10;

	private int totalPages = 1;

	private boolean havePrePage = false;
	private boolean haveNextPage = false;

	private String search;

	private List<News_UserJurisdiction> listNews_UserJurisdiction;

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

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public List<News_UserJurisdiction> getListNews_UserJurisdiction() {
		return listNews_UserJurisdiction;
	}

	public void setListNews_UserJurisdiction(List<News_UserJurisdiction> listNews_UserJurisdiction) {
		this.listNews_UserJurisdiction = listNews_UserJurisdiction;
	}

	@Override
	public String toString() {
		return "News_UserJurisdictionVO [totalRecords=" + totalRecords + ", pageIndex=" + pageIndex + ", pageSize="
				+ pageSize + ", totalPages=" + totalPages + ", havePrePage=" + havePrePage + ", haveNextPage="
				+ haveNextPage + ", search=" + search + ", listNews_UserJurisdiction=" + listNews_UserJurisdiction
				+ "]";
	}

}
