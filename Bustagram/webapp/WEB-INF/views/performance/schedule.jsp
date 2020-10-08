<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css" rel="stylesheet" />
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
	<link rel="stylesheet" type="text/css" href="/css/easyui.css">
	<link rel="stylesheet" type="text/css" href="/css/icon.css">
	<link rel="stylesheet" type="text/css" href="/css/demo.css">
	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/jquery.easyui.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/include/top.jsp"%>

	<div style="width: 80%; height: 100px; background-color: lavender; margin: 20px 10%;">
		<input data-date-format="yyyy-mm" id="datepicker">
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
	<script src="/js/bootstrap-datepicker.ko.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script type="text/javascript">
		$('#datepicker').datepicker({
			  autoclose   : true
			, format      : "yyyy-mm"
			, viewMode    : "months"
			, minViewMode : "months"
			, orientation : "auto bottom"
			, language    : "ko"
		});

		$('#datepicker').datepicker("setDate", new Date());
	</script>

	<div style="width:100%; height:400px; background-color:lavender; margin:20px 0;">
		<div style="float:left; text-align:center; width:15%; height:100%; background-color:mediumpurple">
			<ul class="easyui-datalist" title="지역 (시도)" style="width:100%; height:100%">
				<li value="AL">Alabama</li>
			</ul>
		</div>
		<div style="float: left; text-align:center; width: 15%; height: 100%;">
			<ul class="easyui-datalist" title="지역 (구군)" style="width:100%; height:100%">
				<li value="AL">Alabama</li>
			</ul>
		</div>
		<div style="float: left; text-align:center; width: 15%; height: 100%; background-color: mediumpurple">
			<ul class="easyui-datalist" title="장르" style="width:100%; height:100%">
				<li value="AL">Alabama</li>
			</ul>
		</div>
		<div style="float: left; text-align:center; width: 15%; height: 100%;">
			<ul class="easyui-datalist" title="아티스트" style="width:100%; height:100%">
				<li value="AL">Alabama</li>
			</ul>
		</div>
		<div style="float: left; text-align: center; width: 40%; height: 100%; background-color: mediumpurple">공연 정보</div>
	</div>

	<div style="width: 100%; height: 700px; background-color: lavender; margin: 20px 0;"></div>

	<%@ include file="/WEB-INF/include/bottom.jsp"%>
</body>
</html>