package org.Salody.DTO;

public class PageDTO {

	//泥섏쓬�럹�씠吏� - 1, 11, 21, 31
	private int startPage;
	//�걹 �럹�씠吏� - 10, 20, 30, 40
	private int endPage;
	//tb1_board�쓽 �쟾泥� �뜲�씠�꽣 �닔
	private int total;
	//�씠�쟾踰꾪듉() - true or false
	private boolean prev;
	//�떎�쓬踰꾪듉() - true or false
	private boolean next;
	//BrdCriteria DAO�븘�넻 異붽�
	private BrdCriteria bcri;

	
	public PageDTO(BrdCriteria bcri, int total) {
	//怨꾩궛�떇 �젙�쓽	
		this.bcri=bcri;
		this.total=total;
		
		//endPage (criteria�쓽 this.pageNum -> getter -> private -> DTO)
		this.endPage=(int)(Math.ceil(bcri.getPageNum()/10.0))*10;
		//startPage
		this.startPage=this.endPage-9;
		
		//nowendPage 怨꾩궛�떇 (留덉�留� �럹�씠吏�媛� 40�씠 �븘�땶 30�� �씪�븣)
		int nowendPage=(int)(Math.ceil((total*1.0)/bcri.getInAmount()));
		//留덉�留� �럹�씠吏�留� 30��濡� �떎瑜닿쾶 �굹�삩�떎.
		if(nowendPage<endPage) {
			this.endPage=nowendPage;
		}
		//prev 踰꾪듉
		this.prev=this.startPage >1;
		//next 踰꾪듉
		this.next=this.endPage < nowendPage;
		
	}	
	
	
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public BrdCriteria getBcri() {
		return bcri;
	}
	public void setBcri(BrdCriteria bcri) {
		this.bcri = bcri;
	}
	
	
	
	
}
