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
	}
	

	
		 /* ##### reset ###### */
 input[type=range] {
    -webkit-appearance: none; 
    overflow: hidden;
    width: 100%; 
    height: 18px;
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
  	left: 30px;
  }
  
  #sumnail_Img
  {
  	width: 60px;
  	height: 60px;	
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
			 	<img id = "sumnail_Img" alt="no image" src="/img/lee.jpg">
			</div>
		</div>
	</div>


</body>
</html>