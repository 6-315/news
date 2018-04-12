package util;

public class PageVO {

	// 需要显示的页码
	private int pageIndex = 1;
	// 总记录数
	private int totalRecords = 0;
	// 每页记录数
	private int pageSize = 10;
	// 总页数
	private int totalPages = 1;

	private boolean HavePrePage = false; // 是否有上一页
	private boolean HaveNextPage = false; // 是否有下一页

	public PageVO() {

	}

	public PageVO(int pageIndex, int pageSize, int totalRecords) {
		this.pageIndex = pageIndex;
		this.pageSize = pageSize;
		this.totalRecords = totalRecords;

		// 计算总页数
		this.totalPages = this.totalRecords / this.pageSize;
		if (this.totalRecords % this.pageSize != 0) {
			this.totalPages++;
		}

		// 计算是否有上一页
		if (this.pageIndex > 1) {
			this.HavePrePage = true;
		} else {
			this.HavePrePage = false;
		}
		// 计算是否有下一页
		if (this.pageIndex < this.totalPages) {
			this.HaveNextPage = true;
		} else {
			this.HaveNextPage = false;
		}

	}

	@Override
	public String toString() {
		return "PageVo [pageIndex=" + pageIndex + ", totalPages=" + totalPages + ", pageSize=" + pageSize
				+ ", totalRecords=" + totalRecords + ", isHavePrePage=" + HavePrePage + ", isHaveNextPage="
				+ HaveNextPage + "]";
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
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
		return HavePrePage;
	}

	public void setHavePrePage(boolean havePrePage) {
		HavePrePage = havePrePage;
	}

	public boolean isHaveNextPage() {
		return HaveNextPage;
	}

	public void setHaveNextPage(boolean haveNextPage) {
		HaveNextPage = haveNextPage;
	}

}
