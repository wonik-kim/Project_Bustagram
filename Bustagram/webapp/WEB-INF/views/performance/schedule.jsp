<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/include/top.jsp"%>

	<div style="width:80%; height:100px; background-color:lavender; margin:20px 10%;"></div>

	<div style="width:100%; height:400px; background-color:lavender; margin:20px 0;">
		<div style="float:left; text-align:center; width:15%; height:100%; background-color:mediumpurple">지역(시도)</div>
		<div style="float:left; text-align:center; width:15%; height:100%;">지역(구군)</div>
		<div style="float:left; text-align:center; width:15%; height:100%; background-color:mediumpurple">장르</div>
		<div style="float:left; text-align:center; width:15%; height:100%;">아티스트</div>
		<div style="float:left; text-align:center; width:40%; height:100%; background-color:mediumpurple">공연 정보</div>
	</div>

	<div style="width:100%; height:700px; background-color:lavender; margin:20px 0;"></div>

	<%@ include file="/WEB-INF/include/bottom.jsp"%>
</body>
</html>