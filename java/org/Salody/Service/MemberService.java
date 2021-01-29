package org.Salody.Service;

import org.Salody.DTO.memberDTO;

public interface MemberService {

	//회원가입 폼 입력
	public void Postwrite(memberDTO mdto);
		
	//member list 
	
	//마이상세페이지
	public memberDTO Mypage(memberDTO mdto);
	//개인정보 수정 하기(버튼누르기 UPdate)
	public void Update(memberDTO mdto);
	//탈퇴하기
	public void Delete(memberDTO mdto);
	//로그인
	public memberDTO mlogin(memberDTO mdto);

	
	
}
