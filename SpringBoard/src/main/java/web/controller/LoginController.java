package web.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import web.service.face.LoginService;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	
	@Autowired LoginService loginService;
	

	@RequestMapping(value="/member/loginMain", method=RequestMethod.GET)
	public void login(Model model) {
		
	}
	
	@RequestMapping(value="/member/loginMain", method=RequestMethod.POST)
	public void loginComplete(String id, String pw, HttpSession session, Model model) {

		model.addAttribute("id", id);
		model.addAttribute("pw", pw);
		
		String returnUrl = "";
		
		int isMember = loginService.inMember(model);
		if(isMember == 1) {
			logger.info("로그인성공");
			boolean login = true;
			// 회원인경우 세션 처리
			session.setAttribute("login", login);
			returnUrl = "member/loginMain";
		} else {
			returnUrl = "common/alert";
		}
	 }

	 @RequestMapping(value="/common/alert", method=RequestMethod.GET)
	 public void loginErrorAlert(Model model) {
		 model.addAttribute("msg", "아이디 혹은 비밀번호를 재확인해주세요"); 
		 model.addAttribute("url", "/member/loginMain");
	 }
}
