package com.pknu.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter {

	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		switch(request.getRequestURI()) {
		
			case "/" :
			case "Main/login_form":
			case "signUp":	
		
				return true;
				
		}
	

		HttpSession session = request.getSession();
		
		Object object = session.getAttribute("/Master/login");
		
//		String requestUrl = request.getRequestURI().toString();
		
//		if(requestUrl.contains("/Main/login_form")) {
//			return true;
//		}
		
		
		if(object == null) {
			response.sendRedirect("/Main/login_form");
			
			return false;
		}
		
		return true;
	
	}
	
}
