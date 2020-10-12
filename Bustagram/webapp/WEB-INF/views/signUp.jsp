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
</style>
<script>
	$(document).on(
			"click",
			"#emailBtn",
			function() {
				var userEmail = $("#userEmail").val();
				$.ajax({
					type : 'get',
					url : '/Bustagram/createEmailCheck2',
					data : {
						"userEmail" : userEmail
					},
					dataType : 'text',
					success : function(data) {
						alert("인증번호가 발송 되었습니다.");
						console.log(data);
					},
					error : function(request, status, error) {
						alert("code = " + request.status + " message = "
								+ request.responseText + " error = " + error);
						//alert("에러가 발생했습니다.");
					}
				})
			})
</script>
</head>
<body>
	<div id="mainsize">
		<h2 align="center" id="title"
			style="color: #CCCCCC; font-weight: bolder;">회원가입</h2>

		<form action="#" method="GET">
			<table cellpadding="0" cellspacing="0" align="center" id="main_table">

				<tbody>
					<tr>
						<th>*아이디</th>
						<td><input type="text" name="id"> <input
							type="button" name="check" value="중복확인"></td>
					</tr>

					<tr>
						<th>*비밀번호</th>
						<td><input type="password" name="pass"></td>
					</tr>

					<tr>
						<th>*비밀번호 재확인</th>
						<td><input type="password" name="pass"></td>
					</tr>

					<tr>
						<th>*이름</th>
						<td><input type="text" name="name"></td>
					</tr>

					<tr>
						<th>*생년월일</th>
						<td>
						 <select name="year">
								<c:forEach var="year" varStatus="status" begin="1900" end="2020" step="1">
									<option value="${year}">${year}</option>
								</c:forEach>
						</select> 
						
						<select name="month">
								<c:forEach var="month" varStatus="status" begin="1" end="12"	step="1">
									<option value="${month}">${month}</option>
								</c:forEach>
						</select> 
						
						<select name="day">
								<c:forEach var="day" varStatus="status" begin="1" end="30"	step="1">
									<option value="${day}">${day}</option>
								</c:forEach>
						</select>
						</td>
					</tr>

					<tr>
						<th>성별</th>
						<td><input type="radio" name="gender" value="man" id="man">
							<label for="man">남성</label> <input type="radio" name="gender"
							value="woman" id="woman"> <label for="woman">여성</label></td>
					</tr>

					<tr>
						<th>*이메일</th>
						<td id="email"><input type="text" id="userEmail"
							name="userEmail"> <input type="hidden" path="random"
							id="random" name="random" value=""> <input type="button"
							value="인증번호받기" id="emailBtn"></td>
					</tr>

					<tr>
						<th>*인증번호입력</th>
						<td id="inputnumber"><input type="text" placeholder="인증번호 입력">
						</td>
					</tr>
				</tbody>
			</table>



			<center>
				<input type="submit" value="가입하기" id="finish"> <input type="button" id="back" value="돌아가기" onclick="location.href='/' ">
			</center>
		</form>


	</div>

</body>
</html>