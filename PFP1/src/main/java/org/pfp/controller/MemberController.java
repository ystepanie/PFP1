package org.pfp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.pfp.dto.MemberVO;
import org.pfp.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService m_service;
	
	//회원가입 get
	@GetMapping("/register")
	public void getregister() throws Exception {
		logger.info("get Register");
	}
	
	//회원가입 post
	@PostMapping("/register")
	public String postregister(MemberVO vo) throws Exception {
		logger.info("post Register");
		
		m_service.register(vo);
		
		return "redirect:/";
	}
	
	//로그인 get
		@GetMapping("/login")
		public void getLogin() throws Exception {
			logger.info("get login");
		}

	//로그인 post
	@PostMapping("/login")
	public String postLogin(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post login");
		
		HttpSession session = req.getSession();
		 
		MemberVO login = m_service.login(vo);
		
		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:login";
		} else {
			session.setAttribute("member", login);
			return "redirect:/";
		}
		
		
	}
	
}
