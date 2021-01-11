package org.pfp.util;

import java.io.File;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UploadFileUtils {
	private static final Logger logger = LoggerFactory.getLogger(UploadFileUtils.class);
	
	public static String uploadFile(String uploadPath, String originalName, byte[] byteData) throws Exception {
		S3Util s3 = new S3Util();
		String bucketName = "macapig-puzzle-bucket";
		//uuid random
		UUID uid = UUID.randomUUID();
		
		String savedName = "/" + uid.toString() + "_" + originalName;
		
		logger.info("업로드 경로 : " + uploadPath);
		
		String savedPath = calcPath(uploadPath);
		
		String uploadedFileName = null;
		
		uploadedFileName = (savedPath + savedName).replace(File.separatorChar, '/');
		
		//s3util의 fileupload 메소드로 파일을 업로드
		s3.fileUpload(bucketName, uploadPath+uploadedFileName, byteData);
		
		logger.info(uploadedFileName);
		
		return uploadedFileName;
	}

}
