package org.Salody.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import org.Salody.DTO.ReplyDTO;
import org.Salody.Service.ReplyService;

	@RestController
	
	@RequestMapping(value="/replies", method=RequestMethod.GET)
	public class ReplyController {
		
		@Autowired
		ReplyService rpservice;

		@RequestMapping(value="/new", method=RequestMethod.POST)
		public ResponseEntity<String> replyWrt(@RequestBody ReplyDTO rdto) {

			int result=rpservice.replyIns(rdto);
		
			return result == 1 ? new ResponseEntity<>("Succeed",HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);		
		}
	
	@RequestMapping(value="/{bno}",method=RequestMethod.GET)
	public ResponseEntity<ArrayList<ReplyDTO>> getList(@PathVariable("bno")int bno) {
		//System.out.println("이미지갯수" + bno);
		return new ResponseEntity<>(rpservice.replyList(bno), HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/del", method=RequestMethod.DELETE)
	public ResponseEntity<String> replyDelete(@RequestBody ReplyDTO rdto) {

		int delsult = rpservice.replyDel(rdto);
		
		return delsult == 1 ? new ResponseEntity<>("Deleted", HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(value="/upt", method=RequestMethod.PUT)
	public ResponseEntity<String> replyUpdate(@RequestBody ReplyDTO rdto) {
		int upsult = rpservice.replyUpt(rdto);
		
		return upsult == 1 ? new ResponseEntity<>("Updated", HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
