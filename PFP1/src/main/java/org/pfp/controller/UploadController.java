package org.pfp.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.pfp.dto.MemberVO;
import org.pfp.util.S3Util;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

public class UploadController {
	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);
	
	S3Util s3 = new S3Util();
	String bucketName = "macapig-puzzle-bucket";
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value="/uploadAjax", method=RequestMethod.GET)
	public void uploadAjax() {
		
	}
	
	//서버에 파일 업로드
	@ResponseBody
	@RequestMapping(value="/uploadAjax", method=RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file, HttpSession session) throws Exception{
		logger.info("originalNAme: " + file.getOriginalFilename());
		MemberVO vo = (MemberVO)session.getAttribute("member");
		
	}
	
}
