<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>공연장소 및 일정</title>
	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	
	<%-- full calendar --%>
	<link href='/css/full_calendar/core_main.css' rel='stylesheet' />
	<link href='/css/full_calendar/daygrid_main.css' rel='stylesheet' />
	<link href='/css/full_calendar/timegrid_main.css' rel='stylesheet' />
	<link href='/css/full_calendar/list_main.css' rel='stylesheet' />
	<script src='/js/full_calendar/core_main.js'></script>
	<script src='/js/full_calendar/interaction_main.js'></script>
	<script src='/js/full_calendar/daygrid_main.js'></script>
	<script src='/js/full_calendar/timegrid_main.js'></script>
	<script src='/js/full_calendar/list_main.js'></script>
	
	<style>
		#datepicker {
			margin:0 40%;
			width:20%; height:50px;
			text-align:center;
		}
		.list_title {
			display:block;
			width:100%; height:50px;
			border:2px solid #FBCFD0;
			line-height:50px;
			font-weight:bold;
		}
		.list_body {
			display:block;
			width:100%; height:300px;
			overflow:auto;
			margin:10px 0;
		}
		.item_sido, .item_gugun, .item_genre, .item_artist, .item_performance {
			display:block;
			width:100%; height:40px;
			margin:10px 0;
			line-height:40px;
		}
		.item_sido:hover, .item_gugun:hover, .item_genre:hover, .item_artist:hover, .item_performance:hover {
			background-color:#FBCFD0;
			cursor: pointer;
		}
		#tbl_detail { width:100%; }
		.th_detail { width:35%; padding:10px; border-bottom:1px solid #E3E3E4; }
		.td_detail { width:65%; text-align:left; padding:10px; padding-left:20px; }
		
		.fc-title { text-align:center; margin:o auto; width:100%; display:block; }
		.fc-title:hover { font-weight:bold; cursor: pointer; }
	</style>
	
	<script>
		$(document).ready(
			function() {
				var sido = '';
				var gugun = '';
				var genre = '';
				var artist = '';
				var performance = '';
				var idx = 0;
				
				$('.datepicker').on('click', '#datepicker', function() {
					$.each($('.item_sido'), function(index, item) {
						$(item).css('background-color', 'white');
					});
					
					$('#gugun').html('');
					$('#genre').html('');
					$('#artist').html('');
					$('#performance').html('');
					$('#calendar').html('');
				});
				
				$('#sido').on('click', '.item_sido', function() {
					sido = $(this).attr('id');
					
					$.each($('.item_sido'), function(index, item) {
						$(item).css('background-color', 'white');
					});
					
					$(this).css('background-color', '#FBCFD0');
					
					$.ajax({
						  url      : '/Schedule/Gugun'
						, data     : { 'region_id_sido' : sido }
						, dataType : 'json'
						, success  : function(datas) {
							var html = "";
							
							$.each(datas, function(index, item) {
								html += "<div class='item_gugun' id='" +item.region_id+ "'>" +item.region_val+ "</div>";
							});
							
							$('#gugun').html(html);
							$('#genre').html('');
							$('#artist').html('');
							$('#performance').html('');
							$('#calendar').html('');
						}
						, error    : function() {
							alert('error');
						} 
					});
				});
				
				$('#gugun').on('click', '.item_gugun', function() {
					gugun = $(this).attr('id');
					
					$.each($('.item_gugun'), function(index, item) {
						$(item).css('background-color', 'white');
					});
					
					$(this).css('background-color', '#FBCFD0');
					
					$.ajax({
						  url      : '/Schedule/Genre'
						, data     : {   'region_id_sido'  : sido
									   , 'region_id_gugun' : gugun
									   , 'schedule_date'   : $('#datepicker').val() }
						, dataType : 'json'
						, success  : function(datas) {
							var html = "";
							
							$.each(datas, function(index, item) {
								html += "<div class='item_genre' id='" +item.gen_id+ "'>" +item.gen_val+ "</div>";
							});
							
							$('#genre').html(html);
							$('#artist').html('');
							$('#performance').html('');
							
							var events = [];
							
							$.ajax({
								  url      : '/FullCalendar/Region'
								, data     : {   'region_id_sido' : sido
									           , 'region_id_gugun' : gugun }
								, datatype : 'json'
								, async:false
								, success  : function(data) {
									$.each(data, function(index, item) {
										events.push({
											url        : item.idx
											, title     : item.title
											, start     : item.start
											, color     : item.color
											, textColor : item.textColor
										});
									});
								}
								, error   : function() {
									alert("error");
								}
							});	
							
						    var calendarEl = document.getElementById('calendar');
						    var calendar = new FullCalendar.Calendar(calendarEl, {
						      plugins: [ 'interaction', 'dayGrid'],
						      header: {
						          left   : ''
						        , center : 'title'
						        , right  : ''
						      },
						      defaultDate: $('#datepicker').val()+ '-01',
						      navLinks: false, // can click day/week names to navigate views
						      businessHours: true, // display business hours
						      events:events
						    });
							
						    $('#calendar').html('');
						    
						    calendar.render();
						    
						    $('.fc-day-grid-event').each(function(){

						    	var pkValue =  $(this).attr('href');

						    	$(this).children().children('.fc-title').attr('id', pkValue);
						    	$(this).removeAttr('href');
						    	})
						}
						, error    : function() {
							alert('error');
						} 
					});
				});
				
				$('#genre').on('click', '.item_genre', function() {
					genre = $(this).attr('id');
					
					$.each($('.item_genre'), function(index, item) {
						$(item).css('background-color', 'white');
					});
					
					$(this).css('background-color', '#FBCFD0');
					
					$.ajax({
						  url      : '/Schedule/Artist'
						, data     : {   'region_id_sido'  : sido
									   , 'region_id_gugun' : gugun
									   , 'genre_id' : genre
									   , 'schedule_date'   : $('#datepicker').val() }
						, dataType : 'json'
						, success  : function(datas) {
							var html = "";
							
							$.each(datas, function(index, item) {
								html += "<div class='item_artist' id='" +item.artist_id+ "'>" +item.art_name+ "</div>";
							});
							
							$('#artist').html(html);
							$('#performance').html('');
						}
						, error    : function() {
							alert('error');
						} 
					});
				});
				
				$('#artist').on('click', '.item_artist', function() {
					artist = $(this).attr('id');
					
					$.each($('.item_artist'), function(index, item) {
						$(item).css('background-color', 'white');
					});
					
					$(this).css('background-color', '#FBCFD0');
					
					$.ajax({
						  url      : '/Schedule/Performance'
						, data     : {   'region_id_sido'  : sido
									   , 'region_id_gugun' : gugun
									   , 'genre_id'        : genre
									   , 'artist_id'       : artist
									   , 'schedule_date'   : $('#datepicker').val() }
						, dataType : 'json'
						, success  : function(datas) {
							var html = "";
							
							$.each(datas, function(index, item) {
								html += "<div class='item_performance' id='" +item.idx+ "'>" +item.schedule_name+ "</div>";
							});
							
							$('#performance').html(html);
						}
						, error    : function() {
							alert('error');
						} 
					});
				});
				
				$('#performance').on('click', '.item_performance', function() {
					performance = $(this).attr('id');
					
					$.ajax({
						  url      : '/Schedule/Detail'
						, data     : { 'idx' : performance }
						, dataType : 'json'
						, success  : function(data) {
							var html = "";
							
							html += "<table id='tbl_detail'>";
							html += "<tr>";
							html += "<th class='th_detail'>공연명</th>";
							html += "<td class='td_detail'>" +data.schedule_name+ "</td>";
							html += "</tr>";
							html += "<tr>";
							html += "<th class='th_detail'>아티스트</th>";
							html += "<td class='td_detail'>" +data.art_name+ "</td>";
							html += "</tr>";
							html += "<tr>";
							html += "<th class='th_detail'>장소</th>";
							html += "<td class='td_detail'>" +data.str_name+ "</td>";
							html += "</tr>";
							html += "<tr>";
							html += "<th class='th_detail'>날짜 및 시간</th>";
							html += "<td class='td_detail'>" +data.schedule_date+ "</td>";
							html += "</tr>";
							html += "<tr>";
							html += "<th class='th_detail'>소개</th>";
							html += "<td class='td_detail'>" +data.schedule_info+ "</td>";
							html += "</tr>";
							html += "</table>";
							
							$('#performance').html(html);
						}
						, error    : function() {
							alert('error');
						} 
					});
				});
				
				
				$('div').on('click', '.fc-title', function() {
					idx = $(this).attr('id');

					$.ajax({
						  url      : '/Schedule/Detail'
						, data     : { 'idx' : idx }
						, dataType : 'json'
						, success  : function(data) {
							var html = "";
							
							html += "<table id='tbl_detail'>";
							html += "<tr>";
							html += "<th class='th_detail'>공연명</th>";
							html += "<td class='td_detail'>" +data.schedule_name+ "</td>";
							html += "</tr>";
							html += "<tr>";
							html += "<th class='th_detail'>아티스트</th>";
							html += "<td class='td_detail'>" +data.art_name+ "</td>";
							html += "</tr>";
							html += "<tr>";
							html += "<th class='th_detail'>장소</th>";
							html += "<td class='td_detail'>" +data.str_name+ "</td>";
							html += "</tr>";
							html += "<tr>";
							html += "<th class='th_detail'>날짜 및 시간</th>";
							html += "<td class='td_detail'>" +data.schedule_date+ "</td>";
							html += "</tr>";
							html += "<tr>";
							html += "<th class='th_detail'>소개</th>";
							html += "<td class='td_detail'>" +data.schedule_info+ "</td>";
							html += "</tr>";
							html += "</table>";
							
							$('#genre').html('');
							$('#artist').html('');
							$('#performance').html(html);
							
							$('html, body').animate({ scrollTop : 0 }, 400);
						}
						, error    : function() {
							alert('error');
						} 
					});
				});
			});
	</script>
</head>
<body>
	<%@ include file="/WEB-INF/include/top.jsp"%>

	<div class="datepicker" style="width: 80%; height: 80px; margin: 20px 10%;">
		<input data-date-format="yyyy-mm" id="datepicker">
	</div>

	<div style="width:100%; height:400px; margin:20px 0;">
		<div style="float:left; text-align:center; width:12.5%; height:100%; margin:0 1%">
			<div class="list_title">지역 (시도)</div>
			<div class="list_body" id="sido">
				<c:forEach var="scheduleRegion" items="${ scheduleRegion }">
					<div class="item_sido" id="${ scheduleRegion.region_id }">${ scheduleRegion.region_val }</div>
				</c:forEach>
			</div>
		</div>
		
		<div style="float:left; text-align:center; width:12.5%; height:100%; margin:0 1%">
			<div class="list_title">지역 (구군)</div>
			<div class="list_body" id="gugun"></div>
		</div>
		
		<div style="float:left; text-align:center; width:12.5%; height:100%; margin:0 1%">
			<div class="list_title">장르</div>
			<div class="list_body" id="genre"></div>
		</div>
		
		<div style="float:left; text-align:center; width:12.5%; height:100%; margin:0 1%">
			<div class="list_title">아티스트</div>
			<div class="list_body" id="artist"></div>
		</div>
		
		<div style="float:left; text-align:center; width:40%; height:100%; margin:0 1%">
			<div class="list_title">공연 정보</div>
			<div class="list_body" id="performance"></div>
		</div>
	</div>

	<div id="calendar" style="width:100%; height:700px; margin:20px 0;"></div>

	<%@ include file="/WEB-INF/include/bottom.jsp"%>
</body>
<%-- date picker --%>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css" rel="stylesheet" />
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
<script src="/js/bootstrap-datepicker.ko.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$('#datepicker').datepicker({
		  autoclose   : true
		, format      : "yyyy-mm"
		, viewMode    : "months"
		, minViewMode : "months"
		, orientation : "right bottom"
		, language    : "ko"
	});

	$('#datepicker').datepicker("setDate", new Date());
</script>
</html>