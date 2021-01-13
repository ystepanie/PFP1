package org.pfp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.pfp.dto.BoardVO;
import org.pfp.dto.MemberVO;
import org.pfp.dto.ReplyVO;
import org.pfp.service.BoardService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/blog")
public class BlogController {
	
	@Inject
	private BoardService b_service;
   
   private static final Logger logger = LoggerFactory.getLogger(BlogController.class);
   
   /**
    * Simply selects the home view to render by returning its name.
    */
   
   //블로그 기본 페이지
   @GetMapping("/blog")
   public String getBlog(Model model) throws Exception {
	   
	   List<BoardVO> list = null;
	   list = b_service.list();
	   model.addAttribute("list", list);
	   return "blog/blog";
   }
   //블로그 + 페이징
   //페이징 num은 현재 페이지 번호
   @GetMapping("/listPage")
   public void getListPage(Model model, @RequestParam("num") int num) throws Exception {
	   int count = b_service.count();
	   //한 페이지에 출력할 게시글의 개수 
	   int postNum = 12;
	   
	   //하단 페이징 번호(총 개수 / 한 페이지에 출력할 개수)의 올림
	   int pageNum = (int)Math.ceil((double)count/postNum);
	   
	   //출력 게시물 수
	   int displayPost = (num - 1) * postNum;
	   
	   List list = null;
	   
	   
	   list = b_service.listPage(displayPost, postNum);
	   model.addAttribute("list", list);
	   model.addAttribute("pageNum", pageNum);
	  
	   model.addAttribute("select", num);
	   model.addAttribute("count",count);
   }
   
   @PostMapping("/blog_resist")
   public String postBlog_resist(BoardVO vo) throws Exception {
	   b_service.resist(vo);
	   
	   return "redirect:/blog/listPage?num=1";
   }
   
   @GetMapping("/blog_resist")
   public String getBlog_resist() throws Exception {
	   
	   return "blog/blog_resist";
   }
   
 //블로그 상세보기 페이지 
   @GetMapping("/detail")
   public void getDetail(@RequestParam("no") int boardCode, Model model) throws Exception {
      BoardVO vo = b_service.view(boardCode);
      
      model.addAttribute("view", vo);
      //댓글 리스트 출력 
      List<ReplyVO> reply = b_service.replyList(boardCode);
      model.addAttribute("reply", reply);
	   
   }
   
   //블로그 댓글 작성
   @PostMapping(value="/detail")
   public String registReply(ReplyVO reply, HttpSession session) throws Exception {
	   logger.info("regist reply");
	   
	   MemberVO member = (MemberVO)session.getAttribute("member");
	   reply.setUserId(member.getUserId());
	   
	   b_service.registReply(reply);
	   
	   return "redirect:/blog/detail?no="+reply.getBoardCode();
   }
   
   
}