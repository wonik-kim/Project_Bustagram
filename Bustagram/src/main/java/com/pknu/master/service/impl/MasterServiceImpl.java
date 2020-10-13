package com.pknu.master.service.impl;

import java.util.HashMap;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pknu.master.dao.MasterDao;
import com.pknu.master.service.MasterService;
import com.pknu.master.vo.MasterVo;

@Service
public class MasterServiceImpl implements MasterService {

	@Autowired
	JavaMailSender mailSender;
	
	@Override
	@ResponseBody
	public void sendMail(String setfrom, String userEmail, String title, String content) {

		try {
			System.out.println(setfrom);
			System.out.println(userEmail);
			System.out.println(title);
			System.out.println(content);
			
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하거나 하면 정상작동을 안함
			messageHelper.setTo(userEmail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목 생략 가능
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
	}

	@Autowired
	private MasterDao masterDao;
	
	
	@Override
	public MasterVo masterLogin(HashMap<String, Object> map) {
		
		MasterVo masterVo = masterDao.masterLogin(map);
		
		return masterVo;
	}

}
