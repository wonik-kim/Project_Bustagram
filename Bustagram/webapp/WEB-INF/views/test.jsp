<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test</title>
<style>
	.container {
		width: 400px;
		height: 700px;
		border: 1px solid black;
	}
</style>
</head>
<body>
	<h1>피드의 댓글을 누르면 ajax로 댓글창 구현</h1>
	<h2>댓글창 누르면 댓글 작성자, 댓글내용, 작성 일자(n일 전), 댓글의 답글 구현</h2>
	<hr />
	
	<div class="container">
		<div class="container-feed">
			<!-- 피드 헤더 -->
			<div class="feed_header">
				<div class="header_writer_pic">
					<p>작성자 프로필 사진</p>
				</div>
				<div class="header_writer">
					<p>작성자 이름</p>
					<p>작성 시간(n일 전)</p>
				</div>
			</div>
			<!-- 피드 내용(글, 사진, 음악) -->
			<div class="feed_content">
				<div>
					피드 내용(글, 사진, 음악)이 출력될 부분
				</div>
			</div>
			<!-- 피드 상황 -->
			<div class="feed_status">
				<p>좋아요(개수)</p>
				<!-- 누르면 댓글 보임 -->
				<p>댓글 n개</p>
			</div>
			<!-- 댓글 작성 섹션 : 댓글을 작성하면 작성되면서 댓글을 받아옴  -->
			<div class="feed_com_sec">
				<input type="text" />
				<input type="submit" value="쓰기" />
			</div>
		</div>
	</div>
</body>
</html>