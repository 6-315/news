package com.news.link.domain.VO;

import java.util.List;

import com.news.link.domain.DTO.News_LinkInfoCountDTO;

/**
 * class 分页显示新闻链接News_LinkInfoDTO
 * 
 * @author Administrator
 *
 */

public class News_LinkInfoCountVO {
	private int totalRecords = 0;

	private int pageIndex = 1;

	private int pageSize = 3;

	private int totalPages = 1;

	private boolean havePrePage = false;
	private boolean haveNextPage = false;
	// 信息表
	private List<News_LinkInfoCountDTO> listNews_LinkInfoDTO;

	private String search;

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

	public List<News_LinkInfoCountDTO> getListNews_LinkInfoDTO() {
		return listNews_LinkInfoDTO;
	}

	public void setListNews_LinkInfoDTO(List<News_LinkInfoCountDTO> listNews_LinkInfoDTO) {
		this.listNews_LinkInfoDTO = listNews_LinkInfoDTO;
	}

	@Override
	public String toString() {
		return "News_LinkInfoCountVO [totalRecords=" + totalRecords + ", pageIndex=" + pageIndex + ", pageSize="
				+ pageSize + ", totalPages=" + totalPages + ", havePrePage=" + havePrePage + ", haveNextPage="
				+ haveNextPage + ", listNews_LinkInfoDTO=" + listNews_LinkInfoDTO + ", search=" + search + "]";
	}

}
