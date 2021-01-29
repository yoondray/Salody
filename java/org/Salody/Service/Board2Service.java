package org.Salody.Service;

import java.util.ArrayList;

import org.Salody.DTO.BoardAttachDTO;
import org.Salody.DTO.BoardDTO;
import org.Salody.DTO.BrdCriteria;

//Interface - class�쓽 �몴以��씠 �릺�뒗 �뙆�씪
public interface Board2Service {
	//寃뚯떆�뙋 湲��벐湲�(異붿긽硫붿냼�뱶)
	public void write2(BoardDTO bdto);
	
	//寃뚯떆�뙋 由ъ뒪�듃
	//list�뒗 �뿬�윭嫄� 異쒕젰�릺湲곕븣臾몄뿉 
	//DAO.xml - service�뿉 ArrayList異붽� - serviceImpl 異붽�
	public ArrayList<BoardDTO> list2(BrdCriteria bcri);
	
	//寃뚯떆�뙋 �긽�꽭 �럹�씠吏�
	public BoardDTO detail2(BoardDTO bdto);
	
	public ArrayList<BoardAttachDTO> showImg(int bno);
	
	//寃뚯떆�뙋 湲� �닔�젙
	public void update2(BoardDTO bdto);
	
	//寃뚯떆�뙋 湲� �궘�젣
	public void delete2(BoardDTO bdto);
	
	//hit
	public void brdHit(BoardDTO bdto);
	
	//�럹�씠吏� 泥섎━
	public int getTotal();
	
}
