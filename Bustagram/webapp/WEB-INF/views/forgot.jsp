<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>forgot</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
</head>
<style>
body {
	background-color: #F5F6F7;
}

table {
	margin-top: 200px;
}

.center {
	width: 600px;
	margin: 0 auto 0 auto;
}

.forgot_head {
	margin: 0 auto;
	font-size: 35px;
	font-weight: 900;
}

.inputemail {
	border-width: 0;
	border-bottom: 1px solid gray;
	font-size: 15px;
	font-weight: bold;
}

#find {
	border-radius: 8px;
	border-width: 0;
	cursor: pointer;
}

.center:first-child {
	/* background-color : #5BB91B; */
	height: 40px;
}

.find {
	display: inline-block;
	width: 160px;
	height: 40px;
	background-color: #5BB91B;
	border-radius: 8px;
}

#back {
	border-radius: 8px;
	border-width: 0;
	cursor: pointer;
}

a {
	text-decoration: none;
	color: white;
	margin-top: 6px;
	display: inline-block;
}

a:hover {
	text-decoration: none;
	color: #DAEA16;
	margin-top: 6px;
	display: inline-block;
}
</style>

<script>
	$(document).ready(function() {
		$("#pwdForm").css("display", "none");
		$("#idFindMsg").css("display", "none");
		$("#pwdFindMsg").css("display", "none");
	})

	function formSelect(obj) {
		//alert(obj);
		if (obj == "findId") {
			$("#idForm").css("display", "block");
			$("#pwdForm").css("display", "none");
			$(".input").val("");
		} else if (obj == "findPwd") {
			$("#pwdForm").css("display", "block");
			$("#idForm").css("display", "none");
			$(".input").val("");
		}
	}
	
	$(document).on(
			"click",
			"#idFind",
			function() {
				var memmail = $("#memmail").val();
				$.ajax({
					type : 'post',
					url : '/Bustagram/idFind',
					data : {
						"memmail" : memmail
					},
					dataType : 'json',
					async:false,
					success : function(data) {
						console.log(data);
						gblmid = data;
						if (data == 1) {
					    $("#idFindMsg").css("color", "blue").css("font-size", "12px").css("align","center").css("display","table-row");
						$("#idFindMsg").html("이메일이 발송되었습니다.");
						}
						else{
						$("#idFindMsg").css("color", "red").css("font-size", "12px").css("align","center").css("display","table-row");
						$("#idFindMsg").html("등록되지 않은 이메일입니다.");	
						}
					},
					error : function(request, status, error) {
						alert("code = " + request.status + " message = "
								+ request.responseText + " error = " + error);
						//alert("에러가 발생했습니다.");
					}
				})
			})	
	
	
	
</script>
<body>
	<table cellpadding="0" cellspacing="0" width="978" align="center">
		<tbody>
			<tr>
				<th id="left">
					<div class="center">
						<!-- <p class="forgot_head">Forgot Your ID or Password?<br><br><hr></p> -->
						<div>
							<div class="find">
								<a href='javascript:void(0);' onclick="formSelect(id);"
									id="findId">아이디찾기</a>
							</div>

							<div class="find">
								<a href='javascript:void(0);' onclick="formSelect(id);"
									id="findPwd">비밀번호찾기</a>
							</div>
						</div>

					</div>

					<div id="idForm">
						<form action="/idFind" method="POST">
							<div class="center">
								<p>회원가입시 입력한 이메일로 아이디를 발송합니다.</p>
								<!-- <p><br>Enter your email and we'll emaill you a link to change your password</p> -->
							</div>

							<div class="center">
								<input type="text" class="input" id="memmail" name="memmail"
									style="width: 340px; height: 40px;" placeholder="이메일을 입력해 주세요." />
							</div>
							
							<div id="idFindMsg">
							</div>

							<div>
								<input type="submit" id="idFind" value="아이디 찾기"
									style="margin-top: 40px; width: 200px; height: 50px; background-color: #D52B1F; color: white; font-weight: bold;" />

								<input type="button" id="back" value="돌아가기"
									onclick="location.href='/' "
									style="margin-top: 40px; width: 100px; height: 50px; border: none; font-weight: bold; margin-left: 30px;" />
							</div>
						</form>
					</div>

					<div id="pwdForm">
						<form action="/pwdFind" method="POST">
							<div class="center">
								<p>회원가입시 입력한 이메일로 비밀번호를 발송합니다.</p>
								<!-- <p><br>Enter your email and we'll emaill you a link to change your password</p> -->
							</div>

							<div class="center">
							    <input type="text" class="input"
									style="width: 340px; height: 40px;" placeholder="아이디를 입력해 주세요." />
								<input type="text" class="input" id="memmail" name="memmail"
									style="width: 340px; height: 40px;" placeholder="이메일을 입력해 주세요." />
							</div>
							
							<div id="pwdFindMsg">
							</div>

							<div>
								<input type="button" id="pwdFind" value="비밀번호 찾기"
									style="margin-top: 40px; width: 200px; height: 50px; background-color: #D52B1F; color: white; font-weight: bold;" />

								<input type="button" id="back" value="돌아가기"
									onclick="location.href='/' "
									style="margin-top: 40px; width: 100px; height: 50px; border: none; font-weight: bold; margin-left: 30px;" />
							</div>
						</form>
					</div>


				</th>
			<tr>
		</tbody>

		<tfoot>

		</tfoot>

	</table>
</body>


</html>