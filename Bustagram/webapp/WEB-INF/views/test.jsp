<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>BUSTAGRAM</title>
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
<!-- <link rel="icon" href="images/fav.png" type="image/png" sizes="16x16"> -->

<link rel="stylesheet" href="css/main.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/color.css">
<link rel="stylesheet" href="css/responsive.css">
</head>
<body>
	<!-- 배경 색상 -->
	<div class="gap gray-bg">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="row" id="page-contents">
						<!-- 좌측 위젯 전체 묶음 -->
						<div class="col-lg-3">
							<aside class="sidebar static">
								<!-- 왼쪽 위젯 바 전체 -->
								<!-- 프로필 및 팔로우/팔로워 정보 -->
								<div class="widget flexbox">
									<div class="your-page">
										<div class="widget-title">{버스커 이름}</div>
										<div class="profile">
											<img class="profile_pic" alt=""
												src="img/resources/friend-avatar9.jpg" />
										</div>
										<div class="page-likes">
											<ul class="nav nav-tabs likes-btn">
												<li class="nav-item"><a style="font-size: 14px;"
													class="active show" href="#link1" data-toggle="tab">팔로우</a>
												</li>
												<li class="nav-item"><a style="font-size: 14px;"
													class="" href="#link2" data-toggle="tab">팔로워</a></li>
											</ul>
											<!-- Tab panes 버튼 누르면 바뀌는 내용 -->
											<div class="tab-content">
												<!-- id에 따라 보이는 내용 다름 -->
												<div class="tab-pane active fade show " id="link1">
													<!-- 해당 버스커가 다른 사람을 팔로우 한 수 -->
													<span><i class="ti-heart"></i>{n}명을 팔로우 하고있습니다.</span> <a
														href="#" title="weekly-likes">{버스커명}의 팔로우 목록 보기</a>
													<div class="users-thumb-list">
														<a href="#" title="Anderw" data-toggle="tooltip"> <img
															src="img/resources/userlist-1.jpg" alt="">
														</a>
													</div>
													<span></span>
												</div>
												<div class="tab-pane fade" id="link2">
													<span><i class="ti-eye"></i>{n}명이 팔로우 했습니다.</span> <a
														href="#" title="weekly-likes">{버스커명}의 팔로워 목록보기</a>
													<div class="users-thumb-list">
														<a href="#" title="Anderw" data-toggle="tooltip"> <img
															src="img/resources/userlist-1.jpg" alt="">
														</a>
													</div>
													<a href="#" title="weekly-likes">{버스커명}을 팔로우 하실래요?</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 프로필 및 팔로우/팔로워 정보 -->
								<!-- 뮤직 스테이션 / 후원 관련 정보 -->
								<div class="widget">
									<h4 class="widget-title">뮤직스테이션 / 후원</h4>
									<ul class="activitiez">
										<li>
											<div class="activity-meta">
												<span>{버스커명}의 음악이 듣고 싶은가요?</span>
												<h6>
													여기서 들으세요!&nbsp;<a href="#music-station">뮤직스테이션</a> 바로가기
												</h6>
											</div>
										</li>
										<li>
											<div class="activity-meta">
												<span>이미 여러 버스커들의 음악을 즐겨찾기 하셨나요?</span>
												<h6>
													<a href="#music-station-fav">뮤직스테이션 즐겨찾기 리스트는 여기로!</a>
												</h6>
											</div>
										</li>
										<li>
											<div class="activity-meta">
												<span>{버스커명}에게 후원을 하고싶나요?</span>
												<h6>
													<a href="#후원">후원은 여기서!</a>
												</h6>
											</div>
										</li>
									</ul>
								</div>
								<!-- 뮤직 스테이션 / 후원 관련 정보 -->
								<!-- 장르가 비슷한 버스커 추천 -->
								<div class="widget stick-widget">
									<h4 class="widget-title">유사한 장르의 버스커 : JSTL로 랜덤하게 5~6명 출력</h4>
									<ul class="followers">
										<li>
											<figure>
												<img src="img/resources/friend-avatar2.jpg" alt="">
											</figure>
											<div class="friend-meta">
												<h4>
													<a href="#해당버스커피드페이지로" title="">Kelly Bill</a>
												</h4>
											</div>
										</li>
									</ul>
								</div>
								<!-- end 장르가 비슷한 버스커 추천 -->
							</aside>
						</div>
						<!-- 끝 좌측 위젯 전체 묶음 -->

						<!-- 중간 위젯 전체 묶음 -->
						<div class="col-lg-6">
							<div class="central-meta">
								<!-- 피드 작성 위젯 -->
								<!-- 세션에서 받아온 현재 유저id랑 sns페이지가 같아야만 화면 출력 -->
								<div class="new-postbox">
									<div class="profile">
										<img class="profile_pic"
											src="img/resources/friend-avatar9.jpg" alt />
										</figure>
										<div class="newpst-input">
											<form method="POST" action="#">
												<textarea rows="2" placeholder="피드를 작성하세요."></textarea>
												<div class="attachments">
													<ul>
														<li><i class="fa fa-music"></i> <label
															class="fileContainer"> <input type="file">
														</label></li>
														<li><i class="fa fa-image"></i> <label
															class="fileContainer"> <input type="file">
														</label></li>
														<li><i class="fa fa-video-camera"></i> <label
															class="fileContainer"> <input type="file">
														</label></li>
														<li><i class="fa fa-camera"></i> <label
															class="fileContainer"> <input type="file">
														</label></li>
														<li>
															<button type="submit">게시하기</button>
														</li>
													</ul>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
							<!-- 중간 위젯 전체 묶음 끝 -->
							<!-- 작성된 포스트 출력 (여러개로 가정)-->
							<!-- add post new box -->
							<div class="loadMore">
								<div class="central-meta item">
									<div class="user-post">
										<div class="friend-info">
											<figure>
												<img src="img/resources/friend-avatar9.jpg" alt="">
											</figure>
											<div class="friend-name">
												<ins>{버스커 이름}</ins>
												<span>작성시간: {DB 작성된 시간}</span>
											</div>
											<div class="post-meta">
												<!-- 여기에 첨부된 사진, 동영상, 음악이 출력 -->
												<div class="pds">첨부된 사진, 동영상, 음악 출력. 없으면 div hidden</div>
												<!-- 기존 코드 <img src="img/resources/user-post.jpg" alt=""> -->
												<!-- 글 작성 내용 -->
												<div class="description">
													<p>
														World's most beautiful car in Curabitur <a href="#"
															title="">#test drive booking !</a> the most beatuiful car
														available in america and the saudia arabia, you can book
														your test drive by our official website
													</p>
												</div>
												<!-- 좋아요, 댓글, 음악 즐겨찾기 -->
												<div class="we-video-info">
													<ul>
														<li><span class="like" data-toggle="tooltip"
															title="like"> <i class="ti-heart"></i> <ins>{n}</ins>
																<!-- 이 피드를 좋아요 한 개수를 출력 -->
														</span></li>
														<li><span class="comment" data-toggle="tooltip"
															title="Comments"> <i class="fa fa-comments-o"></i>
																<ins>{n}</ins> <!-- 이 피드에 달린 댓글 전체 Select count하기 -->
														</span></li>
														<!-- 음악이라면 즐겨찾기 버튼 보이게하기 -->
														<li><span class="to_music_fav" data-toggle="tooltip"
															title="음악 즐겨찾기"> <img
																style="width: 16px; height: 16px;"
																src="css/emoji/cd.png" />
														</span></li>
													</ul>
												</div>
											</div>
										</div>
										<hr />
										<div class="coment-area">
											<ul class="we-comet">
												<li>
													<div class="comet-avatar">
														<img src="img/resources/comet-1.jpg" alt="">
													</div>
													<div class="we-comment">
														<div class="coment-head">
															<h5>
																<a href="time-line.html" title="">Jason borne</a>
															</h5>
															<span>1 year ago</span> <a class="we-reply" href="#"
																title="Reply"><i class="fa fa-reply"></i></a>
														</div>
														<p>we are working for the dance and sing songs. this
															car is very awesome for the youngster. please vote this
															car and like our post</p>
													</div>
													<ul>
														<li>
															<div class="comet-avatar">
																<img src="img/resources/comet-2.jpg" alt="">
															</div>
															<div class="we-comment">
																<div class="coment-head">
																	<h5>
																		<a href="time-line.html" title="">alexendra dadrio</a>
																	</h5>
																	<span>1 month ago</span> <a class="we-reply" href="#"
																		title="Reply"><i class="fa fa-reply"></i></a>
																</div>
																<p>
																	yes, really very awesome car i see the features of this
																	car in the official website of <a href="#" title="">#Mercedes-Benz</a>
																	and really impressed :-)
																</p>
															</div>
														</li>
														<li>
															<div class="comet-avatar">
																<img src="img/resources/comet-3.jpg" alt="">
															</div>
															<div class="we-comment">
																<div class="coment-head">
																	<h5>
																		<a href="time-line.html" title="">Olivia</a>
																	</h5>
																	<span>16 days ago</span> <a class="we-reply" href="#"
																		title="Reply"><i class="fa fa-reply"></i></a>
																</div>
																<p>i like lexus cars, lexus cars are most beautiful
																	with the awesome features, but this car is really
																	outstanding than lexus</p>
															</div>
														</li>
													</ul>
												</li>
												<li>
													<div class="comet-avatar">
														<img src="img/resources/comet-1.jpg" alt="">
													</div>
													<div class="we-comment">
														<div class="coment-head">
															<h5>
																<a href="time-line.html" title="">Donald Trump</a>
															</h5>
															<span>1 week ago</span> <a class="we-reply" href="#"
																title="Reply"><i class="fa fa-reply"></i></a>
														</div>
														<p>
															we are working for the dance and sing songs. this video
															is very awesome for the youngster. please vote this video
															and like our channel <i class="em em-smiley"></i>
														</p>
													</div>
												</li>
												<li><a href="#" title="" class="showmore underline">more
														comments</a></li>
												<li class="post-comment">
													<div class="comet-avatar">
														<img src="img/resources/comet-1.jpg" alt="">
													</div> <!-- 댓글 작성하고 엔터치면 내용이 적용되는데 DB랑 어떻게 연동하지 -->
													<div class="post-comt-box">
														<form method="post">
															<textarea placeholder="Post your comment"></textarea>
															<button type="submit"></button>
														</form>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- add post new box : end-->
						</div>
						<!-- 우측 사이드 바 -->
						<div class="col-lg-3">
							<aside class="sidebar static">
								<div class="widget friend-list stick-widget">
									<h4 class="widget-title">버스커 검색</h4>
									<!-- ajax로 검색기능구현되어야 함-->
									<div class="b_search">
										<form class="b_search_form" action="#">
											<input class="b_search_input" type="text"
												placeholder="입력하세요." />
										</form>
									</div>
									<!-- 결과 나올 부분 -->
									<ul id="people-list"
										class="friendz-list ps-container ps-theme-default ps-active-y">
										<!-- jstl로 처리 -->
										<li style="display: inline-block;">
											<figure>
												<img src="img/resources/friend-avatar.jpg" alt="">
												<span class="status f-online"></span>
											</figure>
											<div class="friendz-meta">
												<a href="time-line.html">bucky barnes</a> <i><a
													href="https://wpkixx.com/cdn-cgi/l/email-protection"
													class="__cf_email__"
													data-cfemail="f2859b9c869780819d9e969780b2959f939b9edc919d9f">[email&nbsp;protected]</a></i>
											</div>
										</li>
										<!-- end jstl로 처리  -->
									</ul>
								</div>
							</aside>
						</div>
					</div>
				</div>
			</div>
</body>

<script src="js/main.min.js"></script>
<script src="js/script.js"></script>

</html>