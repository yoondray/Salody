package org.Salody.Service;

import org.Salody.DTO.memberDTO;
import org.Salody.mapper.MemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
@Autowired
MemberDAO mdao;

//ȸ������ �� �Է�
	public void Postwrite(memberDTO mdto) {
		mdao.Postwrite(mdto);		
	}
	//member list 
	
	//���̻�������
	public memberDTO Mypage(memberDTO mdto) {
		return mdao.Mypage(mdto);
	}
	//�������� ���� �ϱ�
	public void Update(memberDTO mdto) {
		mdao.Update(mdto);
	}
	//Ż���ϱ�
	public void Delete(memberDTO mdto){
		mdao.Delete(mdto);
	}
	//�α���
	
	public memberDTO mlogin(memberDTO mdto) {
		return mdao.mlogin(mdto);
	}
}
