package org.Salody.Service;

import java.util.ArrayList;

import org.Salody.DTO.ReplyDTO;

public interface ReplyService {

	//�뙎湲� �벐湲�
	public int replyIns(ReplyDTO rdto);
	//�뙎湲� 議고쉶
	public ArrayList<ReplyDTO> replyList(int bno);
	//�뙎湲� �닔�젙
	public int replyUpt(ReplyDTO rdto);
	//�뙎湲� �궘�젣
	public int replyDel(ReplyDTO rdto);
}
