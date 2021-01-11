package org.pfp.util;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.Protocol;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.ObjectMetadata;

public class S3Util {
	private String accessKey = "AKIAIE4RCR67WK7K47BQ";
	private String secretKey = "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";
	
	private AmazonS3 conn;
	
	public S3Util() {
		AWSCredentials credentials = new BasicAWSCredentials(accessKey, secretKey);
		
		ClientConfiguration clientConfig = new ClientConfiguration();
		
		clientConfig.setProtocol(Protocol.HTTP);
		this.conn = new AmazonS3Client(credentials, clientConfig);
		conn.setEndpoint("s3.ap-northeast-2.amazonaws.com"); //엔드포인트 설정[아시아:서울]
	}
	//파일업로드 
	public void fileUpload(String bucketName, String fileName, byte[] fileData) throws FileNotFoundException {
		String filePath = (fileName).replace(File.separatorChar, '/'); //파일 구별자를 /로 설정(\ > /)
		ObjectMetadata metadata = new ObjectMetadata();
		metadata.setContentLength(fileData.length); //메타데이터 설정
		
		ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(fileData); //파일 넣음
		
		conn.putObject(bucketName, filePath, byteArrayInputStream, metadata);
		
	}
}
