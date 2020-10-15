package com.pknu.master.service.impl;

import java.util.HashMap;
import java.util.List;

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
	
	@Autowired
	private MasterDao masterDao;
	
	@Override
	@ResponseBody
	public void sendMail(String setfrom, String memmail, String title, String content) {

		try {
			System.out.println(setfrom);
			System.out.println(memmail);
			System.out.println(title);
			System.out.println(content);
			
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하거나 하면 정상작동을 안함
			messageHelper.setTo(memmail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목 생략 가능
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	@Override
	public void insAuth(HashMap<String, Object> map) {
		masterDao.insAuth(map);
	}
	
	@Override
	public void signUp(HashMap<String, Object> map) {
		masterDao.signUp(map);
	}

	@Override
	public int idCheck(HashMap<String, Object> map) {
		int result = masterDao.idCheck(map); 
		return result;
	}

	@Override
	public int findId(HashMap<String, Object> map) {
		int idInfo = masterDao.findId(map);
		return idInfo;
	}

	@Override
	public List<MasterVo> idGet(HashMap<String, Object> map) {
		List<MasterVo> idGet = masterDao.idGet(map);
		return idGet;
	}




}
