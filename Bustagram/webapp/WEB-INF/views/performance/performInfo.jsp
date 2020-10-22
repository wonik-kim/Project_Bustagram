<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공연정보</title>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>

<style>
#section {
	margin-top: 20px;
	padding-bottom: 100px;
}

#infocard {
	margin-left: auto;
	margin-right: auto;
}

.col-md-4 {
	width: 30%;
	height: 250px;
	overflow: hidden;
}

.car-img {
	max-width: 100%;
	height: auto;
	display: block;
}
</style>

</head>


<body>
	<%@ include file="/WEB-INF/include/top.jsp"%>

	<!-- section -->
	<div id="section">
		<!-- perform info -->
		<div id="infocard" class="card text-black mb-3"
			style="max-width: 1000px; height: 250px;">
			<div class="row no-gutters">
				<div class="col-md-4">
					<img
						src="https://www.kous.or.kr/common/user/image/sub/new_stage_slider_img1.jpg"
						class="card-img" alt="공연장 사진">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h5 class="card-title">공연정보</h5>
						<p class="card-text">
						 	공연 이름: <c:out value="${performance[0].schedule_name}"/>
						</p>
							<p class="card-text">
						 	공연 날짜: <c:out value="${performance[0].schedule_date}"/>
						</p>
						<p class="card-text">
						 	공연 내용: <c:out value="${performance[0].schedule_info}"/>
						</p>
						<p class="card-text">
							<small class="text-muted"><button>평가하기</button></small>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div id="infocard" class="card text-black mb-3"
			style="max-width: 1000px; height: 320px;">
			<div>
				<h1>아티스트</h1>
			</div>
			<div class="row no-gutters">
				<div class="col-md-4">
					<img
						src="/upload/1.jpg"
						class="card-img" alt="가수 사진">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<p class="card-text">아티스트명: <c:out value="${performance[0].art_name}"/></p>
						<p class="card-text">장르 : <c:out value="${performance[0].gen_name}"/></p>
						<p class="card-text">소개 : <c:out value="${performance[0].art_intro}"/></p>
					</div>
				</div>
			</div>
		</div>

		<div id="infocard" class="card text-black mb-3"
			style="max-width: 1000px; height: 500px;">
			<div>
				<h1>공연장</h1>
			</div>
			<div class="row no-gutters">
				<div class="col-md-4">
					<img
						src="https://img.sbs.co.kr/newimg/news/20160821/200972160_1280.jpg"
						class="card-img" alt="공연장 사진">
				</div>
				<div class="col-md-4">
					<img src="/img/perform_plus.png" class="card-img" alt="공연장 사진"
						height="200" width="100">
				</div>
				<div class="col-md-4">
					<img
						src="https://www.kous.or.kr/common/user/image/sub/new_stage_slider_img1.jpg"
						class="card-img" alt="공연장 사진">
				</div>
			</div>
			<div class="col-md-8">333
				<div class="card-body">
					<p class="card-text">공연장 이름 : <c:out value="${performance[0].str_name}"/></p>
					<p class="card-text">공연장 주소 :<c:out value="${performance[0].str_addr}"/></p>
					<p class="card-text">업종 구분 :  <c:out value="${performance[0].str_type}"/></p>
				</div>
			</div>
		</div>
		<!-- end info -->
	</div>
	<!-- section -->

	<%@ include file="/WEB-INF/include/bottom.jsp"%>
</body>
</html>