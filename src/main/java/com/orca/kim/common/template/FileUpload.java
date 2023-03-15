package com.orca.kim.common.template;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

public class FileUpload {
	
	public static String saveFile(MultipartFile upfile, HttpSession session, String folderPath) {
			
			// 파일명 수정 작업 후 서버에 업로드 
			String mainPhotoOrigin = upfile.getOriginalFilename(); // "flower.png"
			
			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
			int ranNum = (int)(Math.random() * 90000 + 10000);
			String ext = mainPhotoOrigin.substring(mainPhotoOrigin.lastIndexOf("."));
			
			String mainPhotoChange = currentTime + ranNum + ext;
			
			// 업로드 시키고자하는 폴더의 물리적인 경로 알아내기
			String savePath = session.getServletContext().getRealPath(folderPath);
			
			try {
				upfile.transferTo(new File(savePath + mainPhotoChange));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
				// resources/xxxx/
			return folderPath + mainPhotoChange;
		}

	
}
