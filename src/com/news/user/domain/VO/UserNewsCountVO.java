package com.news.user.domain.VO;

import java.util.List;

import com.news.user.domain.DTO.UserNewsCountDTO;

/**
 * class 分页显示用户UserNewsCountDTO
 * 
 * @author Administrator
 *
 */
public class UserNewsCountVO {
	private int totalRecords = 0;

	private int pageIndex = 1;

	private int pageSize = 2;

	private int totalPages = 1;

	private boolean havePrePage = false;
	private boolean haveNextPage = false;

	// 信息表
	private List<UserNewsCountDTO> listUserNewsCountDTO;

	private String search;

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public int getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
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

	public List<UserNewsCountDTO> getListUserNewsCountDTO() {
		return listUserNewsCountDTO;
	}

	public void setListUserNewsCountDTO(List<UserNewsCountDTO> listUserNewsCountDTO) {
		this.listUserNewsCountDTO = listUserNewsCountDTO;
	}

	@Override
	public String toString() {
		return "UserNewsCountVO [totalRecords=" + totalRecords + ", pageIndex=" + pageIndex + ", pageSize=" + pageSize
				+ ", totalPages=" + totalPages + ", havePrePage=" + havePrePage + ", haveNextPage=" + haveNextPage
				+ ", listUserNewsCountDTO=" + listUserNewsCountDTO + ", search=" + search + "]";
	}

}
