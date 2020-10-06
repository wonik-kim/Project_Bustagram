<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
	<style>
		#divLogo { display:block; float:left; }
		#formLogin { padding:60px 50px 0 0; display:block; float:right; height:150px; }
		.wrapTop, nav { clear:both; }
		
		#tblLogin { font-size:12px; }
		#tblLogin > tr > td { text-align:center; padding:3px; }
		
		.navbar-nav { width: 100%; }
		#main-menu { width: 100%; text-align:center; }
		.nav-link { color:black; }
		.nav-link:hover { color:black; font-weight:bold; }
		
		input[type=submit] { display:block; width:100%; height:100%; padding:15px 10px; }
		.aLogin { color:black; }
		.aLogin:hover { color:black; text-decoration:none; font-weight:bold; }
	</style>
</head>
<body style="width:90%; margin:0 auto;">
	<div class="wrapTop">
		<div id="divLogo" style="width:65%; height:150px;">
			<a href="/"><img style="margin:10px 50px;" src="/img/bustagram_logo_kor.png" alt="로고"/></a>
		</div>
		<form action="/" method="POST" id="formLogin">
			<table id="tblLogin">
				<tr>
					<td><a class="aLogin" href="#" >회원가입</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a class="aLogin" href="#" >ID / PW 찾기</a></td>
				</tr>
				<tr>
					<td><input type="text" id="userId" name="userId" placeholder="아이디(이메일)"/></td>
					<td rowspan="2"><input type="submit" value="로그인"/></td>
				</tr>
				<tr>
					<td><input type="password" id="userPwd" name="userPwd" placeholder="비밀번호"/></td>
				</tr>
			</table>
		</form>
	</div>
	<nav class="navbar navbar-expand-sm sticky-top" style="border:3px solid white; border-bottom:3px solid #F7819F; background-color:white;">
		<ul class="navbar-nav">
			<li class="navbar-item" id="main-menu">
				<a class="nav-link" href="#">버스타그램</a>
			</li>
			<li class="navbar-item" id="main-menu">
				<a class="nav-link" href="#">공연장소 및 일정</a>
			</li>
			<li class="navbar-item" id="main-menu">
				<a class="nav-link" href="#">커뮤니티</a>
			</li>
			<li class="navbar-item" id="main-menu">
				<a class="nav-link" href="#">마이페이지</a>
			</li>
		</ul>
	</nav>
</body>
</html>