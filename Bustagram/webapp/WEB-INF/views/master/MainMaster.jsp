<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
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

tr, td, th { border : 1px solid black; padding: 5px; }

</style>
<script>
	
	

</script>
</head>
<body>
		<%@ include file="/WEB-INF/include/topLogout.jsp"%>
			
		
			<div style="width:100%; height:auto;">
			
				<div><b>승인요청</b> &nbsp <a href="">+</a></div>
				<div>
					<table>
						<tr>
							<td>팀명</td>
							<td>팀구성</td>
							<td>장르</td>
							<td>소개</td>
							<td>비고</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</table>
				</div>
				<br>
				<div><b>등록된 공연 목록</b> &nbsp <a href="">+</a></div>
				<div>
					<table>
						<tr>
							<td>가수 아이디</td>
							<td>가게 아이디</td>
							<td>공연 이름</td>
							<td>공연 날짜</td>
							<td>공연 비고</td>
						</tr>
						<c:forEach var="scheduleList" items="${scheduleList }">
							<tr>
								<td>${scheduleList.art_id }</td>
								<td>${scheduleList.str_id }</td>
								<td>${scheduleList.schedule_name }</td>
								<td>${scheduleList.schedule_date }</td>
								<td>${scheduleList.schedule_tf }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<br>
				<div><b>아티스트 목록</b> &nbsp <a href="">+</a></div>
				<div>
					<table>
						<tr>
							<td>아티스트 아이디</td>
							<td>아티스트</td>
							<td>인원 수</td>
							<td>장르</td>
							<td>소개</td>
							<td>연락처</td>
						</tr>
						<c:forEach var="artistList" items="${artistList }">
							<tr>
								<td>${artistList.artist_id }</td>
								<td>${artistList.art_name }</td>
								<td>${artistList.art_cnt }</td>
								<td>${artistList.gen_val }</td>
								<td>${artistList.art_intro }</td>
								<td>${artistList.mem_mail }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<br>
				<div><b>회원목록</b> &nbsp <a href="">+</a></div>
				<div>
					<table>
						<tr>
							<td>회원아이디</td>
							<td>이름</td>
							<td>성별</td>
							<td>연락처</td>
							<td>등급</td>
							<td>활성화여부</td>
						</tr>
						<c:forEach var="memberList" items="${memberList}">
							<tr>
								<td>${memberList.mid }</td>
								<td>${memberList.mem_name }</td>
								<td>${memberList.mem_gen }</td>
								<td>${memberList.mem_mail }</td>
								<td>${memberList.segment_val }</td>
								<td>${memberList.mem_delnum }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<br>
				<div><b>가게목록</b> &nbsp <a href="">+</a></div>
				<div>
					<table>
						<tr>
							<td>가게 아이디</td>
							<td>가게 이름</td>
							<td>가게 유형</td>
							<td>주소</td>
							<td>주소1</td>
							<td>주소2</td>
							<td>가게소개</td>
							<td>사업자등록번호</td>
						</tr>
						<c:forEach var="storeList" items="${storeList }">
							<tr>
								<td>${storeList.str_id }</td>
								<td>${storeList.str_name }</td>
								<td>${storeList.str_type }</td>
								<td>${storeList.str_addr }</td>
								<td>${storeList.sido }</td>
								<td>${storeList.gugun }</td>
								<td>${storeList.str_intro }</td>
								<td>${storeList.str_bnum }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<br>
				<div><b>블랙리스트</b> &nbsp <a href="">+</a></div>
				<div>
					<table>
						<tr>
							<td>아이디</td>
							<td>이름</td>
							<td>연락처</td>
							<td>사유</td>
						</tr>
						<c:forEach var="blackList" items="${blackList }">
							<tr>
								<td>${blackList.mid }</td>
								<td>${blackList.mem_name }</td>
								<td>${blackList.mem_mail }</td>
								<td>${blackList.cause }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<br>
				<div><b>게시글 목록</b> &nbsp <a href="/PostList">+</a></div>
				<div>
					<table>
						<tr>
							<th>글번호</th>
							<th>커뮤니티</th>
							<th>제목</th>
							<th>작성자</th>
							<th>날짜</th>
							<th>조회수</th>
						</tr>
						<c:forEach var="postList" items="${listPost }">
							<tr>
								<td>${postList.idx }</td>
								<td>${postList.segment_val }</td>
								<td>${postList.commu_title }</td>
								<td>${postList.mem_name }</td>
								<td>${postList.commu_date }</td>
								<td>${postList.commu_count }</td>
							</tr>
		
						</c:forEach>
					</table>
				</div>
				<br>
				<div><b>문의 게시글 목록</b> &nbsp <a href="">+</a></div>
				<div>
					<table>
						<tr>
							<th>문의제목</th>
							<th>작성자</th>
							<th>문의내용</th>
							<th>날짜</th>
						</tr>
						<c:forEach var="inquiryList" items="${inquiryList }">
							<tr>
								<td>${inquiryList.inq_title }</td>
								<td>${inquiryList.mid }</td>
								<td>${inquiryList.inq_content }</td>
								<td>${inquiryList.inq_date }</td>
							</tr>
		
						</c:forEach>
					</table>
				</div>
				<br>
			</div>
			
		<%@ include file="/WEB-INF/include/bottom.jsp"%>
</body>
</html>