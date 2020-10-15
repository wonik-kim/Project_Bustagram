<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.login_tab { width:100%; text-align:center; margin:20px;}
	.login_child{ width:50%; display:inline-block; margin-top:20px; }
	.login_child:nth-child(1) { margin-top:100px; }
	input { width:400px; height:60px; }
	span { color: red; font-weight:bold; }
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script>
	function inputCheck(){
		
		if($("[name=mid]").val() == ''){
			$('#err_id').html("아이디를 입력하세요");
			return false;
		}
		
		if($("[name=mpwd]").val() == ''){
			$('#err_pwd').html("비밀번호를 입력하세요");
			return false;
		}
		
		return true;
	}
	
	$(function() {
		$('#loginForm').on('submit', function(e){
			var valid = inputCheck();
			if(valid){
				return true;
			} else {
				return false;
			}
			
		}); // ''	
	}); // $(function)
	
	
</script>
</head>
<body>
	<%@ include file="/WEB-INF/include/topLogin.jsp"%>
	
	
	<form action="/Admin/login" method="POST" id="loginForm">
	<table class="login_tab">
			<tr>
				<td><input type="text" name="mid" id="mid" class="login" placeholder="아이디" />
					
				</td>
			</tr>
			<tr><td><span id="err_id"></span></td></tr>
			<tr>
				<td><input type="password" name="mpwd" id="mpwd" class="login" placeholder="비밀번호" />
			</tr>
			<tr><td><span id="err_pwd"></span></td></tr>
			<tr>
				<td><input type="submit" class="login"  value="로그인" /></td>
			</tr>
			
			<tr>
				<td><a href="/Master/find_id">아이디 찾기</a> | <a href="/Master/find_pwd">비밀번호 찾기</a> | <a href="signUp">회원가입</a></td>
			</tr>
			
			
		</table>
	</form>
	
	
	
	<%@ include file="/WEB-INF/include/bottom.jsp"%>
	
</body>
</html>