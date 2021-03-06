<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
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
		.navbar-item { width: 25%; text-align:center; }
		.nav-link { color:black; }
		.nav-link:hover { color:black; font-weight:bold; }
		
		/*input[type=submit] { display:block;  height:100%; padding:15px 10px; }*/
		.aLogin { color:black; }
		.aLogin:hover { color:black; text-decoration:none; font-weight:bold; }
	</style>
</head>
<body style="width:90%; margin:0 auto;">
	<div class="wrapTop">
		<div id="divLogo" style="width:65%; height:150px;">
			<a href="/"><img style="margin:10px 50px;" src="/img/bustagram_logo_kor.png" alt="로고"/></a>
		</div>
<<<<<<< HEAD
		<c:choose>
			<c:when test="${ empty login.mid }">
				<form action="/" method="POST" id="formLogin">
					<a href="/Main/login_form">로그인</a>
				</form>
			</c:when>
			<c:when test="${ not empty login.mid }">
				<form action="/" method="POST" id="formLogout">
					<a href="/Admin/logout">로그아웃</a>
				</form>
			</c:when>
		</c:choose>
		
=======
		<form action="/" method="POST" id="formLogin">
			<table id="tblLogin">
				<tr>
					<td><button><a class="aLogin" href="/signUp" >회원가입</a></button></td>
				</tr>
				<tr>
				
					<td><button><a href="/Main/login_form">로그인</a></button></td>
				</tr>
			</table>
		</form>
>>>>>>> ask_branch
	</div>
	<nav class="navbar navbar-expand-sm sticky-top" style="border-bottom:3px solid #F7819F;">
		<ul class="navbar-nav">
			<li class="navbar-item">
				<a class="nav-link" href="#">버스타그램</a>
			</li>
			<li class="navbar-item">
				<a class="nav-link" href="/Schedule">공연장소 및 일정</a>
			</li>
			<li class="navbar-item">
				<a class="nav-link" href="#">커뮤니티</a>
			</li>
			<li class="navbar-item">
				<c:if test="${ empty login.mid }">
					<a class="nav-link" href="/Main/login_form">마이페이지</a>
				</c:if>
				<c:if test="${ not empty login.mid }">
					<a class="nav-link" href="/Mypage/MemInfo?mid=${ login.mid }">마이페이지</a>
				</c:if>
			</li>
		</ul>
	</nav>
</body>
</html>