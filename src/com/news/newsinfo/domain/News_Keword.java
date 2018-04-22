
/**
 * domain 关键字
 * 
 * @author LW
 * @date 2018/04/18
 * @modify LW 2018/04/21
 *
 */
package com.news.newsinfo.domain;

public class News_Keword {

	private String NK_Id;//id
	private String NK_Content;//关键字内容
	private String NK_Color;//关键字背景颜色
	private int NK_Count;//关键字被引用次数
	private String NK_CreateTime;//关键字创建时间
	private String NK_ModifyTime;//关键字修改时间
	public String getNK_Id() {
		return NK_Id;
	}
	public void setNK_Id(String nK_Id) {
		NK_Id = nK_Id;
	}
	public String getNK_Content() {
		return NK_Content;
	}
	public void setNK_Content(String nK_Content) {
		NK_Content = nK_Content;
	}
	public String getNK_Color() {
		return NK_Color;
	}
	public void setNK_Color(String nK_Color) {
		NK_Color = nK_Color;
	}
	public int getNK_Count() {
		return NK_Count;
	}
	public void setNK_Count(int nK_Count) {
		NK_Count = nK_Count;
	}
	public String getNK_CreateTime() {
		return NK_CreateTime;
	}
	public void setNK_CreateTime(String nK_CreateTime) {
		NK_CreateTime = nK_CreateTime;
	}
	public String getNK_ModifyTime() {
		return NK_ModifyTime;
	}
	public void setNK_ModifyTime(String nK_ModifyTime) {
		NK_ModifyTime = nK_ModifyTime;
	}
	@Override
	public String toString() {
		return "News_Keword [NK_Id=" + NK_Id + ", NK_Content=" + NK_Content + ", NK_Color=" + NK_Color + ", NK_Count="
				+ NK_Count + ", NK_CreateTime=" + NK_CreateTime + ", NK_ModifyTime=" + NK_ModifyTime + "]";
	}
	
	
	
	
}
