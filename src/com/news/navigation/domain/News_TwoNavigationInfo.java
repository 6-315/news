package com.news.navigation.domain;

/**
 * class 二级导航
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify JXX 2018/04/18
 *
 */
public class News_TwoNavigationInfo {
	private String TNI_Id;// 二级标签Id
	private String ONI_Name;// 标签Name
	private int ONI_IsDisplay;// 标签是否显示displa
	private int ONI_Order;// 标签显示顺序Order
	private String ONI_NavigatorIntroduce;// 标签介绍
	private int ONI_IsDelete;// 标签是否被删除
	private String ONI_CreateTime;// 标签创建时间
	private String ONI_ModifyTime;// 标签修改时间

	public String getTNI_Id() {
		return TNI_Id;
	}

	public void setTNI_Id(String tNI_Id) {
		TNI_Id = tNI_Id;
	}

	public String getONI_Name() {
		return ONI_Name;
	}

	public void setONI_Name(String oNI_Name) {
		ONI_Name = oNI_Name;
	}

	public int getONI_IsDisplay() {
		return ONI_IsDisplay;
	}

	public void setONI_IsDisplay(int oNI_IsDisplay) {
		ONI_IsDisplay = oNI_IsDisplay;
	}

	public int getONI_Order() {
		return ONI_Order;
	}

	public void setONI_Order(int oNI_Order) {
		ONI_Order = oNI_Order;
	}

	public String getONI_NavigatorIntroduce() {
		return ONI_NavigatorIntroduce;
	}

	public void setONI_NavigatorIntroduce(String oNI_NavigatorIntroduce) {
		ONI_NavigatorIntroduce = oNI_NavigatorIntroduce;
	}

	public int getONI_IsDelete() {
		return ONI_IsDelete;
	}

	public void setONI_IsDelete(int oNI_IsDelete) {
		ONI_IsDelete = oNI_IsDelete;
	}

	public String getONI_CreateTime() {
		return ONI_CreateTime;
	}

	public void setONI_CreateTime(String oNI_CreateTime) {
		ONI_CreateTime = oNI_CreateTime;
	}

	public String getONI_ModifyTime() {
		return ONI_ModifyTime;
	}

	public void setONI_ModifyTime(String oNI_ModifyTime) {
		ONI_ModifyTime = oNI_ModifyTime;
	}

	@Override
	public String toString() {
		return "News_OneNavigationInfo [TNI_Id=" + TNI_Id + ", ONI_Name=" + ONI_Name + ", ONI_IsDisplay="
				+ ONI_IsDisplay + ", ONI_Order=" + ONI_Order + ", ONI_NavigatorIntroduce=" + ONI_NavigatorIntroduce
				+ ", ONI_IsDelete=" + ONI_IsDelete + ", ONI_CreateTime=" + ONI_CreateTime + ", ONI_ModifyTime="
				+ ONI_ModifyTime + "]";
	}

}
