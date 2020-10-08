<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버스타그램입니다.</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Cute+Font&display=swap');
body {font-family: 'Cute Font', cursive;} 
</style>


</head>
<body>

	<%@ include file="/WEB-INF/include/top.jsp"%>
	<div style = "font-size: 50px; text-align: center;">진행 예정 공연</div>
	<%@ include file="/WEB-INF/include/concert.jsp"%>
	<div style = "font-size: 50px; text-align: center;">이달의 떠오르는 버스커</div>
	<%@ include file="/WEB-INF/include/busker.jsp"%>
	<%@ include file="/WEB-INF/include/bottom.jsp"%>
	
</body>
</html>