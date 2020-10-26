<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="/js/user_etc.js"></script>
<link rel="stylesheet" type="text/css" href="/css/user.css" />
<link rel="stylesheet" type="text/css" href="/css/layer.css" />
<script>
	$(function() {
	// 선언부
		var reader = new FileReader();	
	// 초기값
		$('#closeInfo').hide();
		$('.hide').hide();
		
		$('.memUpgrade').prop("disabled","disabled");
		
	// on 이벤트
		$('#rq_seg').on('change', function() {
			if ($(this).val != 'none') {
				$('.memUpgrade').removeAttr("disabled")
			}
		});
		$('body').on('click', '.fileImg', function(e) {
			$('#file').trigger("click");
		})
		$('body').on('click', '#submit', function(e) {
			$('#frm').submit();
		})	
		$('body').on('click', '#moreInfo', function(e) {
			$(this).hide();
			$('.hide').show();
			$('#closeInfo').show();
		})
		$('body').on('click', '#closeInfo', function(e) {
			$(this).hide();
			$('.hide').hide();
			$('#moreInfo').show();
		})
		$('body').on('change', '#emailSel', function() {
			if ($('#emailSel option:selected').text() == '직접 입력') {
				$('#txtEmail').removeAttr("readonly");
				$('#txtEmail').focus();
				$('#txtEmail').val('');
			} else {
				$('#txtEmail').attr("readonly", "true");
				$('#txtEmail').val($('#emailSel').val());
			}
		});
		$("body").on("click", "#update_btn", function(e) {
			$.ajax({
				url : "/Mypage/MemInfo?mid=${login.mid}",
				type : "POST",
				success : function(e) {
					$('.intro').removeAttr("readonly");
					if ('${getMemInfo[0].lvl}' == 'P') {
						html = '<input type="text" name="str_name" value="${getMemInfo[0].str_name}" />'
						$('.str_name').html(html);
						html = '<input type="text" name="str_type" value="${getMemInfo[0].str_type}" />'
						$('.str_type').html(html);
						html  = '<select id="addr1" class="addr1" name="str_addr1">';
						html += 	'<option value="0">--시,도--</option>';
						html += 	'<c:forEach var="addr1" items="${ addr1_list }" varStatus="vs">';
						html += 		'<option value="${addr1.region_id}"> ${addr1.region_val} </option> ';
						html += 	'</c:forEach>';
						html += 	'</select>';
						html += '<select id="addr2" class="addr2" name="str_addr2">';	
						html += '<option value="0">--구,군--</option>';
						html += 	'<c:forEach var="addr2" items="${ addr2_list }" varStatus="vs">';
						html += 		'<option value="${ addr2.region_id }">${ addr2.region_val }</option>';
						html += 	'</c:forEach>';
						html += '</select>';
						html += '<input type="text" name="str_addr3" class="addr3" id="addr3" value="${ getMemInfo[0].str_addr3 }"/>';
						$('.str_addr').html(html);
						$('.addr1 option[value="<c:out value='${getMemInfo[0].str_addr1_id}' />"]').prop("selected", "selected");
						$('.addr2 option[value="<c:out value='${getMemInfo[0].str_addr2_id}' />"]').prop("selected", "selected");
					} else if ('${getMemInfo[0].lvl}' == 'A') {
						html = '<input type="text" name="art_name" value="${getMemInfo[0].art_name}" />';
						$('.art_name').html(html);
						html  = '<select class="gen_id" name="gen_id">';
						html += '	<c:forEach var="gen" items="${ gen_list }">';
						html += '		<option value="${ gen.GEN_ID }">${ gen.GEN_VAL }</option>';
						html += '	</c:forEach>';
						html += '</select>';
						$('.gen_val').html(html);
						$('.gen_id > option[value="<c:out value='${ getMemInfo[0].gen_id }' />"]').prop("selected", "selected");
						html = '<input type="number" name="art_cnt" value="${getMemInfo[0].art_cnt}" />';
						$('.art_cnt').html(html);
					}
					$('.moreInfo').hide();
					$('.hide').show();
					$("#update_btn").remove();
					$('.profileImg').remove();
					html = '';
					html += '<input name="mem_name" type="text" value="${ getMemInfo[0].mem_name }" />';
					$('#name').html(html);
					html = '<input type="hidden" name="lvl" value="${ getMemInfo[0].lvl }" />';
					$('#hidden').html(html);
					html = '<div class="form-wrap ui-check-date" data-term="100">';
					html += '	<select name="mem_birth_y" id="birthday-y-ko" title="연도" data-default-option="연도" data-unit="y"></select>';
					html += '	년<select name="mem_birth_m" id="birthday-m-ko" title="월" data-default-option="월" data-unit="m"></select>';
					html += '	월<select  name="mem_birth_d" id="birthday-d-ko" title="일" data-default-option="일" data-unit="d"></select>일';
					html += '</div>';
					$('#birth').html(html);
					selectDateCheck();
					$('#birthday-y-ko option[value="${birth[0]}"]').attr('selected', 'true');
					$('#birthday-m-ko option[value="${birth[1]}"]').attr('selected', 'true');
					$('#birthday-d-ko option[value="${birth[2]}"]').attr('selected', 'true');
					html = '<select name="mem_gen" id="gen_sel">';
					html +=	'<option value="F" id="gen_F"> 여자 </option>';
					html +=	'<option value="M" id="gen_M"> 남자 </option>';
					html += '</select>';
					$('#gen').html(html);
					if ("${getMemInfo[0].mem_gen}"=="F") {
						$("#gen_F").prop("selected", "true");
					} else if ("${getMemInfo[0].mem_gen}"=="M"){
						$("#gen_M").prop("selected", "true");
					}
					var email = '${getMemInfo[0].mem_mail}';
					var arr = email.split('@');
					html = '<input name="mem_mail1" type="text" value="' + arr[0] + '" style="width:130px" required />';
					html += '@';
					html += '<input id="txtEmail" type="text" name="mem_mail2" readonly="true" required />';
					html += '<select id="emailSel">';
					html += '	<option value="naver.com">naver.com</option>';	
					html += '	<option value="nate.com">nate.com</option>';	
					html += '	<option value="gmail.com">gmail.com</option>';	
					html += '	<option value="daum.net">daum.net</option>';	
					html += '	<option id="none" selected="selected" value="직접 입력">직접 입력</option>';	
					html += '</select>';
					$('#email').html(html);
					for (var i = 1; i < 5; i++) {
						var e = $('#emailSel option:nth-child(' + i + ')').val();
						if (e == arr[1]) {
							$('#none').removeAttr("selected");
							$('#emailSel option[value="' + arr[1] + '"]').prop("selected", "selected");
						}
					}
					$('#txtEmail').val(arr[1]);
					html = '<figure id="snip1141" class="snip1141 fileImg cursor">';
					html += '	<img id="fileProf" class="button profileImg" src="/upload/profile/${getProf[1]}.${getProf[2]}" alt="프로필사진" />'
					html += '	<figcaption>';
					html += '		<h2>사진 변경</h2>';
					html += '		<div class="circle fileImg cursor"><i class="ion-ios-plus-empty"> </i></div>';
					html += '	</figcaption>';
					html += '</figure>';
					$('.profile').html(html);
					html = '<tr><th>비밀번호</th><td><a class="btnpwd" href="#" id="btnPwd">비밀번호 변경</a></td></tr>';
					$('#info_m tr:nth-child(1)').after(html);
					html = '<div><input type="file" id="file" name="file" hidden="true" /></div>';
					$('#title').html(html);
					html = '<br /><br /><br /><div><a href="#" id="submit" class="button"> 저장 </a> &nbsp;&nbsp;&nbsp;&nbsp;';
					html += '<a href="/Mypage/MemInfo?mid=${login.mid}" id="cancel"class="button"> 취소 </a></div>';
					$('#btn_grp').html(html);
					html  = '<tr>'
					html += '	<td>파일이름</td>';
					html += '	<td>${getProf[0]} </td>';
					html += '	<td><input type="button" value="삭제" id="delbtn"/></td>';
					html += '</tr>'
					html += '<tr>'
					html += '	<td>최종 수정 날짜</td>';
					html += '	<td colspan="2">${getProf[3]}</td>'
					html += '</tr>'
					$('#uProf').html(html);
				} 
			});		
			$('body').on('change', '.addr1', function() {
				var html='';
				if ($(this).val() == '0') {
					html += '<option value="0">--구,군--</option>';
					$('.addr2').html(html);
				} else {
					var data = { parent_id : $(this).val()};
					$.ajax({
						url : "/Mypage/MemInfo/Addr",
						type : "POST", 
						data : data,
						success : function(data){
							html += '<option value="0">--구,군--</option>';
							for (var i = 0; i < data.length; i++) {
								html += '<option value="' + data[i].region_id + '">' + data[i].region_val + '</option>';
							}
							$('.addr2').html(html);
							$('.addr2 option[value="0"]').prop("selected", "selected");
						},
						error : function(e) {
							alert("에러 발생" + e);
						}
					})
				}
			})
			$('body').on('click', '#delbtn', function(e) {
				if (document.updateMypage.file) {
					$('.profileImg').attr('src', '/upload/profile/profile_default.jpg');
				} else {
					$('#fileProf').attr('src', '/upload/profile/profile_default.jpg');
				}
				document.updateMypage.file.value='';
				html = '';
				html += '<input type="hidden" name="prof_origin_name" value="profile_default">';
				html += '<input type="hidden" name="prof_db_ext" value="jpg">';
				$('#hidden2').html(html);
				$('#uProf > tr:nth-child(1) > td:nth-child(2)').html('기본이미지');
			})
			$('body').on('change', '#file', function(e) {
				$('.profileImg').remove();
				var img = document.createElement("img");
				reader.readAsDataURL(e.target.files[0]);
				reader.onload = function (e) {
					img.setAttribute("src", e.target.result);
					img.className="profileImg fileImg";
					img.style.cursor="pointer";
					img.style.marginTop="0px";
					document.querySelector('#snip1141').appendChild(img);
				}
				var filePath=this.value;	//
				
				var fileOriginName=filePath.split('\\')[2];
				$('#uProf > tr:nth-child(1) > td:nth-child(2)').html(fileOriginName);	
				var fileName=fileOriginName.split('.');		//
				
				var fExt  = fileName[1];
				html = '';
				html += '<input type="hidden" name="prof_origin_name" value=' + fileOriginName + '>';
				html += '<input type="hidden" name="prof_db_ext" value=' + fExt + '>';
				$('#hidden2').html(html);
			});	
		});		//btn_grp 클릭
	});		// ready
