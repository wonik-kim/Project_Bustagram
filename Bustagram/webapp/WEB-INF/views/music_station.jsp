<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

function MusicPlayTime(myaudio, currentTimeDiv, endTimeDiv, endTimeMin, endTimeSec, musicBar ){
	
	// 현재 재생시간 체크 

	var currentTimeMin = parseInt((myaudio.currentTime%3600)/60);
	var currentTimeSec = parseInt(myaudio.currentTime%60);
	
	musicBar.value = parseInt(myaudio.currentTime);
	
	currentTimeDiv.innerHTML = '<p>' +  currentTimeMin + ':' + currentTimeSec + '<p>';
	
	endTimeDiv.innerHTML = '<p>' +  endTimeMin + ':' + endTimeSec + '<p>';
	 
	console.log("running!")
	
	console.log(musicBar.value);
	
	musicBar.addEventListener('input', function(){
		
		myaudio.currentTime = musicBar.value;
	}, false)
	
	
	
}





$(document).ready(function(){
	 
	 var myaudio = document.getElementById('myaudio');
	 
	 // 전체 시간 div
	 var TimeDiv = document.getElementById('TimeDiv');
	 
	 // 현재 시간 div
	 var currentTimeDiv = document.getElementById('currentTimeDiv');
	 
	 // 종료 시간 div 
	 var endTimeDiv = document.getElementById('endTimeDiv');
	 
	 // 시간 체크 
	 var checkTime = document.getElementById('checkTime');
	 
	 // 뮤직바 
	 var musicBar = document.getElementById('musicBar');
	 
	 
	 var TotEndTime = 0;
	 var endTimeMin = 0;
	 var endTimeSec = 0;
	 var bufferdTime = 0;
	 
	 // 음악 실행 및 중지를 위한 ID
	 var timerId = null;
	 
	 
	 // 음악 로드되었을때 
	 myaudio.addEventListener("loadedmetadata", e => {
		 TotEndTime = myaudio.duration;
		 endTimeMin = parseInt((TotEndTime%3600)/60);
		 endTimeSec = parseInt(TotEndTime%60);
		 
		 musicBar.max = Math.ceil(TotEndTime);
		 
	 }, false)
	 
	 
	 
	 
	 stopMusic.onclick = function(){
		 myaudio.pause();	
		 
		 clearInterval(timerId);
		 
	 }
	 
	 playMusic.onclick = function(){	 
		 myaudio.play();
		 
		 var num = 0;
		 
		 timerId = setInterval(function(){MusicPlayTime(myaudio, currentTimeDiv, endTimeDiv, endTimeMin, endTimeSec, musicBar );}, 1000);
		 
		
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


 <!-- 2020.10.07 해야할것  -->
 <!-- 1. 음향 조절 및 음소거
      2. 15초 뒤로, 앞으로 
      3. 반복듣기
      4. 재생 누르면 일시정지 보이고 일시정지 누르면 재생 보이게 하기!
      5. css 틀 잡기!
        -->

 <!-- 흘러가는 시간에 따라 게이지 올라가기! -->
 
 	
 
 <!-- 게이지 바 부터  -->

	
  <input id = "musicBar" type = "range" min = "1" max = "100" value = "1" >
  <div id = "TimeDiv">
  	<div id = "currentTimeDiv"></div>
	<div id = "endTimeDiv"></div>
  </div>

<!-- 오디오 테그 테스트 -->

<audio id = "myaudio" >
  <source src="/music/북쪽계단.ogg" type="audio/ogg" />
  <source src="/music/북쪽계단.mp3" type="audio/mpeg" />
Your browser does not support the audio element.
</audio>



<button id ="playMusic" type="button">음악 재생!</button>
<button id ="stopMusic" type="button">음악 중지!</button>




</body>
</html>