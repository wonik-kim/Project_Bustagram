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

function resizeEvent()
{

	//width 값을 가져오자
	var width_size = window.outerWidth;
	
	// 800 이하인지 if 문으로 확인 
	if(width_size <= 1700)
	{
		document.getElementById("profile_info_div").style.display = "none";		
	}
	
	else if(width_size > 1700)
	{
		document.getElementById("profile_info_div").style.display = "block";		
	}
	
}


$(document).ready(function(){

	resizeEvent();
	
	$(window).resize(function(){
		
		resizeEvent();
		
	})
	
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
			<button id = "search_btn" value = "검색"> </button>
		</div>
		
		<div id = "goList_div">
			<a href = "#">즐겨찾기 리스트로!</a>
		</div>
		
	</div>
	
	<hr>

	<!-- 뮤직스테이션 프로필 div -->
	<div id = "ms_profile_div">
	
		<!-- 사진 -->
		<div id = "profile_Img_div">
			<img id = "profile_Img" alt="no image" src="/img/musicStation/ihb.jpg">
		</div>
		
		<div id = "profile_info_div">
			
			<div id = "profile_title_div">
				<p>이달의 아티스트<p>
			</div>
			
			<div id = "profile_name_div">
				<p>이한빛의 뮤직스테이션<p>
			</div>
			
			<div id = "prifile_cont_div">
				<p>홍대에서 주로 활동하는 버스커입니다! 많이 찾아와 주세요~<p>
			</div>
			
		</div>
		
	</div>


	<!-- 플레이리스트 -->


</div>


<%@ include file="/WEB-INF/include/musicPlayer.jsp"%>

<!-- 오디오 테그 테스트 -->



</body>
</html>