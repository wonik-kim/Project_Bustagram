<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.login_tab { width:100%; text-align:center; }
	.login_child{ width:50%; display:inline-block;  }
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/include/top2.jsp"%>
	<div class="login_tab">
	
		<div class="login_child">
			<input type="text" placeholder="이름" />
		</div>
		
		<div class="login_child">
			<input type="text" placeholder="이메일" /> | <input type="submit" value="인증번호 받기" />
		</div>
		
		<div class="login_child">
			<input type="text" placeholder="인증번호 입력" />
		</div>
		
		<div class="login_child">
			<input type="submit" value="아이디 찾기" />
		</div>
	

	
	</div>
	
	
	
	
	<%@ include file="/WEB-INF/include/bottom.jsp"%>
	
</body>
</html>