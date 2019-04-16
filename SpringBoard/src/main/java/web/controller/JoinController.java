package web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.dao.face.JoinDao;
import web.dto.Member;
import web.service.face.JoinService;

@Controller
public class JoinController {

	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);

	@Autowired JoinService joinService;
	
	@RequestMapping(value="/member/join", method=RequestMethod.GET)
	public void join() {
		
	}
	
	@RequestMapping(value="/member/join", method=RequestMethod.POST)
	public String memberInsert(Member member, Model model) {
		System.out.println(member);
		joinService.memberInsert(member);
		return "member/loginMain";
	}
	
	/* 공통 처리?
	 @RequestMapping(value="/common/alert", method=RequestMethod.GET)
	 public void joinComplete(Model model) {
		 model.addAttribute("msg", "회원가입이 완료되었습니다! \t 가입하신 정보로 로그인해주세요"); 
		 model.addAttribute("url", "/member/loginMain");
	 }
	 */
}
