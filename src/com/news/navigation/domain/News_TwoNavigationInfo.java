package com.news.navigation.domain;

import java.util.List;

/**
 * class 二级导航
 * 
 * @author JXX
 * @date 2018/04/18
 * @modify LMJ 2018/04/27
 *
 */
public class News_TwoNavigationInfo{
	private String TNI_Id;
	private String TNI_BelongOneNavigator;
	private String TNI_Name;
	private int TNI_IsDisplay;
	private int TNI_Order;
	private String TNI_NavigatorIntroduce;
	private int TNI_IsDelete;
	private String TNI_CreateTime;
	private String TNI_ModifyTime;

	public String getTNI_Id() {
		return TNI_Id;
	}

	public void setTNI_Id(String tNI_Id) {
		TNI_Id = tNI_Id;
	}

	public String getTNI_BelongOneNavigator() {
		return TNI_BelongOneNavigator;
	}

	public void setTNI_BelongOneNavigator(String tNI_BelongOneNavigator) {
		TNI_BelongOneNavigator = tNI_BelongOneNavigator;
	}

	public String getTNI_Name() {
		return TNI_Name;
	}

	public void setTNI_Name(String tNI_Name) {
		TNI_Name = tNI_Name;
	}

	public int getTNI_IsDisplay() {
		return TNI_IsDisplay;
	}

	public void setTNI_IsDisplay(int tNI_IsDisplay) {
		TNI_IsDisplay = tNI_IsDisplay;
	}

	public int getTNI_Order() {
		return TNI_Order;
	}

	public void setTNI_Order(int tNI_Order) {
		TNI_Order = tNI_Order;
	}

	public String getTNI_NavigatorIntroduce() {
		return TNI_NavigatorIntroduce;
	}

	public void setTNI_NavigatorIntroduce(String tNI_NavigatorIntroduce) {
		TNI_NavigatorIntroduce = tNI_NavigatorIntroduce;
	}

	public int getTNI_IsDelete() {
		return TNI_IsDelete;
	}

	public void setTNI_IsDelete(int tNI_IsDelete) {
		TNI_IsDelete = tNI_IsDelete;
	}

	public String getTNI_CreateTime() {
		return TNI_CreateTime;
	}

	public void setTNI_CreateTime(String tNI_CreateTime) {
		TNI_CreateTime = tNI_CreateTime;
	}

	public String getTNI_ModifyTime() {
		return TNI_ModifyTime;
	}

	public void setTNI_ModifyTime(String tNI_ModifyTime) {
		TNI_ModifyTime = tNI_ModifyTime;
	}

	@Override
	public String toString() {
		return "News_TwoNavigationInfo [TNI_Id=" + TNI_Id + ", TNI_BelongOneNavigator=" + TNI_BelongOneNavigator
				+ ", TNI_Name=" + TNI_Name + ", TNI_IsDisplay=" + TNI_IsDisplay + ", TNI_Order=" + TNI_Order
				+ ", TNI_NavigatorIntroduce=" + TNI_NavigatorIntroduce + ", TNI_IsDelete=" + TNI_IsDelete
				+ ", TNI_CreateTime=" + TNI_CreateTime + ", TNI_ModifyTime=" + TNI_ModifyTime + "]";
	}

}
