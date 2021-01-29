package org.Salody.mapper;

import java.util.ArrayList;

import org.Salody.DTO.BoardAttachDTO;
import org.Salody.DTO.BoardDTO;
import org.Salody.DTO.BrdCriteria;

public interface BoardDAO {
	//湲��벐湲곕�� �쐞�븳 DAO
	public void write2(BoardDTO bdto);
	//由ъ뒪�듃 蹂닿린
	public ArrayList<BoardDTO> list2(BrdCriteria bcri);
	//�긽�꽭由ъ뒪�듃 蹂닿린
	public BoardDTO detail2(BoardDTO bdto);
	
	//寃뚯떆湲� �닔�젙
	public void update2(BoardDTO bdto);
	
	//寃뚯떆湲� �궘�젣
	public void delete2(BoardDTO bdto);
	
	//�럹�씠吏� 泥섎━
	public int getTotal();
	
	//hit
	public void brdHit(BoardDTO bdto);
	
}
