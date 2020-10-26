<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/layer.css" />
</head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="/js/layer.js"></script>
<body>
	<form action="/Mypage/UpdatePwd" method="POST" onsubmit="return pwd()">
		<input type="hidden" name="mid" value="${ login.mid }" />
		<label for = "new_pwd"> 비밀번호 </label>
			<input type = "password" name="mem_pwd" id="new_pwd"  class="pwd" placeholder="8~20자 영문/숫자" required/>
		<label for = "new_pwd_chk"> 비밀번호 확인 </label>
			<input type = "password" name="mem_pwd2" id="new_pwd_chk" class="pwd" placeholder="8~20자 영문/숫자" required/>
			<input type="hidden" name="flag" value="a" />
		<input name="submit" type="submit" value="변경" />
		<input type="button" value="닫기" onclick="javascript:self.close()"/>
		<input type="hidden" value="${ old_pwd }" id="old_pwd" />
		<div id="msg"></div>
	</form>
</body>
</html>