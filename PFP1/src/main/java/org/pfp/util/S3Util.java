package org.pfp.util;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.Protocol;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.GeneratePresignedUrlRequest;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectInputStream;

public class S3Util {
	private String accessKey = "AKIAIE4RCR67WK7K47BQ";
	private String secretKey = "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";
	//bucketName
    private String bucketName = "macapig-puzzle-bucket";  //생성한 버킷 명 
	private AmazonS3 conn;
	//bucketName getter    
    public String getBucketName() {
        return bucketName;
    }
    
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
	// 파일 삭제
    public void fileDelete(String fileName) {

        System.out.println("fileName : " + fileName);
        String imgName = (fileName).replace(File.separatorChar, '/');
        conn.deleteObject(this.getBucketName(), imgName);
        System.out.println("삭제성공");
    }
    
	// 파일 URL
    public String getFileURL(String bucketName, String fileName) {
        System.out.println("넘어오는 파일명 : "+fileName);
        String imgName = (fileName).replace(File.separatorChar, '/');
        return conn.generatePresignedUrl(new GeneratePresignedUrlRequest(bucketName, imgName)).toString();
    }
    
 // src파일 읽어오기
    public S3ObjectInputStream getSrcFile(String bucketName, String fileName) throws IOException{
        System.out.println("넘어오는 파일명 : "+fileName);
        fileName = (fileName).replace(File.separatorChar, '/');
        S3Object s3object = conn.getObject(new GetObjectRequest(bucketName, fileName)); //해당 파일 s3객체에 담기

 
        S3ObjectInputStream objectInputStream = s3object.getObjectContent();    //s3객체를 스트림으로 변환

        return objectInputStream;
    }
}
