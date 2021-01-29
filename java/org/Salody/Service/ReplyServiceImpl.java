package org.Salody.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.Salody.DTO.ReplyDTO;
import org.Salody.mapper.ReplyDAO;

@Service
//�뙎湲��벐湲곗� 愿��젴�맂 DAO�뿰寃�
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	ReplyDAO rdao;
	
	@Override
	public int replyIns(ReplyDTO rdto) {
		return rdao.replyIns(rdto);
	}

	public ArrayList<ReplyDTO> replyList(int bno) {
		return rdao.replyList(bno);
	}
	
	public int replyDel(ReplyDTO rdto) {
		return rdao.replyDel(rdto);
	}	
	
	public int replyUpt(ReplyDTO rdto) {
		return rdao.replyUpt(rdto);
	}



}
