package org.Salody.DTO;

public class BrdCriteria {

	//�럹�씠吏� �닔
	private int pageNum;
	
	//�븳 �럹�씠吏��뿉 紐뉕컻�쓽 寃뚯떆湲��씠 �엳�뒗吏�
	private int inAmount;
	
	private String search;
	
	private String keyword;

	@Override
	public String toString() {
		return "BrdCriteria [pageNum=" + pageNum + ", inAmount=" + inAmount + ", search=" + search + ", keyword="
				+ keyword + "]";
	}
	public BrdCriteria() { //湲곕낯�깮�꽦�옄
		this(1,10); //�떎瑜� �깮�꽦�옄 �샇異� (�럹�씠吏� 1踰덈��꽣 10踰덇퉴吏�)
		
	}
	public BrdCriteria(int pageNum, int inAmount) {
		this.pageNum=pageNum;
		this.inAmount=inAmount;
	}
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getInAmount() {
		return inAmount;
	}
	public void setInAmount(int inAmount) {
		this.inAmount = inAmount;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
}
