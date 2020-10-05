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
			<input type="text" placeholder="아이디" />
		</div>
		
		<div class="login_child">
			<input type="text" placeholder="비밀번호" />
		</div>
		
		<div class="login_child">
			<input type="submit" value="로그인" />
		</div>
	
		<div class="login_child">
			<a href="find_id">아이디 찾기</a> | <a href="find_pwd">비밀번호 찾기</a> | <a href="">회원가입</a>
		</div>
	
	</div>
	
	
	
	
	<%@ include file="/WEB-INF/include/bottom.jsp"%>
	
</body>
</html>