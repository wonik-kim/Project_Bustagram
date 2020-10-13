package com.pknu.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter {

	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		switch(request.getRequestURI()) {
		
			case "/" :
		
				return true;
				
		}
	

		HttpSession session = request.getSession();
		
		Object object = session.getAttribute("/Master/login");
		
		if(object == null) {
			response.sendRedirect("/Main/login_form");
			
			return false;
		}
		
		return true;
	
	}
	
}
