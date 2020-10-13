<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>공연장소 및 일정</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css" rel="stylesheet" />
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
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
		}
		.item {
			display:block;
			width:100%; height:30px;
			margin:10px 0;
			line-height:30px;
		}
		.item:hover {
			background-color:#FBCFD0;
			cursor: pointer;
		}
	</style>
	<script>
		$(document).ready(
			function() {
				$('#sido').on('click', '.item', function() {
					$.each($('.item'), function(index, item) {
						$(item).css('background-color', 'white');
					});
					
					$(this).css('background-color', '#FBCFD0');
					
					$.ajax({
						  url      : '/Schedule/Gugun'
						, data     : { 'region_id_sido' : $(this).attr('id') }
						, dataType : 'json'
						, success  : function(datas) {
							var html = "";
							
							$.each(datas, function(index, item) {
								html += "<div class='item' id='" +item.region_id+ "'>" +item.region_val+ "</div>";
							});
							
							$('#gugun').html(html);
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

	<div style="width: 80%; height: 100px; margin: 20px 10%;">
		<input data-date-format="yyyy-mm" id="datepicker">
		<input type="button" value="조회"/>
	</div>

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

	<div style="width:100%; height:400px; margin:20px 0;">
		<div style="float:left; text-align:center; width:15%; height:100%; margin:0 1%">
			<div class="list_title">지역 (시도)</div>
			<div class="list_body" id="sido">
				<c:forEach var="scheduleRegion" items="${ scheduleRegion }">
					<div class="item" id="${ scheduleRegion.region_id }">${ scheduleRegion.region_val }</div>
				</c:forEach>
			</div>
		</div>
		
		<div style="float:left; text-align:center; width:15%; height:100%; margin:0 1%">
			<div class="list_title">지역 (구군)</div>
			<div class="list_body" id="gugun"></div>
		</div>
		
		<div style="float:left; text-align:center; width:15%; height:100%; margin:0 1%">
			<div class="list_title">장르</div>
			<div class="list_body" id="genre"></div>
		</div>
		
		<div style="float:left; text-align:center; width:15%; height:100%; margin:0 1%">
			<div class="list_title">아티스트</div>
			<div class="list_body" id="artist"></div>
		</div>
		
		<div style="float:left; text-align:center; width:30%; height:100%; margin:0 1%">
			<div class="list_title">공연 정보</div>
			<div class="list_body" id="performance"></div>
		</div>
	</div>

	<div style="width:100%; height:700px; background-color:lavender; margin:20px 0;"></div>

	<%@ include file="/WEB-INF/include/bottom.jsp"%>
</body>
</html>