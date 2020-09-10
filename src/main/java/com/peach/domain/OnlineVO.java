package com.peach.domain;

import java.sql.Blob;

public class OnlineVO {
	private int no;
	private String name;
	private String url;
	private String writer;
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getNo() {
		return no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Blob getImg() {
		return img;
	}
	public void setImg(Blob img) {
		this.img = img;
	}
	private Blob img;
	
}
