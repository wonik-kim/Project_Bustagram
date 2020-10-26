<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>       
<script src="/js/layer.js"></script>


	<div id="layer" class="layer-wrap">
	    <div class="layer-outer">
	        <div class="layer-inner">
	            <div class="layer-pop">
	            	<div class="layer-bar tbar"><h3>회원 등급 조정 신청</h3></div>
	                <div class="layer-box">
	                    <p class="text_notify"> 정보를 입력해주세요 </p><br />
	                    
	                    	<form action="/Mypage/MemUpgrade" method="POST" onsubmit="return chkUpgrade2()" id="frmUpgrade2" name="frmUpgrade2">
		                		<table id="hidet1" class="hidet" >
									<tr>
										<th>팀명</th>
										<td><div id="art_name" ><input type="text" name="art_name" value="" placeholder="활동명 기입" required/></div></td>
									</tr>
									<tr>
										<th>장르</th>
										<td><div id="gen_val">
													<select id="gen_id" name="gen_id" required>
														<c:forEach var="gen" items="${ gen_list }">
															<option value="${ gen.GEN_ID }">${ gen.GEN_VAL }</option>
														</c:forEach>
													</select>
											</div></td>
									</tr>
									<tr>
										<th>팀 구성</th>
										<td><div id="art_cnt"><input type="number" name="art_cnt" value="" placeholder="인원수(숫자만 입력)" required/></div></td>
									</tr>
									<tr>
										<th>팀 소개</th>
										<td><textarea id="art_intro" style="resize:none;" rows="10" cols="30" name="art_intro" placeholder="한글 66자, 영문or숫자 200자 미만" required></textarea></td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="check_section">
						                    	<input type="hidden" name="mid" value="${ login.mid }" />
						                        <input type="checkbox" id="chk2" name="chk2" class="chk_notify"><br />
						                        <label for="chk2" class="label_notify">위의 내용에는 거짓이 없으며, <br />추후 문제가 생길 시 영구제명 될 수 있음에 동의합니다<br />(확인)</label>
						                        <div class="btn_area">
						                        	<div id="submit_msg2" style="color:red"></div>
						                            <a href="#" class="btn" id="submit2">확인</a>
						                        </div>
					                    	</div>
										</td>
									</tr>
							 	</table>
						 	</form>
						 	
						 	<form action="/Mypage/MemUpgrade" method="POST" onsubmit="return chkUpgrade1()" name="frmUpgrade1">
						 		 <table id="hidet2"  class="hidet" >
									<tr>
										<th>상호명</th>
										<td><div id="str_name"> <input type="text" name="str_name" placeholder="가게 이름" value="" required/> </div></td>
									</tr>
									<tr>
										<th>업종 구분</th>
										<td><div id="str_type"> <input type="text" name="str_type" placeholder="예) 노래타운, 호프, 클럽 등.." value="" required/> </div></td>
									</tr>
									<tr>
										<th>가게주소</th>
										<td><div id="str_addr"> 
											<select id="addr1" name="str_addr1" required>
												<option value="none">--시,도--</option>
												<c:forEach var="addr1" items="${ addr1_list }" varStatus="vs">
													<option value="${addr1.region_id}"> ${addr1.region_val} </option> 
												</c:forEach>
												</select>
												<select id="addr2" name="str_addr2" required>	
													<option value="none">--구,군--</option>
												<c:forEach var="addr2" items="${ addr2_list }" varStatus="vs">
													<option value="${ addr2.region_id }">${ addr2.region_val }</option>
												</c:forEach>
											</select>
											<input type="text" name="str_addr3" id="addr3" value="" placeholder="상세 주소" required/> 
										</div></td>
									</tr>
									<tr>
										<th>사업자<br>번호</th>
										<td><div id="str_bnum"><input type="text" name="str_bnum" placeholder="세무서에 등록된 사업자 번호"  required/> </div></td>
									</tr>
									<tr>
										<th>가게 소개</th>
										<td><textarea id="str_intro" style="resize:none;" rows="10" cols="30" name="str_intro"  placeholder="한글 66자, 영문or숫자 200자 미만" required></textarea></td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="check_section">
						                    	<input type="hidden" name="mid" value="${ login.mid }" />
						                        <input type="checkbox" id="chk1" name="chk1" class="chk_notify"><br />
						                        <label for="chk1" class="label_notify">위의 내용에는 거짓이 없으며, <br />추후 문제가 생길 시 영구제명 될 수 있음에 동의합니다<br />(확인)</label>
						                        <div class="btn_area">	
						                        	<div id="submit_msg1" style="color:red"></div>
						                            <a href="#" class="btn" id="submit1">확인</a>
						                        </div>
					                    	</div>
										</td>
									</tr>
								 </table>
							</form>
	                </div>
	                <div class="layer-bar bbar" ><div id="close_area"><a href="#" id="close_upgrade_frm" >닫기</a></div></div>
	            </div>
	        </div>
	    </div>
	    <div class="dimmed"></div>
	</div>

