<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	 
	 var myaudio = new Audio('/music/Splash.mp3');
	 
	 var cTimeDiv = document.getElementById('cTimeDiv');
	 
	 var currentTime = 0;
	 var endTime = 0;
	 var bufferdTime = 0;
	 
	 
	 myaudio.addEventListener("loadedmetadata", e => {
		 endTime = e.target.duration

	 }, false)
	 
	 stopMusic.onclick = function(){
		 myaudio.pause();
		 
		 
		 
		 
		 
	 }
	 
	 playMusic.onclick = function(){
		 
		 myaudio.play();
		
		 
		 
		 
	 }

	 cTimeBtn.onclick = function(){
		 cTimeDiv.innerHTML = '<p>'+ 'endTime = '     + endTime +'<p>';
	 }
	 
	 
});

</script>

<style>
	 /* ##### reset ###### */
 input[type=range] {
    -webkit-appearance: none; 
    overflow: hidden;
    width: 100%; 
    height: 40px;
     background: transparent;
    cursor: pointer;
   background: #e5e4e3;
    border-radius: 0; /* iOS */
  }

  input[type=range]:focus {
    outline: none; 
  }

  input[type=range]::-webkit-slider-thumb {
    -webkit-appearance: none;
    width: 0px;
    height: 40px;
    background: #e5e4e3;
    box-shadow: -100vw 0 0 100vw pink;
    border: #e5e4e3;
    cursor: pointer;
  }
  
  
 
  
  
</style>

</head>
<body>


 <!-- 흘러가는 시간에 따라 게이지 올라가기! -->
 
 	
 
 <!-- 게이지 바 부터  -->

	
  <input type = "range" min = "1" max = "100" value = "1">


<!-- 오디오 테그 테스트 -->

<audio controls="controls">
  <source src="/music/Splash.ogg" type="audio/ogg" />
  <source src="/music/Splash.mp3" type="audio/mpeg" />
Your browser does not support the audio element.
</audio>

<div id = "cTimeDiv">

</div>

<button id ="playMusic" type="button">음악 재생!</button>
<button id ="stopMusic" type="button">음악 중지!</button>
<button id ="cTimeBtn" type="button">현재 음악 시간 확인</button>



</body>
</html>