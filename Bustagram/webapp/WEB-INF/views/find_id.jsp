<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.login_tab { width:100%; text-align:center; }
	td { width:400px; display:inline-block; margin-top:20px; }
	.find_id { width:400px; height:50px; }
	.find_id1 { width:280px; height:50px; }
	.find_id2 { height:50px; }

	
	
	
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/include/top2.jsp"%>
	<div class="login_tab">
	
		<table class="login_tab">
			<tr>
				<td><input type="text" class="find_id" placeholder="이름" /></td>
			</tr>
		
			<tr>
				<td><input type="text" class="find_id1"  placeholder="이메일" /><input type="submit" class="find_id2" value="인증번호 받기" /></td>
				
			</tr>
			
			<tr>
				<td><input type="text" class="find_id" placeholder="인증번호 입력" /></td>
			</tr>
			
			<tr>
				<td><input type="submit" class="find_id"  value="아이디 찾기" /></td>
			</tr>
		</table>
	
	</div>
	
	
	
	
	<%@ include file="/WEB-INF/include/bottom.jsp"%>
	
</body>
</html>