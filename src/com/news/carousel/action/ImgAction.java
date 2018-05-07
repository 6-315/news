package com.news.carousel.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * 
 * @author Lw
 *
 */
public class ImgAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String imgName;
	private InputStream inputStream;

	/**
	 * 
	 * @return
	 */
	//显示图片的action
	public String carouseImgShow() {
		String path = "C://news/carousel/img/";
		path = path + imgName;
		File file = new File(path);
		try {
			inputStream = new FileInputStream(file);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return "getImg";

	}

	public String getImgName() {
		return imgName;
	}

	public void setImgName(String imgName) {
		this.imgName = imgName;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

}
