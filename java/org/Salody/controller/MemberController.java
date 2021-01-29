package org.Salody.controller;


import javax.servlet.http.HttpSession;

import org.Salody.DTO.memberDTO;
import org.Salody.Service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/Member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	MemberService mservice;
	
	//ȸ������������
	@RequestMapping(value="/Member_Join", method = RequestMethod.GET)
	public void Getwrite() {
		//logger.info("write");
	}
	//ȸ�����Թ�ư�� �������� (Insert)
	@RequestMapping(value="/write", method= RequestMethod.POST)
	public String Postwrite(memberDTO mdto) {
		mservice.Postwrite(mdto);
		return "redirect:/";
	}
	//Mypage ȭ�� �ѷ��ֱ�(Select)
	@RequestMapping(value = "/Member_Mypage", method = RequestMethod.GET)
	public void Mypage(memberDTO mdto, Model model) {
		model.addAttribute("Mypage", mservice.Mypage(mdto));
	}
	//����ȭ��(Update) - Mypage �ѷ��ذ� �Ȱ��� �ѷ��ֱ�(Select)
	@RequestMapping(value="/Member_Update", method =RequestMethod.POST)
	public void GetUpdate(memberDTO mdto, Model model) {
		//logger.info("mdto="+mdto);
		model.addAttribute("Mypage",mservice.Mypage(mdto));
	}
	
	//������ư�������� ���� Update
	@RequestMapping(value = "/Member_Update2", method=RequestMethod.POST)
	public String Update(memberDTO mdto, RedirectAttributes rttr) {
		mservice.Update(mdto);
		logger.info("mdto2="+mdto);
		rttr.addAttribute("id",mdto.getId()); //"������","��"
		return "redirect:/Member/Member_Mypage";
		
	}
	
	//Ż���ư�������� ���� Delete
	@RequestMapping(value = "/Member_Delete", method=RequestMethod.POST)
	public void Delete(memberDTO mdto, HttpSession session) {
		session.invalidate();
		mservice.Delete(mdto);
	}
	
	
	
	
	
	
	//�α���
	@RequestMapping(value = "/Member_Login", method = RequestMethod.GET)
	public void memberlogin() {
	}
	@RequestMapping(value = "/Member_LoginPost", method = RequestMethod.POST)
	public String mlogin(memberDTO mdto, RedirectAttributes rttr,HttpSession session) {
	
		memberDTO result=mservice.mlogin(mdto);
		logger.info("abcd");
		if(result==null) {
			//rttr.addAttribute("check", "fail");
			rttr.addFlashAttribute("check", "fail");
			return "redirect:/Member/Member_Login";
		}else {
			session.setAttribute("loginId", result.getId());
			logger.info("session ��="+session.getAttribute("loginId"));
			return "redirect:/";
		} 
	}
	// �α׾ƿ� ��ũ�� Ŭ������ ��
	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public String mlogout(HttpSession session) {
		// session�� ����Ǿ� �ִ� ���� ����
		session.invalidate();
		return "redirect:/Member/Member_Login";
	}
}

	

