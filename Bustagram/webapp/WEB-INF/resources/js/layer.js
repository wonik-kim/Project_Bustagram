//비밀번호 변경 폼 : 폼 띄우기
	$('body').on('click', '#btnPwd', function(e) {
		window.open("/Mypage/PwdForm", "비밀번호 변경 폼", "width=400, height=500, location=0, titlebar=0, left=400, top=200");
	});

// 비밀번호 폼1 : null 체크
	function chkPwd() {
		if ($('#old_pwd').val()=="" || $('#old_pwd').val()==null) {
			html='비밀번호를 입력하세요.';
			$('#msg').html(html);
			return false;
		} else {
			return true;
		}
	}
// 비밀번호 폼2 : 비밀번호 확인 일치여부 체크
	function pwd() {
		html = '';
		if ($('#new_pwd').val() != $('#new_pwd_chk').val()) {
			html += '비밀번호가 일치하지 않습니다.';
			$('#msg').html(html);
			return false;
		} else if ($(this).val().length < 8 || $(this).val().length > 20){
			return false;
		} else if ($('old_pwd').val() == $('.pwd').val()) {
			return false;
		} else {
			return true;
		}
	}

// 비밀번호 폼 : 유효성 체크
	$(function() {
		$('.pwd').blur(function() {
			if ($(this).val().length < 8 || $(this).val().length > 20) {
				var html = '비밀번호는 8자~20자 사이의 영문/숫자로 입력해주세요';
				$('#msg').html(html);
				$(this).val('');
				if ($('#new_pwd').val()=='') {
					$('#new_pwd').focus();
				} else {
					$(this).focus();
				}
			} else if ($(this).val() == $('#old_pwd').val()) {
				var html = '다른 비밀번호를 입력해주세요(이전과 동일)';
				$('#msg').html(html);
				$(this).val('');
				if ($('#new_pwd').val()=='') {
					$('#new_pwd').focus();
				} else {
					$(this).focus();
				}
			} else {
				$('#msg').html('');
			}
		})
	})	

//  비밀번호 폼 : 닫기 버튼
	$('body').on('click', 'btn-layerClose', function() {
		self.close();
	})

// 비밀번호 폼 : 이벤트	
	$(function() {
	     $('.modal-wrapper').toggleClass('open');
	     $('.page-wrapper').toggleClass('blur-it');

	})

	

//	------------------------------------------------------------------

//  등급 변경 폼 : 폼 띄우기
	$('body').on('click', '.memUpgrade', function() {
		if ($('#rq_seg option:selected').val() !='none') {
			$('.hidet').hide();
			if ($('#rq_seg option:selected').val() =='P') {
				$('#hidet2').show();
			} else if ($('#rq_seg option:selected').val() =='A'){
				$('#hidet1').show();	
			}
		    var target = $(this).attr('href');
		    $(target).fadeIn();
		} else {
			html='회원 등급을 선택해주세요!';
			$('#m_msg').html(html);
		}
	 });

	
	
// 등급 변경 폼 : 가게/아티스트 선택시 경고 메세제 없애기
	$('body').on('change', '#rq_seg', function() {
		$('#m_msg').html('<br />');
	})

// 등급 변경 폼 : 닫기
	 $('body').on('click', '#close_upgrade_frm', function() {
	    $('.layer-wrap').fadeOut();
	 });	
 
//  등급 변경 폼 : 가게 주소 데이터 불러오기(ajax)
 $('body').on('change', '#addr1', function() {
		var html='';
		if ($(this).val() == 'none') {
			html += '<option value="none">--구,군--</option>';
			$('#addr2').html(html);
		} else {
			var data = { parent_id : $(this).val()};
			$.ajax({
				url : "/Mypage/MemInfo/Addr",
				type : "POST", 
				data : data,
				success : function(data){
					html += '<option value="none">--구,군--</option>';
					for (var i = 0; i < data.length; i++) {
						html += '<option value="' + data[i].region_id + '">' + data[i].region_val + '</option>';
					}
					$('#addr2').html(html);
					$('#addr2 option[value="none"]').prop("selected", "selected");
				},
				error : function(e) {
					alert("에러 발생" + e);
				}
			})
		}
	})
	
	
