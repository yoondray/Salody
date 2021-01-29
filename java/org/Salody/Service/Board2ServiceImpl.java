package org.Salody.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import org.Salody.DTO.BoardAttachDTO;
import org.Salody.DTO.BoardDTO;
import org.Salody.DTO.BrdCriteria;
import org.Salody.mapper.BoardAttachDAO;
import org.Salody.mapper.BoardDAO;

@Service
public class Board2ServiceImpl implements Board2Service {
	
	@Autowired
	BoardDAO bdao;	
	@Autowired
	BoardAttachDAO battdao;
	
	@Transactional

	public void write2(BoardDTO bdto) {
		bdao.write2(bdto);
	
		if(bdto.getAttachList()!=null) {
			bdto.getAttachList().forEach(attach->{

				attach.setBno(bdto.getBno());
				battdao.insert(attach);
			
			});			
		}

	}
	public ArrayList<BoardDTO> list2(BrdCriteria bcri){
		return bdao.list2(bcri);
	}
	public BoardDTO detail2(BoardDTO bdto) {
		bdao.brdHit(bdto);
		
		return bdao.detail2(bdto);
	}
	
	public ArrayList<BoardAttachDTO> showImg(int bno) {
		return battdao.showImg(bno);
	}
	public void update2(BoardDTO bdto) {
		bdao.update2(bdto);
	}
	public void delete2(BoardDTO bdto) {
		bdao.delete2(bdto);		
	}

	public void brdHit(BoardDTO bdto) {
		
	}
	
	public int getTotal() {
		return bdao.getTotal();
	}

}
