package org.Salody.DTO;

import java.util.ArrayList;

public class BoardDTO {
	private int bno;
	private String title;
	private String content;
	private String writer;
	private String regiDate;
	private String updateDate;
	private int visit;
	
	//BoardDTO - BoardAttachDTO
	private ArrayList<BoardAttachDTO> attachList;
	
	@Override
	public String toString() {
		return "BoardDTO [bno=" + bno + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", regiDate=" + regiDate + ", updateDate=" + updateDate + ", visit=" + visit + ", attachList="
				+ attachList + "]";
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getRegiDate() {
		return regiDate;
	}
	public void setRegiDate(String regiDate) {
		this.regiDate = regiDate;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	public int getVisit() {
		return visit;
	}
	public void setVisit(int visit) {
		this.visit = visit;
	}
	public ArrayList<BoardAttachDTO> getAttachList() {
		return attachList;
	}
	public void setAttachList(ArrayList<BoardAttachDTO> attachList) {
		this.attachList = attachList;
	}

	
	
	
	
}
