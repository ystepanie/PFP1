package org.pfp.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.pfp.dto.BoardVO;
import org.pfp.dto.LikeVO;
import org.pfp.dto.MemberVO;
import org.pfp.dto.ReplyVO;
import org.pfp.service.BoardService;
import org.pfp.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/blog")
public class BlogController {
	
	@Inject
	private BoardService b_service;
	@Inject
	private MemberService m_service;
	
	@Resource(name="uploadPath")
	private String uploadPath;
   
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
   public void getListPage(Model model, @RequestParam("num") int num, @RequestParam(required = false, defaultValue = "-1") int order) throws Exception {
	   int count = b_service.count();
	   //한 페이지에 출력할 게시글의 개수 
	   int postNum = 12;
	   
	   //하단 페이징 번호(총 개수 / 한 페이지에 출력할 개수)의 올림
	   int pageNum = (int)Math.ceil((double)count/postNum);
	   
	   //출력 게시물 수
	   int displayPost = (num - 1) * postNum;
	   
	   List list = null;
	   
	   if(order == 0) {
		   list = b_service.listPopPage(displayPost, postNum);
	   }else if(order == 1) {
		   list = b_service.listNewPage(displayPost, postNum);
	   }else {
		   list = b_service.listPage(displayPost, postNum);
	   }
	   model.addAttribute("list", list);
	   model.addAttribute("pageNum", pageNum);
	   model.addAttribute("order", order);
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
      
      b_service.boardViewCnt(boardCode);
	   
	  BoardVO vo = b_service.view(boardCode);
      LikeVO vo2 = b_service.like_Check(boardCode);
      
      model.addAttribute("view", vo);
      model.addAttribute("like", vo2);
//      //댓글 리스트 출력 
//      List<ReplyVO> reply = b_service.replyList(boardCode);
//      model.addAttribute("reply", reply);
	   
   }
   
   //개인 블로그 페이지
   @GetMapping("/myblog")
   public void getMyblog(@RequestParam("userId") String userId, Model model, HttpSession session) throws Exception {
	   int count = b_service.count();
	   MemberVO vo = m_service.memberInfo(userId);
	   model.addAttribute("vo", vo);
	   model.addAttribute("count", count);
	   List<BoardVO> list = null;
	   list = b_service.personalList(userId);
	   
	   
	   model.addAttribute("list", list);
   }
   
   //무한 스크롤 다운 
   @PostMapping("/infiniteScrollDown")
   public @ResponseBody List<BoardVO> infiniteScrollDownPost(@RequestBody BoardVO boardVO) throws Exception {
	   logger.info("infiniteScrollDown Post");
	   
	   Integer boardCodeStart = boardVO.getBoardCode()-1;
	   
	   return b_service.infiniteScrollDown(boardCodeStart);
   }
   
   //댓글 목록 ajax
   @ResponseBody
   @GetMapping("/replyList")
   public List<ReplyVO> getReplyList(@RequestParam("no") int boardCode) throws Exception {
	   logger.info("get replyList");
	   
	   List<ReplyVO> reply = b_service.replyList(boardCode);
	   
	   return reply;
   }
   
   //좋아요 수 조회
   @ResponseBody
   @GetMapping("/likeView")
   public int getLikeView(@RequestParam("no") int boardCode) throws Exception {
	   logger.info("get likeView");
	  int good = b_service.likeView(boardCode);
	   return good;
   }
   
   //좋아요 추가,삭제
   @ResponseBody
   @GetMapping("/likeAdd")
   public void getLikeAdd(HttpSession session, int boardCode) throws Exception {
	   logger.info("post likeAdd");
	   String userId = (String)session.getAttribute("userId");
	  JsonObject obj = new JsonObject();
	
	  ArrayList<String> msgs = new ArrayList<String>();
	  HashMap<String,Object> hashMap = new HashMap<String,Object>();
	  hashMap.put("boardCode", boardCode);
	  hashMap.put("userId", userId);
	  LikeVO likeVO = b_service.like_Check(boardCode);
	  
	  if(likeVO.getLikeCheck() == 1) {
		  msgs.add("좋아요취소");
		  b_service.likeCancel(likeVO.getLikeCheck());
	  } else {
		  msgs.add("좋아요");
		  b_service.likeAdd(likeVO.getLikeCheck());
	  }
//	  obj.put("boardCode",likeVO.getBoardCode());
   }
   
//   //좋아요 감소
//   @ResponseBody
//   @PostMapping("/likeCancel")
//   public void getLikeCancel(LikeVO vo, HttpSession session) throws Exception {
//	   logger.info("post likeCancel");
//	   MemberVO member = (MemberVO)session.getAttribute("member");
//	   vo.setUserId(member.getUserId());
//	   b_service.likeCancel(vo.getLikeCheck());
//   }
   
