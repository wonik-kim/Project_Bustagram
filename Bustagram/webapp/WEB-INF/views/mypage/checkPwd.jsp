<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/layer.css" />
</head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="/js/layer.js"></script>
<body>
	<c:choose>
		<c:when test="${ map.flag eq 'a' }">
			<div class="modal-wrapper">
			  <div class="modal">
			    <div class="head">
			      <h1>완료!</h1>
			    </div>
			    <div class="content">
			        <div class="good-job">
			          <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
			          <img src="/img/good.png" width="40px" height="40px"/>
			          <h1>비밀번호가 성공적으로 <br />변경되었습니다</h1>
			        </div><br />
			        <a href="#" class="btn-close" onclick="javascript:self.close()">닫기</a> 
			    </div>
			  </div>
			</div>
		</c:when>
		<c:otherwise>
		    <form name="oldPwdFrm" method="post" action="/Mypage/CheckPwd" onsubmit="return chkPwd()">
		     	비밀번호 변경을 위해, 현재 비밀번호를 입력해주세요.<br />
		        <label for="old_pwd"> 이전 암호 </label>
		        <input type="password" name="mem_pwd" id="old_pwd" />
		        <input type="submit" id="btnOldPwd" value="확인" /> <br />
		        <input type="hidden" name="mid" value="${ login.mid }" />
		        <div id="msg">
		        	<c:choose>
		        		<c:when test="${ map.pwdChk eq '0' }">
			        		${ map.msg }
			        	</c:when>
		        	</c:choose>
		        </div>
		    </form>
	   </c:otherwise>
   </c:choose>
</body>
</html>