</script>

<body>
	<%@ include file="/WEB-INF/include/top.jsp"%>
			
<!-- 	<div id="layer" style="display:none;"> -->
	
	<%@ include file="/WEB-INF/include/upgrade.jsp"%>
<!-- 	</div> -->
	<div class="relate wrap">

		<form id="frm" name="updateMypage" action="/Mypage/Profile/Update?mid=${ login.mid }" method="POST" enctype="multipart/form-data">
			<div class="wrap"><br /><br />
				<div id="title">
					마이 페이지
					<br /><br />
				</div>
				<div class="profile">
				<figure class="snip1141">
					<img class="profileImg cursor" src="/upload/profile/${getProf[1]}.${getProf[2]}" alt="프로필사진" onclick="pop(this.src)"/>
				</figure>
					<script>
						function pop(src) {
							window.open(src, "원본 보기", "width=300, height=400, location=0, titlebar=0, left=200, top=200");
						}
					</script>
				</div>
				<table id="uProf">
				
				</table> <br /><br />
			<div class="wrap2">
				<table id="info_m" class="info">
					<tr>
						<th>아이디</th>
						<td>
							${ getMemInfo[0].mid }
						</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>
							<div  id="name">${ getMemInfo[0].mem_name }</div>
						</td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td>
							<div id="birth">${birth[0]} 년 	${birth[1]} 월 ${birth[2]} 일</div>
						</td>
					</tr>
					<tr>
						<th>성별</th>
						<td>
							<div id="gen">
								<c:choose><c:when test="${ getMemInfo[0].mem_gen eq 'F' }"> 여자 </c:when> <c:otherwise> 남자 </c:otherwise> </c:choose>
							</div>
						</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><div id="email">${ getMemInfo[0].mem_mail }</div></td>
					</tr>
					<tr>
						<th>회원 분류</th>
						<td>
							<c:choose>
								<c:when test="${ getMemInfo[0].lvl eq 'P' }"> 가게 </c:when>
								<c:when test="${ getMemInfo[0].lvl eq 'A' }"> 아티스트 </c:when>
								<c:when test="${ getMemInfo[0].lvl eq 'U' }"> 일반회원</c:when>
								<c:otherwise> 관리자 </c:otherwise>
							</c:choose>
						</td>
					</tr>
				</table>
				<div id="moreInfo" class="moreInfo cursor atag">
					더보기: 상세정보
				</div>
				<c:choose>
				 <c:when test="${ getMemInfo[0].lvl eq 'A' }">
	             <table class="hide info" style="display:none">
					<tr>
						<th>팀명</th>
						<td><div class ="art_name" >${ getMemInfo[0].art_name }</div></td>
					</tr>
					<tr>
						<th>장르</th>
						<td><div class ="gen_val">${ getMemInfo[0].gen_val }</div></td>
					</tr>
					<tr>
						<th>팀 구성</th>
						<td><div class ="art_cnt">${ getMemInfo[0].art_cnt }</div></td>
					</tr>
					<tr>
						<th>팀 소개</th>
						<td><textarea class="intro" readonly="readonly" style="resize:none;" rows="10" cols="40" name="art_intro" >${ getMemInfo[0].art_intro }</textarea></td>
					</tr>
				 </table>
				 </c:when>
				<c:when test="${ getMemInfo[0].lvl eq 'P' }">
				 <table id="info_p" class="hide info" style="display:none">
					<tr>
						<th>상호명</th>
						<td><div class="str_name">${ getMemInfo[0].str_name }</div></td>
					</tr>
					<tr>
						<th>업종 구분</th>
						<td><div class="str_type">${ getMemInfo[0].str_type }</div></td>
					</tr>
					<tr>
						<th>가게주소</th>
						<td><div class="str_addr">${ getMemInfo[0].str_addr1 } ${ getMemInfo[0].str_addr2 } ${ getMemInfo[0].str_addr3 }</div></td>
					</tr>
					<tr>
						<th>사업자번호</th>
						<td><div class="str_bnum">${ getMemInfo[0].str_bnum }</div></td>
					</tr>
					<tr>
						<th>가게 소개글</th>
						<td><textarea class="intro" readonly="readonly" style="resize:none;" rows="10" cols="40" name="str_intro" >${ getMemInfo[0].str_intro }</textarea></td>
					</tr>
				 </table>
				</c:when> 
				<c:when test="${ getMemInfo[0].lvl eq 'U' }">
				 <div class="hide">
					<br /><br />
					<div id="font" class="font"><h1 class="font">'일반 회원'이십니다.</h1></div>
					<label for="#rq_seg">※아티스트 또는 공연 업체라면 등급 조정을 신청하세요※ </label>
					<br/><br/><br/><br/>
					<select name="rq_seg" id="rq_seg" required>
						<option value="none">--선택</option>
						<option value="P">가게</option>
						<option value="A">버스커</option>
					</select>
 					<a href="#layer" id="memUpgrade" class="atag cursor memUpgrade">신청하기</a>
 					<div id="m_msg"><br></div>
	 			</div>
				 </c:when>
				 <c:otherwise>
				 	<h1>관리자입니다.(관리자 마이페이지 수정하려면 user.jsp에서 "관리자입니다"를 검색 후 c:otherwise태그 안을 고쳐주시면 됩니다)</h1>
				 </c:otherwise>
				</c:choose>
				<div>
					<div id="closeInfo" class="moreInfo cursor atag">
							접기: 등급 별 상세정보
					</div>
				</div>
				<div id="btn_grp"><br /><br /><br /><br />
					<h4><a href="#" class="button" id="update_btn">수정하기</a></h4>
				</div>
				<div id="hidden"></div><div id="hidden2"></div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>