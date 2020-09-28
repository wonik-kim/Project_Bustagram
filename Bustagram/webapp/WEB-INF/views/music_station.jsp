<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	

</script>

<style>
	 /* ##### reset ###### */
 input[type=range] {
    -webkit-appearance: none; 
    overflow: hidden;
    width: 100%; 
    height: 40px;
    background: green; 
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
    background: green;
    box-shadow: -100vw 0 0 100vw dodgerblue;
    border: 0.1px solid dodgerblue;
    cursor: pointer;
  }
</style>

</head>
<body>


 <!-- 흘러가는 시간에 따라 게이지 올라가기! -->
 
 	
 
 <!-- 게이지 바 부터  -->

	
  <input type = "range" min = "1" max = "100" value = "1">


</body>
</html>