   //ckeditor에서 업로드
   @PostMapping("/ckUpload")
   public void hadleFileUpload(HttpServletRequest request, HttpServletResponse response,
		   @RequestParam MultipartFile upload) {
	   logger.info("post CKEditor img upload");
		 
		 // 랜덤 문자 생성
		 UUID uid = UUID.randomUUID();
		 
		 OutputStream out = null;
		 PrintWriter printWriter = null;
		   
		 // 인코딩
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 
		 try {
		  
		  String fileName = upload.getOriginalFilename(); // 파일 이름 가져오기
		  byte[] bytes = upload.getBytes();
		  
		  // 업로드 경로
		  String ckUploadPath = uploadPath + File.separator + uid + "_" + fileName;
		  out = new FileOutputStream(new File(ckUploadPath));
		  out.write(bytes);
		  out.flush(); // out에 저장된 데이터를 전송하고 초기화
		  
		  String callback = request.getParameter("CKEditorFuncNum");
		  printWriter = response.getWriter();
		  String fileUrl = request.getContextPath()+ "/ckUpload/" + uid + "_" + fileName; // 작성화면
		  
		  // 업로드시 메시지 출력
		  printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
		  
		  printWriter.flush();
		  
		 } catch (IOException e) { e.printStackTrace();
		 } finally {
		  try {
		   if(out != null) { out.close(); }
		   if(printWriter != null) { printWriter.close(); }
		  } catch(IOException e) { e.printStackTrace(); }
		 }
		 
		 return; 
   }
   
//   //블로그 댓글 작성
//   @PostMapping(value="/detail")
//   public String registReply(ReplyVO reply, HttpSession session) throws Exception {
//	   logger.info("regist reply");
//	   
//	   MemberVO member = (MemberVO)session.getAttribute("member");
//	   reply.setUserId(member.getUserId());
//	   
//	   b_service.registReply(reply);
//	   
//	   return "redirect:/blog/detail?no="+reply.getBoardCode();
//   }
   
   //댓글 작성 ajax
   @ResponseBody
   @PostMapping("/registReply")
   public void registReply(ReplyVO reply, HttpSession session) throws Exception {
	   logger.info("registReply");
	   
	   MemberVO member = (MemberVO)session.getAttribute("member");
	   reply.setUserId(member.getUserId());
	   
	   b_service.registReply(reply);
   }
   
   //댓글 삭제 
   @ResponseBody
   @PostMapping("/deleteReply")
   public int deleteReplyList(ReplyVO reply, HttpSession session) throws Exception {
	   logger.info("delete reply");
	   
	   int result = 0;
	   
	   MemberVO member = (MemberVO)session.getAttribute("member");
	   String userId = b_service.idCheck(reply.getCommentNum());
	   if(member.getUserId().equals(userId)) {
		   reply.setUserId(member.getUserId());
		   b_service.deleteReply(reply);
		   
		   result = 1;
	   }
	   
	   return result;
   }
   
   //댓글 수정
   @ResponseBody
   @PostMapping("/modifyReply")
   public int modifyReply(ReplyVO reply, HttpSession session) throws Exception {
	   logger.info("modify reply");
	   
	   int result =0;
	   
	   MemberVO member = (MemberVO)session.getAttribute("member");
	   String userId = b_service.idCheck(reply.getCommentNum());
	   logger.info(userId+","+member.getUserId());
	   if(member.getUserId().equals(userId)) {
		   reply.setUserId(member.getUserId());
		   b_service.modifyReply(reply);
		   result = 1;
	   }
	   return result;
	   
	   
   }

}