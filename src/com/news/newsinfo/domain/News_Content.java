/**
 * domain 新闻内容表
 * 
 * @author LW
 * @date 2018/04/18
 * @modify LW 2018/04/21
 *
 */
package com.news.newsinfo.domain;

public class News_Content {
private String NC_Id;//新闻内容Id
private String NC_Content;//新闻内容
private String NC_CreateTime;//新闻内容创建时间
public String getNC_Id() {
	return NC_Id;
}
public void setNC_Id(String nC_Id) {
	NC_Id = nC_Id;
}
public String getNC_Content() {
	return NC_Content;
}
public void setNC_Content(String nC_Content) {
	NC_Content = nC_Content;
}
public String getNC_CreateTime() {
	return NC_CreateTime;
}
public void setNC_CreateTime(String nC_CreateTime) {
	NC_CreateTime = nC_CreateTime;
}
public String getNC_ModifyTime() {
	return NC_ModifyTime;
}
public void setNC_ModifyTime(String nC_ModifyTime) {
	NC_ModifyTime = nC_ModifyTime;
}
private String NC_ModifyTime;//新闻内容修改时间

}
