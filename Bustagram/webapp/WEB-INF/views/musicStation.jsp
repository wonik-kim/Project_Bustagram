<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버스타그램/뮤직스테이션</title>

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

	#MP_Wrap 
	{	position:absolute;
		width:100%;
		height:90px;
		left:0px;
		background-color: #202020;
		bottom:0px;
		position:fixed;
	}
	
	#MB_Div
	{
		position:absolute;
		width: 100%;		
		height:18px;	
		background-color : red;
	}
	

	
		 /* ##### reset ###### */
 input[type=range] {
    -webkit-appearance: none; 
    overflow: hidden;

    width : 100%;
    height: 18px;
     margin: 0px;
     padding: 0px;
     background: transparent;
    cursor: pointer;
    background: #4B4B4B;
    border-radius: 0; /* iOS */
    
    
  }

  input[type=range]:focus {
    outline: none; 
  }

  input[type=range]::-webkit-slider-thumb {
    -webkit-appearance: none;
    top : 0px;
    width: 0px;
    height: 18px;
     margin: 0px;
     padding: 0px;
    background: #4B4B4B;
    box-shadow: -100vw 0 0 100vw #FF1150;
    border: #4B4B4B;
    cursor: pointer;
  }
  
  #sumnail_Div
  {
  	position : absolute;
   background-color: red;
   width: 60px;
   height: 60px;
  	top: 25px;
  	left: 60px;
  }
  
  #sumnail_Img
  {
  	width: 60px;
  	height: 60px;	
  }
  
  #title_Div
  {
  	position : absolute;
   width: 160px;
   height: 50px;
  	top: 35px;
  	left: 130px;
  }
  
  #title_Div > h1
  {
  	font-size : 15px;
  	color : white;
  }
  
  #title_Div > h2
  {
  	font-size : 10px;
  	color : white;
  }
  
  #like_Div
  {
  	position : absolute;
   	width: 30px;
    height: 30px;
  	top: 40px;
  	left: 260px;
  }
  
  #like_Img
  {
  width: 30px;
  height: 30px;
  	
  }
  
  
   #SC_Div
  {
  	position : absolute;
   	width: 30px;
    height: 30px;
  	top: 40px;
  	left: 310px;
  }
  
  #sc_Img
  {
  width: 23px;
  height: 30px;
  	
  }
  
  #Back15_Div
  {
  	position : absolute;
   	width: 30px;
    height: 30px;
  	top: 40px;
  	left: 700px;
  }
  
  #back15_Img
  {
  width: 25px;
  height: 25px;
  }
  
  
  
  #Play_Div
  {
  	position : absolute;
   	width: 40px;
    height: 40px;
  	top: 30px;
  	left: 930px;
  }
  
  #play_Img
  {
  width: 45px;
  height: 45px;
  }
  
  
  
  
  .buttons
  {
  	background-color:transparent;  
  	border:0;
  	outline: 0;
  }
  .buttons:focus
  {
  	outline:none;
  }
  
</style>

</head>
<body>

<%@ include file="/WEB-INF/include/top.jsp"%>

<!-- 오디오 테그 테스트 -->

<audio id = "myaudio" >
  <source src="/music/iu.ogg" type="audio/ogg" />
  <source src="/music/iu.mp3" type="audio/mpeg" />
Your browser does not support the audio element.
</audio>


<!-- 뮤직스테이션 화면 전체 Wrap -->
<div id = "MS_Wrap">



</div>


<!-- 뮤직 플레이어 Wrap -->
	<div id = "MP_Wrap">
	
		<!-- 뮤직 바 div -->
		<div id = "MB_Div">
			<!-- 뮤직 진행 바 -->
				<input id = "musicBar" type = "range" min = "1" max = "100" value = "1" >
		</div>
	
		<!-- 뮤직 플레이어 div -->
		<div id = "MP_Div">
			<!-- 썸네일-->
			<div id = "sumnail_Div">
			 	<img id = "sumnail_Img" alt="no image" src="/img/musicStation/lee.jpg">
			</div>
			
			<!-- 제목 및 이름 -->
			<div id = "title_Div">
				<h1>좋아하게 된거야.<h1>
				<h2>이한빛</h2>
			</div>
			
			<!-- 하트 -->
			<div id = "like_Div">
			<button class = "buttons">
				<img id = "like_Img" alt="no image" src="/img/musicStation/unlike.png">
			</button>
			</div>
			
			<!-- 가사보기 -->
			<div id = "SC_Div">
				<img id = "sc_Img" alt="no image" src="/img/musicStation/text_gray.png">
			</div>
			
			
			<!-- 15 뒤로 -->
			<div id = "Back15_Div">
				<img id = "back15_Img" alt="no image" src="/img/musicStation/back15.png">
			</div>
			
			<!-- 이전곡 -->
			<div id = "Prev_Div">
				<img id = "prev_Img" alt="no image" src="/img/musicStation/prevSong.png">
			</div>
			
			<!-- 재생 및 일시정지 -->
			<div id = "Play_Div">
				<img id = "play_Img" alt="no image" src="/img/musicStation/play.png">
			</div>
			
			
			<!-- 다음곡 -->
			<div id = "Next_Div">
				<img id = "next_Img" alt="no image" src="/img/musicStation/nextSong.png">
			</div>
			
			
			<!-- 15 앞으로 -->
			<div id = "Front15_Div">
				<img id = "front15_Img" alt="no image" src="/img/musicStation/front15.png">			
			</div>
			
			
			<!-- 셔플 온 & 오프 -->
			<div id = "Suffle_Div">
				<img id = "shuffle_Img" alt="no image" src="/img/musicStation/shuffleNo.png">
			</div>
			
			<!-- 반복 온& 반복오프 & 1곡만 반복 -->
			<div id = "Repeat_Div">
				<img id = "repeat_Img" alt="no image" src="/img/musicStation/repeatNo.png">
			</div>
			
			<!-- 시간 -->
			<div id = "Time_Div">
				
			</div>
			
			
			<!-- 음향  -->
			<div id = "Volumn_Div">
				<img id = "volumn_Img" alt="no image" src="/img/musicStation/vol.png">
			</div>
			
			
		</div>
	</div>


</body>
</html>