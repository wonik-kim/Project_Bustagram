<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>

function MusicPlayTime(myaudio, TimeDiv, endTimeMin, endTimeSec, musicBar ){
	
	// 현재 재생시간 체크 

	var currentTimeMin = parseInt((myaudio.currentTime%3600)/60);
	var currentTimeSec = parseInt(myaudio.currentTime%60);
	
	musicBar.value = parseInt(myaudio.currentTime);
	
	TimeDiv.innerHTML = '<p>' +  currentTimeMin + ':' + currentTimeSec + '/' + endTimeMin + ':' + endTimeSec + '<p>';
	 
	console.log("running!")
	
	console.log(musicBar.value);
	
	musicBar.addEventListener('input', function(){
		
		myaudio.currentTime = musicBar.value;
	}, false)
	
	
	
}

// 플레이 및 일시정지 함수 
var PlayPause = function(myaudio, TimeDiv, endTimeMin, endTimeSec, musicBar){
	
	//play_Img
	
	if($('#playHidden').val() == 'play')
		{		
		 myaudio.play();
		 var num = 0;
		 timerId = setInterval(function(){MusicPlayTime(myaudio, TimeDiv, endTimeMin, endTimeSec, musicBar );}, 1000);
		 $('#playHidden').attr('value', 'pause');	
		 $('#play_Img').attr('src', '/img/musicStation/pause.png');
		}
	
	else
		{
		myaudio.pause();	

		clearInterval(timerId);
		$('#playHidden').attr('value', 'play');
		$('#play_Img').attr('src', '/img/musicStation/play.png');
		}
	
}

// 음소거 
var MuteVol = function(myaudio){
	
	if($('#hiddenVol').val() == 'mute')
		{
		myaudio.muted = true;
		$('#volumn_Img').attr('src', '/img/musicStation/mute.png');
		$('#hiddenVol').attr('value', 'nomute');
		}
	else
		{
		myaudio.muted = false;
		$('#volumn_Img').attr('src', '/img/musicStation/vol.png');
		$('#hiddenVol').attr('value', 'mute');
		}
	
}

// ajax로 재생할 곡 리스트 목록 들고오기 
function callMusicList() {
	
	// 오디오 div 
	var audio_Div = document.getElementById('audio_Div');
	
	$.ajax({
		
		url:'MS/getList',
		dataType: 'json',
		data : {mid:'IHB'},
		success : function(datas){
			alert(datas);
		},
		error : function(){
			alert('err');
		}
		
		
	})
	
}




$(document).ready(function(){
	
	callMusicList();
	
	 var myaudio  = document.getElementById('myaudio');
	
	 // 전체 시간 div
	 var TimeDiv  = document.getElementById('Time_Div');
	 
	 // 뮤직바 
	 var musicBar = document.getElementById('musicBar');
	 
	 // 재생 및 일시정지 div 
	 var playDiv  = document.getElementById('Play_Div');
	 
	 
	 
	 var TotEndTime = 0;
	 var endTimeMin = 0;
	 var endTimeSec = 0;
	 var bufferdTime = 0;
	 
	 //음악 실행 및 중지를 위한 ID
	 var timerId = null;
	 
	// 음악 로드되었을때 
	 myaudio.addEventListener("loadedmetadata", e => {
		 TotEndTime = myaudio.duration;
		 endTimeMin = parseInt((TotEndTime%3600)/60);
		 endTimeSec = parseInt(TotEndTime%60);
		 
		 musicBar.max = Math.ceil(TotEndTime);
		 
	 }, false)
	 
	 
	 playMusic.onclick = function(){
		 PlayPause(myaudio, TimeDiv, endTimeMin, endTimeSec, musicBar);
		
	}
	
	 
	// 볼륨 바 
	var volumnBar = document.getElementById('volumnBar');
	
	volumnBar.addEventListener('input', function(){
		
		myaudio.volume = (volumnBar.value/100);
	}, false)
	 
	
	volMute.onclick = function(){
		MuteVol(myaudio);
	}
	
	
	
})

</script>

<body>

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
			<button class = "buttons">
				<img id = "sc_Img" alt="no image" src="/img/musicStation/text_gray.png">
			</button>
			</div>
			
			
			<!-- 15 뒤로 -->
			<div id = "Back15_Div">
			<button class = "buttons">
				<img id = "back15_Img" alt="no image" src="/img/musicStation/back15.png">
			</button>
			</div>
			
			<!-- 이전곡 -->
			<div id = "Prev_Div">
			<button class = "buttons">
				<img id = "prev_Img" alt="no image" src="/img/musicStation/prevSong.png">
			</button>
			</div>
			
			<!-- 재생 및 일시정지 -->
			<div id = "Play_Div">
			<button id = "playMusic" class = "buttons">
				<img id = "play_Img" alt="no image" src="/img/musicStation/play.png">
			</button>
			<input type = "hidden" id="playHidden" value = "play" />
			</div>
			
			
			<!-- 다음곡 -->
			<div id = "Next_Div">
			<button class = "buttons">
				<img id = "next_Img" alt="no image" src="/img/musicStation/nextSong.png">
			</button>
			</div>
			
			
			<!-- 15 앞으로 -->
			<div id = "Front15_Div">
			<button class = "buttons">
				<img id = "front15_Img" alt="no image" src="/img/musicStation/front15.png">			
			</button>
			</div>
			
			
			<!-- 셔플 온 & 오프 -->
			<div id = "Suffle_Div">
			<button class = "buttons">
				<img id = "shuffle_Img" alt="no image" src="/img/musicStation/shuffleNo.png">
			</button>
			</div>
			
			<!-- 반복 온& 반복오프 & 1곡만 반복 -->
			<div id = "Repeat_Div">
			<button class = "buttons">
				<img id = "repeat_Img" alt="no image" src="/img/musicStation/repeatNo.png">
			</button>
			</div>
			
			<!-- 시간 -->
			<div id = "Time_Div">
				<p>1:20/3:20<p>
			</div>
			
			
			<!-- 음향  -->
			<div id = "Volumn_Div">
			<button id = "volMute" class = "buttons">
				<img id = "volumn_Img" alt="no image" src="/img/musicStation/vol.png">
			</button>
				<input id = "volumnBar" type = "range" min = "0" max = "100" value = "50" >
			    <input id = "hiddenVol" type = "hidden" value = "mute"/>
			</div>
			
			<!--오디오 테그가 들어올 div-->
			<div id = "audio_Div">
				
			</div>
			
		</div>
	</div>

</body>
</html>