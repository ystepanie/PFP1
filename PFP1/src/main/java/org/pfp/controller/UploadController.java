package org.pfp.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.pfp.dto.MemberVO;
import org.pfp.util.MediaUtils;
import org.pfp.util.S3Util;
import org.pfp.util.UploadFileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.util.IOUtils;

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
		String userid = vo.getUserId();
		return new ResponseEntity<>(
				UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes(), userid),
				HttpStatus.CREATED);
	}

	//파일 표시
	@ResponseBody
	@RequestMapping("/displayFile")
	public ResponseEntity<byte[]> displayFile(String fileName) throws Exception{
		
		InputStream in = null;
		ResponseEntity<byte[]> entity = null;
		HttpURLConnection uCon = null;
		System.out.println("FILE NAME: " + fileName);
		
		try {
			String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
			
			MediaType mType = MediaUtils.getMediaType(formatName);
			HttpHeaders headers = new HttpHeaders();
			
			String inputDirectory = "macapig-puzzle-bucket";
			URL url;
			
			try {
				url = new URL(s3.getFileURL(bucketName, inputDirectory+fileName));
				System.out.println(url);
				uCon = (HttpURLConnection) url.openConnection();
				in = uCon.getInputStream();
			}catch (Exception e) {
				url = new URL(s3.getFileURL(bucketName, "img/puzzle.png"));
				uCon = (HttpURLConnection) url.openConnection();
				in = uCon.getInputStream();
			}
			
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in),
					headers,
					HttpStatus.CREATED);
		}catch (FileNotFoundException effe) {
			System.out.println("File Not found Exception");
			String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
            MediaType mType = MediaUtils.getMediaType(formatName);
            HttpHeaders headers = new HttpHeaders();
            in = new FileInputStream(uploadPath+"img/puzzle.png");

                headers.setContentType(mType);

            entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in),
                    headers,
                    HttpStatus.CREATED);
        }catch (Exception e){
            e.printStackTrace();
            entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
        }finally {
            in.close();
        }
        return entity;
	}
	
	//파일 삭제
    @ResponseBody
    @RequestMapping(value="/deleteFile", method=RequestMethod.POST)
    public ResponseEntity<String> deleteFile(String fileName){
        logger.info("delete file: "+fileName);
        
        String inputDirectory = "macapig-puzzle-bucket";
        s3.fileDelete(inputDirectory+fileName);
                
        return new ResponseEntity<String>("deleted", HttpStatus.OK);
    }
}

