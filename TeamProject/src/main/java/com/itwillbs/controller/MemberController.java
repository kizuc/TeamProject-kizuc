package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.domain.CompDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.mail.MailUtils;
import com.itwillbs.mail.TempKey;
import com.itwillbs.service.MemberService;

@Controller
public class MemberController {

	@Inject
	private MemberService memberService;

	// 회원가입(유저)
	@RequestMapping(value = "/member/join", method = RequestMethod.GET)
	public String insert() {
		return "member/insertUserForm";
	}
	@RequestMapping(value = "/member/joinMemPro", method = RequestMethod.POST)
	public String insertPro(MemberDTO memberDTO, Model model) throws Exception {
		memberService.insertMember(memberDTO);
		model.addAttribute("memberDTO",memberDTO);
		return "redirect:/member/joinEmailCheck";
	}

	// 이메일 인증 요청
	@RequestMapping(value = "/member/joinEmailCheck", method = RequestMethod.GET)
	public String emailCheck(MemberDTO memberDTO, Model model) throws Exception{
		model.addAttribute("memberDTO",memberDTO);
		return "member/joinEmailCheck";
	}
	// 이메일 인증 완료
	@RequestMapping(value = "/member/joinSuccess", method = RequestMethod.GET)
	public String joinSuccess(MemberDTO memberDTO) throws Exception{
		memberService.updateEmailAuth(memberDTO);
		System.out.println(memberService.updateEmailAuth(memberDTO));
		System.out.println(memberDTO+"나");
		// 이메일 인증 성공 시 추가정보 입력 후 관심있는 운동에 대한 추천
		return "member/joinSuccess";
	}

	// 회원가입(업체)
	@RequestMapping(value = "/member/joinComp", method = RequestMethod.GET)
	public String insertComp() {
		// 주소변경없이 이동
		return "member/insertUserForm";
	}
	@RequestMapping(value = "/member/joinCompPro", method = RequestMethod.POST)
	public String insertCompPro(CompDTO compDTO) {
		// 메서드 호출
		memberService.insertComp(compDTO);

		// 주소변경 이동
		return "redirect:/member/login";
	}

	// 로그인(유저)
	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String login() {
		return "member/login";
	}
	@RequestMapping(value = "/member/loginPro", method = RequestMethod.POST)
	// jsp는 세션이 자동으로 만들어지지만 자바는 HttpSession으로 만들어야한다
	public String loginPro(MemberDTO memberDTO, HttpSession session) throws Exception {
		// 메서드 호출
		MemberDTO memberDTO2=memberService.userCheck(memberDTO);

		// 아이디 비밀번호 일치하지 않으면 오류 메세지 출력
		if(memberDTO2==null) {
			return "/member/msg";
		}

        // 이메일 인증유무 확인 후 1이 아닌 경우, 인증확인 메세지
        if (memberService.emailAuthFail(memberDTO.getUserId()) != 1) {
            return "/member/emailAuthFail";
        }

        // 로그인 세션값 생성
		session.setAttribute("userId", memberDTO.getUserId());

		// main/main 이동
		return "redirect:/main/main";
	}

	// 로그인(업체)
	@RequestMapping(value = "/member/loginCompPro", method = RequestMethod.POST)
	public String loginCompPro(CompDTO compDTO, HttpSession session) {
		CompDTO compDTO2=memberService.compCheck(compDTO);
		if(compDTO2!=null) {
			session.setAttribute("compId", compDTO.getCompId());

			return "redirect:/main/main";
		}else {
			return "/member/msg";
		}
	}


	// 아이디 찾기 페이지
	@RequestMapping(value = "/member/loginIdSearch", method = RequestMethod.GET)
	public String idSearch(MemberDTO memberDTO, Model model) throws Exception{
		return "member/loginIdSearch";
	}

	// 아이디 찾기
	@ResponseBody
	@RequestMapping(value = "/member/idSearchPro", method = RequestMethod.POST)
	public String idSearchPro(@ModelAttribute MemberDTO memberDTO, HttpServletResponse response) {
		String result = "";
		if(memberService.idSearch(memberDTO)==null) {	// 아이디가 널이 아닌 경우
			result = "no";
		}else {											// 아이디 있으면 아이디 출력
			result = memberService.idSearch(memberDTO).substring
					(0, memberService.idSearch(memberDTO).length() - 4)+"****";
		}
		return result;
	}

