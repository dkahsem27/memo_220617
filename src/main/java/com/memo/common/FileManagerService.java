package com.memo.common;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component  // 일반적인 스프링 빈
public class FileManagerService {

	// 실제 이미지가 저장될 경로(서버)
	public static final String FILE_UPLOAD_PATH = "D:\\kwonyeji\\spring_project\\memo\\workspace\\images/";
	
	// input: 멀티파트 파일, userLoginId
	// output: 이미지 패스
	public String saveFile(String userLoginId, MultipartFile file) {
		// 파일 디렉토리 예) dkahsem27_1620204641/sun.png
		String directoryName = userLoginId + "_" + System.currentTimeMillis() + "/"; // dkahsem27_1620204641/
		String filePath = FILE_UPLOAD_PATH + directoryName;  // "D:\\kwonyeji\\spring_project\\memo\\workspace\\images/dkahsem27_1620204641/"
		
		File directory = new File(filePath);
		if (directory.mkdir() == false) { // make directory
			return null; // 디렉토리 생성 실패시 null 리턴
		}
		
		// 파일 업로드: byte 단위로 파일 업로드한다.
		try {
			byte[] bytes = file.getBytes();
			Path path = Paths.get(filePath + file.getOriginalFilename()); // OriginalFilename은 사용자가 업로드한 파일 이릅 ★한글이 저장 안 되므로 프로젝트시 영어로 바꾸는 작업 필요★
			Files.write(path, bytes);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}

		// 성공 했으면 이미지 url path를 리턴한다. (WebMvcConfig 에서 매핑한 이미지 path)
		// http://localhost/images/dkahsem27_1620204641/sun.png
		return "/images/" + directoryName + file.getOriginalFilename();
	}
}