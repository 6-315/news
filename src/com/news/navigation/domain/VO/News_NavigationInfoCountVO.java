package com.news.navigation.domain.VO;

import java.util.List;

import com.news.navigation.domain.DTO.News_NavigationInfoCountDTO;

/**
 * class 分页显示一级导航
 * 
 * @author LMJ 2018/4/27
 *
 */
public class News_NavigationInfoCountVO {
	private int totalRecords = 0;

	private int pageIndex = 1;

	private int pageSize = 10;

	private int totalPages = 1;

	private boolean havePrePage = false;
	private boolean haveNextPage = false;

	private List<News_NavigationInfoCountDTO> listNews_NavigationInfoCountDTO;

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

	public List<News_NavigationInfoCountDTO> getListNews_NavigationInfoCountDTO() {
		return listNews_NavigationInfoCountDTO;
	}

	public void setListNews_NavigationInfoCountDTO(List<News_NavigationInfoCountDTO> listNews_NavigationInfoCountDTO) {
		this.listNews_NavigationInfoCountDTO = listNews_NavigationInfoCountDTO;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	@Override
	public String toString() {
		return "News_NavigationInfoCountVO [totalRecords=" + totalRecords + ", pageIndex=" + pageIndex + ", pageSize="
				+ pageSize + ", totalPages=" + totalPages + ", havePrePage=" + havePrePage + ", haveNextPage="
				+ haveNextPage + ", listNews_NavigationInfoCountDTO=" + listNews_NavigationInfoCountDTO + ", search="
				+ search + "]";
	}

}