	// 비밀번호 찾기
	@RequestMapping(value = "/member/loginPassSearch", method = RequestMethod.GET)
	public String findPass() throws Exception{
		return "member/loginPassSearch";
	}
	@RequestMapping(value = "/loginPassSearchPro", method = RequestMethod.POST)
	public String loginPassSearchPro(@ModelAttribute MemberDTO memberDTO, HttpServletResponse response) throws Exception{
		return "redirect:/main/main";
	}



	// 로그아웃
	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		// 세션값 초기화
		session.invalidate();
		// /member/main 이동
		// 주소변경 이동
		return "redirect:/main/main";
	}

	@RequestMapping(value = "/member/mypage", method = RequestMethod.GET)
	public String memberMypage() {
		return "member/mypage";
	}

	@RequestMapping(value = "/basic/basic-badge-button", method = RequestMethod.GET)
	public String basicBasicBadgeButton() {
		return "basic/basic-badge-button";
	}
	@RequestMapping(value = "/basic/basic-form", method = RequestMethod.GET)
	public String basicBasicForm() {
		return "basic/basic-form";
	}
	@RequestMapping(value = "/basic/basic-menu-table", method = RequestMethod.GET)
	public String basicBasicMenuTable() {
		return "basic/basic-menu-table";
	}

	@RequestMapping(value = "/main/main", method = RequestMethod.GET)
	public String indexMain() {
		return "main/main";
	}
	@RequestMapping(value = "/product/shop", method = RequestMethod.GET)
	public String productShop() {
		return "product/shop";
	}
	@RequestMapping(value = "/product/details", method = RequestMethod.GET)
	public String productDetail() {
		return "product/details";
	}

	@RequestMapping(value = "/food/shop", method = RequestMethod.GET)
	public String foodShop() {
		return "food/shop";
	}
	@RequestMapping(value = "/food/details", method = RequestMethod.GET)
	public String foodDetail() {
		return "food/details";
	}
	@RequestMapping(value = "/member/account-connections", method = RequestMethod.GET)
	public String memberAccountConnections() {
		return "member/account-connections";
	}
	@RequestMapping(value = "/member/account-modiify", method = RequestMethod.GET)
	public String memberAccountModiify() {
		return "member/account-modiify";
	}
	@RequestMapping(value = "/member/cards-basic", method = RequestMethod.GET)
	public String memberCardsBasic() {
		return "member/cards-basic";
	}
	@RequestMapping(value = "/member/form-layouts-horizontal", method = RequestMethod.GET)
	public String memberFormLayoutsHorizontal() {
		return "member/form-layouts-horizontal";
	}
	@RequestMapping(value = "/member/form-layouts-vertical", method = RequestMethod.GET)
	public String memberFormLayoutsVertical() {
		return "member/form-layouts-vertical";
	}
	@RequestMapping(value = "/member/forms-basic-inputs", method = RequestMethod.GET)
	public String memberFormBasicInputs() {
		return "member/forms-basic-inputs";
	}
	@RequestMapping(value = "/member/forms-input-groups", method = RequestMethod.GET)
	public String memberFormInputGroups() {
		return "member/forms-input-groups";
	}
	@RequestMapping(value = "/member/tables", method = RequestMethod.GET)
	public String memberTables() {
		return "member/tables";
	}
	@RequestMapping(value = "/member/ui-buttons", method = RequestMethod.GET)
	public String memberUiButtons() {
		return "member/ui-buttons";
	}
	@RequestMapping(value = "/member/ui-pagination", method = RequestMethod.GET)
	public String memberUiPagination() {
		return "member/ui-pagination";
	}


	@RequestMapping(value = "/order/cart", method = RequestMethod.GET)
	public String orderCart() {
		return "order/cart";
	}
	@RequestMapping(value = "/order/checkout", method = RequestMethod.GET)
	public String orderCheckout() {
		return "order/checkout";
	}


	@RequestMapping(value = "/member/info", method = RequestMethod.GET)
	public String info(HttpSession session, Model model) {
//		// 세션값 가져오기
		String userId=(String)session.getAttribute("userId");
		// id에 대한 정보를 디비에 가져오기
		MemberDTO memberDTO = memberService.getMember(userId);
		// 가져온 정보를 담아 info.jsp 이동
		model.addAttribute("memberDTO",memberDTO);

//		// 주소변경없이 이동
		// WEB-INF/views/member/info.jsp 이동
		return "member/info";
	}



}
