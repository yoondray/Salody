package org.Salody.DTO;

public class ReplyDTO {

	private int reno;
	private int bno;
	private String replyText;
	private String replyPpl;
	private String replyDate;
	private String reupDate;
	
	@Override
	public String toString() {
		return "ReplyDTO [reno=" + reno + ", bno=" + bno + ", replyText=" + replyText + ", replyPpl=" + replyPpl
				+ ", replyDate=" + replyDate + ", reupDate=" + reupDate + "]";
	}
	
	public int getReno() {
		return reno;
	}
	public void setReno(int reno) {
		this.reno = reno;
	}
	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getReplyText() {
		return replyText;
	}

	public void setReplyText(String replyText) {
		this.replyText = replyText;
	}

	public String getReplyPpl() {
		return replyPpl;
	}

	public void setReplyPpl(String replyPpl) {
		this.replyPpl = replyPpl;
	}

	public String getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(String replyDate) {
		this.replyDate = replyDate;
	}

	public String getReupDate() {
		return reupDate;
	}

	public void setReupDate(String reupDate) {
		this.reupDate = reupDate;
	}

	
	
}
