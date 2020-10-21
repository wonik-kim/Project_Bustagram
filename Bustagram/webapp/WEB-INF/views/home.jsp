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
	<div>
	<%@ include file="/WEB-INF/include/top.jsp"%>
	</div>
	<marquee behavior="alternate" scrollamount="10"><div style = "font-size: 50px; text-align: left;">진행 예정 공연</div></marquee>
	<%@ include file="/WEB-INF/include/concert.jsp"%>
	<marquee behavior="alternate" scrollamount="10"><div style = "font-size: 50px; text-align: left;">이달의 떠오르는 버스커</div></marquee>
	<%@ include file="/WEB-INF/include/busker.jsp"%>
	<div style="width: 50%; float: left;">top10 차트
		<div>
		<%@ include file = "/WEB-INF/include/chart.jsp" %>
		</div>
	</div>
	<div style="width: 50%; float: right;">게시판
		<div>
		<%@ include file = "/WEB-INF/include/notice.jsp" %>
		</div>
	</div>
	<div>
	<%@ include file="/WEB-INF/include/bottom.jsp"%>
	</div>
</body>
</html>