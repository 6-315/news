package com.news.link.domain;

/**
 * domain 链接 domain
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify LMJ 2018/04/21
 *
 */
public class News_LinkInfo {
	private String LI_Id; // 链接Id

	private String LI_Name; // 链接Name

	private String LI_Address; // 链接地址Address

	private int LI_IsDisplay; // 链接是否显示

	private int LI_IsDelete; // 链接是否被删除

	private String LI_CreateTime; // 链接创建时间

	private String LI_ModifyTime; // 链接修改时间

	public String getLI_Id() {
		return LI_Id;
	}

	public void setLI_Id(String lI_Id) {
		LI_Id = lI_Id;
	}

	public String getLI_Name() {
		return LI_Name;
	}

	public void setLI_Name(String lI_Name) {
		LI_Name = lI_Name;
	}

	public String getLI_Address() {
		return LI_Address;
	}

	public void setLI_Address(String lI_Address) {
		LI_Address = lI_Address;
	}

	public int getLI_IsDisplay() {
		return LI_IsDisplay;
	}

	public void setLI_IsDisplay(int lI_IsDisplay) {
		LI_IsDisplay = lI_IsDisplay;
	}

	public int getLI_IsDelete() {
		return LI_IsDelete;
	}

	public void setLI_IsDelete(int lI_IsDelete) {
		LI_IsDelete = lI_IsDelete;
	}

	public String getLI_CreateTime() {
		return LI_CreateTime;
	}

	public void setLI_CreateTime(String lI_CreateTime) {
		LI_CreateTime = lI_CreateTime;
	}

	public String getLI_ModifyTime() {
		return LI_ModifyTime;
	}

	public void setLI_ModifyTime(String lI_ModifyTime) {
		LI_ModifyTime = lI_ModifyTime;
	}

	@Override
	public String toString() {
		return "News_LinkInfo [LI_Id=" + LI_Id + ", LI_Name=" + LI_Name + ", LI_Address=" + LI_Address
				+ ", LI_IsDisplay=" + LI_IsDisplay + ", LI_IsDelete=" + LI_IsDelete + ", LI_CreateTime=" + LI_CreateTime
				+ ", LI_ModifyTime=" + LI_ModifyTime + "]";
	}

	
}
