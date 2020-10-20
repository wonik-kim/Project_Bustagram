<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안녕하세요 버스타그램입니다.</title>
<style>
a:link {text-decoration: none; color: white;}
a:visited {text-decoration: none; color: whitye;}
a:active {text-decoration: none; color: yellow;}
a:hover {text-decoration: none; color: yellow;}

tr, td { border : 1px solid black; padding: 5px; }

</style>

</head>
<body>
		<%@ include file="/WEB-INF/include/topLogout.jsp"%>
			
		
			<div style="width:100%; height:auto;">
			
				<div><b>승인요청</b> &nbsp <a href="">+</a></div>
				<div>
					<table>
						<tr><td>팀명</td><td>팀구성</td><td>장르</td><td>소개</td><td>비고</td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						
					</table>
				</div>
				<br>
				<div><b>등록된 공연 목록</b> &nbsp <a href="">+</a></div>
				<div>
					<table>
						<tr><td>글번호</td><td>지역</td><td>공연</td><td>장르</td><td>비고</td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						
					</table>
				</div>
				<br>
				<div><b>아티스트 목록</b> &nbsp <a href="">+</a></div>
				<div>
					<table>
						<tr><td>글번호</td><td>지역</td><td>아티스트</td><td>장르</td><td>비고</td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						
					</table>
				</div>
				<br>
				<div><b>회원목록</b> &nbsp <a href="">+</a></div>
				<div>
					<table>
						<tr><td>회원아이디</td><td>이름</td><td>지역</td><td>연락처</td></tr>
						<tr><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td></tr>
						
					</table>
				</div>
				<br>
				<div><b>가게목록</b> &nbsp <a href="">+</a></div>
				<div>
					<table>
						<tr><td>글번호</td><td>지역</td><td>가게</td><td>장르</td><td>비고</td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td></tr>
						
					</table>
				</div>
				<br>
				<div><b>게시글 목록</b> &nbsp <a href="/PostList">+</a></div>
				<div>
					<table>
						<tr><td>글번호</td><td>커뮤니티</td><td>제목</td><td>작성자</td><td>날짜</td><td>조회수</td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
						
					</table>
				</div>
				<br>
			</div>
			
		<%@ include file="/WEB-INF/include/bottom.jsp"%>
</body>
</html>