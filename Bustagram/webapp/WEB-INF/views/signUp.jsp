<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<style>
body {
	background-color: #F5F6F7;
}

th {
	background-color: #F5F6F7;
	padding-left: 10px;
	padding-right: 10px;
}

h2 {
	color: black;
	align: center;
	font-size: 40px;
}

#mainsize {
	background-color: #F5F6F7;
	position: absolute;
	width: 800px;
	height: 800px;
	left: 50%;
	top: 50%;
	margin: -400px 0 0 -400px;
}

#main_table {
	height: 550px;
}

#finish {
	margin-left: 25%;
	margin-top: 20px;
	display: block;
	width: 420px;
	height: 50px;
	border-radius: 8px;
	background-color: #03C75A;
	color: white;
	cursor: pointer;
	border-width: 0;
	font-size: 20px;
	font-weight: bold;
}

#back {
	display: block;
	float: right;
	margin-right: 140px;
	margin-top: 10px;
	width: 70px;
	height: 40px;
	border-radius: 8px;
	background-color: #8E8E8E;
	border-width: 0;
	color: white;
	cursor: pointer;
	font-size: 15px;
	font-weight: bold;
}

th>td:first-child {
	margin-left: 20px;
}

.hide {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	height: 20px;
}
</style>
<script>
    $(document).ready(function(){
    	gblAuthNum = null;
    	gblmid     = null;
    	$("#idMsg").css("display","none");
    	$("#pwd1Msg").css("display","none");
    	$("#pwd2Msg").css("display","none");
    	$("#nameMsg").css("display","none");
    	
    	var regExp = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/; // email 유효성검사
    	var hanChecked = /^[가-힝a-zA-Z]{2,15}$/; // 한글 유효성검사(2자리 이상 15자리 이하)
    	
    }) 

    // 전역변수 사용위해 동기처리
	$(document).on(
			"click",
			"#emailBtn",
			function() {
				var memmail = $("#memmail").val();
				$.ajax({
					type : 'post',
					url : '/Bustagram/createEmailCheck2',
					data : {
						"memmail" : memmail
					},
					dataType : 'text',
					async:false,
					success : function(data) {
						alert("인증번호가 발송 되었습니다.");
						console.log(data);
						alert(data);
						gblAuthNum = data;
					},
					error : function(request, status, error) {
						alert("code = " + request.status + " message = "
								+ request.responseText + " error = " + error);
						//alert("에러가 발생했습니다.");
					}
				})
			})
			
	$(document).on(
			"click",
			"#idCheck",
			function() {
				var mid = $("#mid").val();
				$.ajax({
					type : 'post',
					url : '/Bustagram/idCheck',
					data : {
						"mid" : mid
					},
					dataType : 'json',
					async:false,
					success : function(data) {
						console.log(data);
						gblmid = data;
						if (data == 0) {
					    $("#idMsg").css("color", "blue").css("font-size", "12px").css("align","center").css("display","table-row");
						$("#idMsg").html("사용 가능한 아이디입니다");
						}
						else{
						$("#idMsg").css("color", "red").css("font-size", "12px").css("align","center").css("display","table-row");
						$("#idMsg").html("중복된 아이디입니다");	
						}
					},
					error : function(request, status, error) {
						alert("code = " + request.status + " message = "
								+ request.responseText + " error = " + error);
						//alert("에러가 발생했습니다.");
					}
				})
			})	
			
		$(document).on(
			   "blur",
			   "#mid",
			    function() {
				   var idChecked = /^[0-9a-zA-Z]{8,16}$/; // 아이디 유효성검사(5자리 이상 15자리 이하)
				   
				   if(!idChecked.test($("#mid").val())) {
					$("#idMsg").css("color", "red").css("font-size", "12px").css("align","center").css("display","table-row");
					$("#idMsg").html("8~16자의 영문, 숫자만 사용 가능합니다.");
					//return false;
				   }
				   else{
					   $("#idMsg").html("");
				   }
			})
			
		$(document).on(
			   "blur",
			   "#pwd1",
			    function() {
				   var pwdChecked = /^[0-9a-zA-Z]{8,20}$/; // 비밀번호 유효성검사(8자리 이상 20자리 이하)
				   
				   if(!pwdChecked.test($("#pwd1").val())) {
					$("#pwd1Msg").css("color", "red").css("font-size", "12px").css("align","center").css("display","table-row");
					$("#pwd1Msg").html("8~20자의 영문, 숫자만 사용 가능합니다.");
					//return false;
				   }
				   else{
					   $("#pwd1Msg").html("");
				   }
			})	
			
			
		$(document).on(
			   "blur",
			   "#memname",
			    function() {
				   var nameChecked = /^[가-힝a-zA-Z]{2,15}$/; // 이름 유효성검사(한글 or 영어만)
				   if(!nameChecked.test($("#memname").val())) {
					$("#nameMsg").css("color", "red").css("font-size", "12px").css("align","center").css("display","table-row");
					$("#nameMsg").html("한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가).");
					//return false;
				   }
				   else{
					   $("#nameMsg").html("");
				   }
			})		
			
	$(document).on(
			"click",
			"#finish",
			function() {
				var signUpForm = $("#signUpForm");
				var pwd1 = $("#pwd1").val();
			    var pwd2 = $("#pwd2").val();
			    var nameChecked = /^[가-힝a-zA-Z]{2,15}$/; // 이름 유효성검사(한글 or 영어만)
			    var pwdChecked = /^[0-9a-zA-Z]{8,20}$/; // 비밀번호 유효성검사(8자리 이상 20자리 이하)
			    var idChecked = /^[0-9a-zA-Z]{8,16}$/; // 아이디 유효성검사(5자리 이상 15자리 이하)
			    
				if (gblmid == 1){
					alert("아이디를 확인해주세요.");
				}
				else if(gblmid == null){
					alert("아이디를 확인해주세요.");
				}
				else if(!idChecked.test($("#mid").val())){
					alert("아이디를 정확히 입력해주세요.");
				}
				else if($("#pwd1").val == null || $("#pwd2").val() == null){
					alert("비밀번호를 확인해주세요.");
				}
				else if(pwd1 != pwd2){
					alert("비밀번호가 일치하지 않습니다.");
				}
				else if(!pwdChecked.test($("#pwd1").val())){
					alert("비밀번호를 정확히 입력해주세요.");
				}
				else if($("#memname").val() == null){
					alert("이름을 입력해주세요.");
				}
				else if(!nameChecked.test($("#memname").val())){
					alert("이름을 정확히 입력해주세요.");
				}
				else if($("#man").val == null || $("#woman").val() == null){
					alert("성별을 선택해주세요.");
				}
				else if (gblAuthNum != $("#authnum").val() || gblAuthNum == null) {
					alert("인증번호를 확인해주세요." + gblAuthNum);
				}
				else{
					signUpForm.submit();
				}
			})
