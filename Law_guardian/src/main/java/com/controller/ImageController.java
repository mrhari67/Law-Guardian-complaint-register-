package com.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.springframework.core.io.ClassPathResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ImageController {
	
	@GetMapping("/images/{imageName:.+}")
	public ResponseEntity<byte[]> serveImage(@PathVariable String imageName)throws IOException{
		System.out.println(imageName);
		ClassPathResource resource=new ClassPathResource("/static/images/"+imageName);
		try (InputStream inputStream=resource.getInputStream();
				ByteArrayOutputStream outputStream=new ByteArrayOutputStream()){
			byte[] buffer=new byte[1024];
			int bytesRead;
			while((bytesRead=inputStream.read(buffer))!=-1) {
				outputStream.write(buffer,0,bytesRead);
			}
			byte[] imageBytes=outputStream.toByteArray();
			return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
			
		}
	}

}
