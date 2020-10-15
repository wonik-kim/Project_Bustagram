<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버스타그램/뮤직스테이션</title>
<link rel="stylesheet" href="/css/musicPlayer.css">
<style>

	html, body {
		width: 100%;
		height: 100%;
		margin : 0px auto;
		overflow: visible;
	}

	#MS_Wrap
	{
		width:100%;
		height:100%;
		position:relative;
		background-color: blue;
	}

</style>



</head>
<body>

<%@ include file="/WEB-INF/include/top.jsp"%>

<!-- 오디오 테그 테스트 -->

<audio id = "myaudio" >
  <source src="/music/북쪽계단.ogg" type="audio/ogg" />
  <source src="/music/북쪽계단.mp3" type="audio/mpeg" />
Your browser does not support the audio element.
</audio>


<!-- 뮤직스테이션 화면 전체 Wrap -->
<div id = "MS_Wrap">



</div>


<%@ include file="/WEB-INF/include/musicPlayer.jsp"%>

<!-- 오디오 테그 테스트 -->



</body>
</html>