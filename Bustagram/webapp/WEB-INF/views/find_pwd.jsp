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
<script>
		function inputCheck(){
			
			if($("[name=findId]").val() == ''){
				$('#err_findName').html("아이디를 입력하세요");
				return false;
			}
			
			if($("[name=findName]").val() == ''){
				$('#err_findName').html("이름를 입력하세요");
				return false;
			}
			
			if($("[name=findMail]").val() == ''){
				$('#err_pwd').html("이메일를 입력하세요");
				return false;
			}
		
			if($("[name=findNum]").val() == ''){
				$('#err_pwd').html("인증번호를 입력하세요");
				return false;
			}
			
			return true;
		}
		
		$(function() {
			$('#findId').on('submit', function(e){
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
	<form action="" method="POST" id="findPwd">
		<table class="login_tab">
		
				<tr>
					<td><input type="text" class="find_id" name="findId" placeholder="아이디" /></td>
				</tr>
				<tr><td><span id="err_findId"></span></td></tr>
				<tr>
					<td><input type="text" class="find_id" name="findName placeholder="이름" /></td>
				</tr>
				<tr><td><span id="err_findName"></span></td></tr>
				<tr>
					<td><input type="text" class="find_id1" name="findMail" placeholder="이메일" /><input type="submit" class="find_id2" value="인증번호 받기" /></td>
				</tr>
				<tr><td><span id="err_findMail"></span></td></tr>
				<tr>
					<td><input type="text" class="find_id" name="findNum" placeholder="인증번호 입력" /></td>
				</tr>
				<tr><td><span id="err_findNum"></span></td></tr>
				<tr>
					<td><input type="submit" class="find_id"  value="비밀번호 찾기" /></td>
				</tr>
				<tr>
					<td><a href="/Main/login_form">돌아가기</a></td>
				</tr>
				
			</table>
	</form>
	
	
	
	<%@ include file="/WEB-INF/include/bottom.jsp"%>
	
</body>
</html>