<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

<style>

.swiper-container {
	height:420px;
	border:5px solid silver;
	border-radius:7px;
	box-shadow:0 0 20px #ccc inset;
}
.swiper-slide {
	text-align:center;
	display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items:center; /* 위아래 기준 중앙정렬 */
	justify-content:center; /* 좌우 기준 중앙정렬 */
}
.swiper-slide img {
	box-shadow:0 0 5px #555;
	max-width:100%; /* 이미지 최대너비를 제한, 슬라이드에 이미지가 여러개가 보여질때 필요 */
}


@import url('https://fonts.googleapis.com/css2?family=Cute+Font&display=swap');
* {font-family: 'Cute Font', cursive; font-size: 30px;} 


</style>

<div class="swiper-container">
	<div class="swiper-wrapper">
		<div class="swiper-slide">
			<div>
				<img src="img/busker1.jpg">
				<br>발라드
				<br>서효성
			</div>
		</div>

		<div class="swiper-slide">
			<div>
				<img src="img/busker2.jpg">
				<br>포크송
				<br>적재
			</div>
		</div>
		
		<div class="swiper-slide">
			<div>
				<img src="img/busker3.jpg">
				<br>발라드
				<br>스탠딩에그
			</div>
		</div>
		
		<div class="swiper-slide">
			<div>
				<img src="img/busker4.jpg">
				<br>시티팝
				<br>유키카
			</div>
		</div>
		
		<div class="swiper-slide">
			<div>
				<img src="img/busker5.jpg">
				<br>락
				<br>조정치와 아이들
			</div>
		</div>
		
		
		
	</div>

	<!-- 네비게이션 -->
	<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
	<div class="swiper-button-prev"></div><!-- 이전 버튼 -->

	<!-- 페이징 -->
	<div class="swiper-pagination"></div>
</div>
<script>

new Swiper('.swiper-container', {

	slidesPerView : 5, // 동시에 보여줄 슬라이드 갯수
	spaceBetween : 10, // 슬라이드간 간격
	slidesPerGroup : 5, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

	// 그룹수가 맞지 않을 경우 빈칸으로 메우기
	// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
	loopFillGroupWithBlank : true,

	loop : true, // 무한 반복

	pagination : { // 페이징
		el : '.swiper-pagination',
		clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
	},
	navigation : { // 네비게이션
		nextEl : '.swiper-button-next', // 다음 버튼 클래스명
		prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
	},
});

</script>