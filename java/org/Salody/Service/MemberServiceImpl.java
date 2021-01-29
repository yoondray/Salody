package org.Salody.Service;

import org.Salody.DTO.memberDTO;
import org.Salody.mapper.MemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
@Autowired
MemberDAO mdao;

//회원가입 폼 입력
	public void Postwrite(memberDTO mdto) {
		mdao.Postwrite(mdto);		
	}
	//member list 
	
	//마이상세페이지
	public memberDTO Mypage(memberDTO mdto) {
		return mdao.Mypage(mdto);
	}
	//개인정보 수정 하기
	public void Update(memberDTO mdto) {
		mdao.Update(mdto);
	}
	//탈퇴하기
	public void Delete(memberDTO mdto){
		mdao.Delete(mdto);
	}
	//로그인
	
	public memberDTO mlogin(memberDTO mdto) {
		return mdao.mlogin(mdto);
	}
}
