package web.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.dto.Member;
import web.service.face.MemberService;

@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired MemberService memberService;
	
	
	@RequestMapping(value="/member/main", method=RequestMethod.GET)
	public void main(Model model) {
		logger.info("메인 폼 출력");
	}
	
	@RequestMapping(value="/member/login", method=RequestMethod.GET)
	public void login(Model model) {
		logger.info("로그인 폼 출력");
	}
	
	@RequestMapping(value="/member/login", method=RequestMethod.POST)
	public String loginComplete(String id, String pw, HttpSession session, Model model) {
	
		model.addAttribute("id", id);
		model.addAttribute("pw", pw);
		
		String returnUrl = "";
		
		int isMember = memberService.isMember(model);
		if(isMember == 1) {
			logger.info("로그인성공");
			boolean login = true;
			// 회원인경우 세션 처리
			session.setAttribute("login", true);
			session.setAttribute("id", id);
			// 닉네임 가져와서 저장
			String nick = memberService.getNick(id);
			System.out.println(nick);
			session.setAttribute("nick", nick);
			returnUrl = "member/main";
		} else {
			logger.info("로그인 실패");
			returnUrl = "common/alert";
		}
		return returnUrl;
	 }

	 
	@RequestMapping(value="/member/logout", method=RequestMethod.GET)
	public String logot(Model model, HttpSession session) {
		session.invalidate();
		logger.info("로그아웃");
		return "redirect:/member/main";
	}
	
	 
	 @RequestMapping(value="/common/alert", method=RequestMethod.GET)
	 public void loginErrorAlert(Model model) {
		 logger.info("로그인 실패 시 알럿 후 메인 리다이렉트");
		 model.addAttribute("msg", "아이디 혹은 비밀번호를 재확인해주세요"); 
		 model.addAttribute("url", "/member/main");
	 }
	
	@RequestMapping(value="/member/join", method=RequestMethod.GET)
	public void join() {
		
	}
	
	@RequestMapping(value="/member/join", method=RequestMethod.POST)
	public String memberInsert(Member member, Model model) {
		System.out.println(member);
		memberService.memberInsert(member);
		return "member/main";
	}
	
}
