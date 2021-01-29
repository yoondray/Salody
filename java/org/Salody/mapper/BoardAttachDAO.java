package org.Salody.mapper;

import java.util.ArrayList;

import org.Salody.DTO.BoardAttachDTO;



public interface BoardAttachDAO {

	public void insert(BoardAttachDTO battdto);
	
	//寃뚯떆湲��뿉�꽌 �씠誘몄�蹂닿린
	public ArrayList<BoardAttachDTO> showImg(int bno);
}
