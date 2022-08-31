package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;

@RestController
public class AjaxController {

	@Inject
	private MemberService memberService;

	// 아이디 중복검사
	@RequestMapping(value = "/member/idDupCheck", method = RequestMethod.POST)
	public ResponseEntity<String> loginidCheck(HttpServletRequest request) {

		String userId=request.getParameter("userId");
		MemberDTO memberDTO=memberService.getMember(userId);

		String result="";
		if(memberDTO!=null) {	// 아이디 중복
			result="iddup";
		}else {					// 아이디 사용가능
			result="idok";
		}

		ResponseEntity<String> entity=new ResponseEntity<String>(result,HttpStatus.OK);
		return entity;
	}

	// 이메일 중복검사
	@RequestMapping(value = "/member/mailDupCheck", method = RequestMethod.POST)
	public ResponseEntity<String> loginmailCheck(HttpServletRequest request) {

		String userEmail=request.getParameter("userEmail");
		MemberDTO memberDTO=memberService.checkUserEmail(userEmail);

		String result="";
		if(memberDTO!=null) {	// 이메일 중복
			result="emaildup";
		}else {					// 이메일 사용가능
			result="emailok";
		}

		ResponseEntity<String> entity=new ResponseEntity<String>(result,HttpStatus.OK);
		return entity;
	}


	// 아이디 찾기
	@RequestMapping(value = "/member/idSearch", method = RequestMethod.POST)
	//	주소값이 아닌 출력값 담은 걸 리턴하겠다(데이터를 담아서 리턴한다), httpSR=아이디값
	public ResponseEntity<String> loginidSearch(MemberDTO memberDTO, HttpServletRequest request) {
		String userNm=request.getParameter("userNm");
		String userEmail=request.getParameter("userEmail");

		String userId=memberService.idSearch(memberDTO);

		memberDTO.setUserEmail(userEmail);
		memberDTO.setUserNm(userNm);

		String result="";
		if(userId!=null) {	// 아이디 있으면 출력
			result=userId;
		}else {				// 아이디 없음
			result="idno";
		}

		ResponseEntity<String> entity=new ResponseEntity<String>(result,HttpStatus.OK);
		return entity;
	}


}
