package org.Salody.DTO;

public class BoardAttachDTO {
	private long bno;
	//�뙆�씪怨� 愿��젴�맂 DTO
	private String fileName;
	private String uploadPath;
	private String uuid;
	
	public long getBno() {
		return bno;
	}
	public void setBno(long bno) {
		this.bno = bno;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	@Override
	public String toString() {
		return "BoardAttachDTO [bno=" + bno + ", fileName=" + fileName + ", uploadPath=" + uploadPath + ", uuid=" + uuid
				+ "]";
	}
	
	
	
}
