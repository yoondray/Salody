package org.Salody.mapper;

import org.Salody.DTO.memberDTO;

public interface MemberDAO {
		//ȸ������ �� �Է�
		public void Postwrite(memberDTO mdto);
		
		//���̻�������
		public memberDTO Mypage(memberDTO mdto);
		
		//�������� ���� �ϱ�
		public void Update(memberDTO mdto);
		
		//Ż���ϱ�
		public void Delete(memberDTO mdto);
		
		
		//�α���
		public memberDTO mlogin(memberDTO mdto);
}
