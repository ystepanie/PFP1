package org.pfp.controller;

import javax.inject.Inject;

import org.pfp.dto.MemberVO;
import org.pfp.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService m_service;
	
	//회원가입 get
	@GetMapping("/login_register")
	public void getLogin_register() throws Exception {
		logger.info("get Register");
	}
	
	//회원가입 post
	@PostMapping("/login_register")
	public String postLogin_register(MemberVO vo) throws Exception {
		logger.info("post Register");
		
		m_service.register(vo);
		
		return "redirect:/";
	}

}