//  등급 변경 폼 : artist, store 멤버 업데이트 (ajax 통신)
	$('body').on('click', '#submit1', function() {
		     if (
	    		 $.trim($('input[name = str_name]').val())  == '' 
	    		 || $.trim($('input[name = str_type]').val())   == '' 	
	    		 || $.trim($('input[name = str_addr3]').val())   == '' 
				 || $.trim($('input[name = str_bnum]').val())   == ''  		
				 || $('#addr1 option:selected').val() == 'none'
				 || $('#addr2 option:selected').val() == 'none' 	
				 || $.trim($('textarea#str_intro').val()) == '' 
				) {
		    	 html = '공백 없이 모두 입력해주세요';
		    	 $('#submit_msg1').html(html);
		     } else {
		    	 $('#submit_msg1').html('<br />');
		    	
				if ($('input:checkbox[name=chk1]').is(":checked") == true) {
					$('#submit_msg1').html(' ');
					$.ajax({
						url : '/Mypage/MemUpgrade',
						type : 'post',
						data : $("form[name=frmUpgrade1]").serialize(),
						success : function(data) {
							if (data == 'T') {
								html = '<div class="layer-bar tbar"><h3>완료!</h3></div>';
								html += '<div class="layer-box">';
								html += '<p id="changeT" class="text_notify"> 요청이 성공적으로 완료되었습니다. <br /> 관리자의 수락이 완료되면 회원 등급이 변경됩니다. <br /> <br /> <br /> (3초 후 자동으로 창 닫김)</p>';
								html += '</div>';
								html += '<div class="layer-bar bbar"><div id="close_area"><a href="#" id="close_upgrade_frm" >닫기</a></div></div>';
								$('.layer-pop').html(html);
								setTimeout(function(){
									$('#close_upgrade_frm').trigger('click');
									$('#changeT').html('요청이 성공적으로 완료되었습니다. <br /> 관리자의 수락이 완료되면 회원 등급이 변경됩니다. <br />');
								}, 3000);
							} else if (data =='F') {
								html = '<div class="layer-bar tbar"><h3>실패</h3></div>';
								html += '<div class="layer-box">';
								html += '<p id="changeT"  class="text_notify"> 이미 승인 대기 중인 신청 내역이 있습니다. <br />(관리자에게 문의해주세요) <br /> <br /> <br /> (3초 후 자동으로 창 닫김)</p>';
								html += '</div>';
								html += '<div class="layer-bar bbar"><div id="close_area"><a href="#" id="close_upgrade_frm" >닫기</a></div></div>';
								$('.layer-pop').html(html);
								setTimeout(function(){
									$('#close_upgrade_frm').trigger('click');
									$('#changeT').html('이미 승인 대기 중인 신청 내역이 있습니다. <br />(관리자에게 문의해주세요) <br />');
								}, 3000);
							}
						},
						error : function(xhr, status, e) {
							alert("에러 발생: " + e + "--" + xhr + "--" + status);
						}
					})
				} else {
					html = '위 약관에 동의하시면 체크박스를 선택하십시오';
					$('#submit_msg1').html(html);
				}
		     }
	})
	$('body').on('click', '#submit2', function() {
		if (
				 $.trim($('textarea#art_intro').val()) == '' ||	 
				 $.trim($('input[name = art_name]').val()) == '' || 	
	    		 $.trim($('input[name = art_cnt]').val())   == ''
		){
			 html = '공백 없이 모두 입력해주세요';
			 $('#submit_msg2').html(html);
	     } else {
	    	 	$('#submit_msg2').html('<br />');
				if ($('input:checkbox[name=chk2]').is(":checked") == true) {
					$.ajax({
						url : '/Mypage/MemUpgrade',
						type : 'post',
						data : $("form[id=frmUpgrade2]").serialize(),
						success : function(data) {
							if (data == 'T') {
								html = '<div class="layer-bar tbar"><h3>완료!<h3></div>';
								html += '<div class="layer-box">';
								html += '<p id="changeT"  class="text_notify"> 요청이 성공적으로 완료되었습니다. <br /> 관리자의 수락이 완료되면 회원 등급이 변경됩니다. <br /> <br /> <br /> (3초 후 자동으로 창 닫김)</p>';
								html += '</div>';
								html += '<div class="layer-bar bbar"><div id="close_area"><a href="#" id="close_upgrade_frm" >닫기</a></div></div>';
								$('.layer-pop').html(html);
								setTimeout(function(){
									$('#close_upgrade_frm').trigger('click');
									$('#changeT').html('요청이 성공적으로 완료되었습니다. <br /> 관리자의 수락이 완료되면 회원 등급이 변경됩니다. <br />');
								}, 3000);
							} else if (data =='F') {
								html = '<div class="layer-bar tbar"><h3>실패</h3></div>';
								html += '<div class="layer-box">';
								html += '<p  id="changeT" class="text_notify"> 이미 승인 대기 중인 신청 내역이 있습니다. <br />(관리자에게 문의해주세요) <br /> <br /> <br /> (3초 후 자동으로 창 닫김)</p>';
								html += '</div>';
								html += '<div class="layer-bar bbar"><div id="close_area"><a href="#" id="close_upgrade_frm" >닫기</a></div></div>';
								$('.layer-pop').html(html);
								setTimeout(function(){
									$('#close_upgrade_frm').trigger('click');
									$('#changeT').html('이미 승인 대기 중인 신청 내역이 있습니다. <br />(관리자에게 문의해주세요) <br />');
								}, 3000);
							}
						},
						error : function(xhr, status, e) {
							alert("에러 발생: " + e + "--" + xhr + "--" + status);
						}
					})
				} else {
					html = '위 약관에 동의하시면 체크박스를 선택하십시오';
					$('#submit_msg2').html(html);
				}
	     }
	})