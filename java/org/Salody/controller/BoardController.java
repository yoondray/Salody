package org.Salody.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.Salody.DTO.BoardAttachDTO;
import org.Salody.DTO.BoardDTO;
import org.Salody.DTO.BrdCriteria;
import org.Salody.DTO.PageDTO;
import org.Salody.Service.Board2ServiceImpl;

@Controller
@RequestMapping("/Board")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	Board2ServiceImpl bservice;
	
	@RequestMapping(value="/Board_Write", method=RequestMethod.GET)
	public void brdwrite2() {	
	}
	
	@RequestMapping(value="/writePost", method=RequestMethod.POST)
	public String postWrite(BoardDTO bdto, Model model) {
		System.out.println("writePost");
		
		bservice.write2(bdto);
		model.addAttribute("loadSult", "success");


		return "redirect:/Board/Board_List";	
	}

	@RequestMapping(value="/Board_List", method=RequestMethod.GET)
	public void getListPaging(BrdCriteria bcri, Model model) {
		int total=bservice.getTotal();

		model.addAttribute("list2",bservice.list2(bcri));
		model.addAttribute("pageMaker",new PageDTO(bcri,total));
	}
	
	@RequestMapping(value="/Board_EvtPage", method=RequestMethod.GET)
	public void showEvt() {
		
	}
	
	@RequestMapping(value="/Board_Read", method=RequestMethod.GET)
	public String detail2(Model model, BoardDTO bdto) {
		//bservice.detail2(bdto);
		//logger.info("값이 넘어가는지 확인" + detail2);
		model.addAttribute("detail2",bservice.detail2(bdto));
		return "/Board/Board_Read";
	}
	
	@RequestMapping(value="/{bno}",method=RequestMethod.GET)
	public ResponseEntity<ArrayList<BoardAttachDTO>> getDaction(@PathVariable("bno")int bno) {
		//System.out.println("이미지 출력화면 상세페이지="+bno);
		return new ResponseEntity<>(bservice.showImg(bno), HttpStatus.OK);
	}	
	
	@RequestMapping(value="/Board_Update", method=RequestMethod.GET)
	public void GetUpdate(BoardDTO bdto,Model model) {
	//selected결과를 전달해야하기때문에 Model을 활용한다.	
		model.addAttribute("update2",bservice.detail2(bdto));

	}
	
	@RequestMapping(value="/Board_Update", method=RequestMethod.POST)
	public String update2(BoardDTO bdto) {
		bservice.update2(bdto);

		return "redirect:/Board/Board_List";
	}
	
	@RequestMapping(value="/Board_Delete", method=RequestMethod.POST)
	public String delete2(BoardDTO bdto) {
		bservice.delete2(bdto);
		
		return "redirect:/Board/Board_List";
	}
}	

	