</script>
</head>
<body>
	<div id="mainsize">
		<h2 align="center" id="title"
			style="color: #CCCCCC; font-weight: bolder;">회원가입</h2>

		<form action="/signUpComplete" method="POST" id="signUpForm">
			<table cellpadding="0" cellspacing="0" align="center" id="main_table">

				<tbody>
					<tr>
						<th>*아이디</th>
						<td><input type="text" id="mid" name="mid"> <input
							type="button" id="idCheck" name="idCheck" value="중복확인"></td>
					</tr>

					<tr class="hide">
						<th></th>
						<td id="idMsg"></td>
					</tr>

					<tr>
						<th>*비밀번호</th>
						<td><input type="password" name="mempwd" id="pwd1"></td>
					</tr>

					<tr class="hide">
						<th></th>
						<td id="pwd1Msg"></td>
					</tr>

					<tr>
						<th>*비밀번호 재확인</th>
						<td><input type="password" name="pass" id="pwd2"></td>
					</tr>

					<tr class="hide">
						<th></th>
						<td id="pwd2Msg"></td>
					</tr>

					<tr>
						<th>*이름</th>
						<td><input type="text" name="memname" id="memname"></td>
					</tr>

					<tr class="hide">
						<th></th>
						<td id="nameMsg"></td>
					</tr>

					<tr>
						<th>생년월일</th>
						<td><select name="year">
								<c:forEach var="year" varStatus="status" begin="0" end="${2020-1900}"
									step="1">
									<c:set var="yearOption" value="${2020-year}" />
									 <option value="${yearOption}">${yearOption}</option>
								</c:forEach>
						</select> <select name="month">
								<c:forEach var="month" varStatus="status" begin="1" end="12"
									step="1">
									<option value="${month}">${month}</option>
								</c:forEach>
						</select> <select name="day">
								<c:forEach var="day" varStatus="status" begin="1" end="30"
									step="1">
									<option value="${day}">${day}</option>
								</c:forEach>
						</select></td>
					</tr>

					<tr>
						<th>성별</th>
						<td><input type="radio" name="memgen" value="man" id="man">
							<label for="man">남성</label> <input type="radio" name="memgen"
							value="woman" id="woman"> <label for="woman">여성</label></td>
					</tr>

					<tr>
						<th>*이메일</th>
						<td id="email"><input type="text" id="memmail" name="memmail">
							<input type="hidden" path="random" id="random" name="random"
							value=""> <input type="button" value="인증번호받기"
							id="emailBtn"></td>
					</tr>

					<tr>
						<th>*인증번호입력</th>
						<td id="inputauthnum"><input type="text" id="authnum"
							name="authnum" placeholder="인증번호 입력"></td>
					</tr>
				</tbody>
			</table>



			<div>
				<input type="button" value="가입하기" id="finish">
			</div>
			<input type="button" id="back" value="돌아가기"
				onclick="location.href='/' ">
		</form>


	</div>

</body>
</html>