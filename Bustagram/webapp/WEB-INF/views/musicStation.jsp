<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버스타그램/뮤직스테이션</title>
<link rel="stylesheet" href="/css/musicStation.css">
<link rel="stylesheet" href="/css/musicPlayer.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>

	

</style>

<script>


$(document).ready(function(){

})


</script>

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

	<!-- 검색 및 즐겨 찾기 div -->
	<div id = "sl_div">
		<div id = "search_div">
			<input id = "search_input" type = "text" name = "search"/>
			<button id = "search_btn" value = "검색"/>
		</div>
		
		<div id = "goList_div">
			<a>즐겨찾기 리스트로!</a>
		</div>
		
	</div>

	<!-- 뮤직스테이션 프로필 div -->
	<div id = "ms_profile_div">
	
		<!-- 사진 -->
		<div id = "profile_Img_div">
			<img id = "profile_Img" alt="no image" src="/img/musicStation/ihb.jpg">
		</div>
		
		<div id = "profile_info_div">
			
			<div id = "profile_title_div">
				
			</div>
			
			<div id = "profile_name_div">
			
			</div>
			
			<div id = "prifile_cont_div">
			
			</div>
			
		</div>
		
	</div>

</div>


<%@ include file="/WEB-INF/include/musicPlayer.jsp"%>

<!-- 오디오 테그 테스트 -->



</body>
</html>