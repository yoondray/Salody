package org.Salody.Service;

import org.Salody.DTO.memberDTO;

public interface MemberService {

	//ȸ������ �� �Է�
	public void Postwrite(memberDTO mdto);
		
	//member list 
	
	//���̻�������
	public memberDTO Mypage(memberDTO mdto);
	//�������� ���� �ϱ�(��ư������ UPdate)
	public void Update(memberDTO mdto);
	//Ż���ϱ�
	public void Delete(memberDTO mdto);
	//�α���
	public memberDTO mlogin(memberDTO mdto);

	
	
}
