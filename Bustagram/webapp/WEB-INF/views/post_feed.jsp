<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
	crossorigin="anonymous">
</script>

<script>
$(function() {
	var today = new Date();
	
    $('.newpst-input').on('submit', '#inform', function(e) {
    	
    	// db insert
    	$.ajax({
    		url  : '/post_feed_write',
    		type : 'post',
    		data : {
		    			mid : $('[name=mid]').val(),
	    			    mem_name : $('[name=mem_name]').val(),
	    			   	cont : $('[name=cont]').val()
    			   },
    		success : function(data){
    			alert('saved');
    			var html = '<div class="user-post">';
					html += '<div class="friend-info">';
					html += '<figure>';
					html += '<img src="img/resources/friend-avatar9.jpg" alt="">';
					html += '</figure>';
					html += '<div class="friend-name">';
					html += '<ins>'+ $('[name=mem_name]').val() +'</ins>';
					html += '<span>작성일: '+ today.toLocaleDateString() +'</span>';
					html += '</div>';
					html += '<div class="post-meta">';
					html += $('[name=cont]').val();
					html += '</div>';
					html += '<div class="we-video-info">';
					html += '<ul>';
					html += '<li><span class="like" data-toggle="tooltip"';
					html += 'title="like"> <i class="ti-heart"></i> <ins>{n}</ins>';
					html += '</span></li>';
					html += '<li><span class="comment" data-toggle="tooltip"';
					html += 'title="Comments"> <i class="fa fa-comments-o"></i>';
					html += '</span></li>';
					html += '<li><span class="to_music_fav"\'data-toggle="tooltip" title="음악 즐겨찾기"> <img style="width: 16px; height: 16px;" src="css/emoji/cd.png" /></span></li>';
					html += '</ul>';
					html += '</div>';
					html += '</div>';
					html += '</div>';
					html += '<hr />';
					html += '</div>';
					html += '</div>';
					html += '</div>';
		    	$('.central-meta.item').prepend(html);
    		},
    		error   : function(xhr){
    			alert('내용을 작성하세요')
    		}
    	})
    	e.preventDefault();
    	e.stopPropagation();
    })
   
   
})

</script>
</head>
<body>
	<div class="newpst-input">
		<form method="POST" action="/post_feed_write" id="inform">
			<textarea name="cont" rows="2" placeholder="피드를 작성하세요."></textarea>
			<div class="attachments">
				<ul>
					<li><input type="submit" value="게시하기" /></li>
				</ul>
			</div>
			<!-- 로그인 됐다고 가정한 히든 태그 -->
			<input type="hidden" name="mid" value="test" /> <input type="hidden"
				name="mem_name" value="test" />
		</form>
	</div>
	</div>
	</div>
	</div>
	<!-- 작성된 포스트 출력 (여러개로 가정)-->
	<!-- add post new box -->
	<div class="loadMore">
		<div class="central-meta item">
			<c:forEach var="list" items="${fList}">
				<div class="user-post">
					<div class="friend-info">
						<figure>
							<img src="img/resources/friend-avatar9.jpg" alt="">
						</figure>
						<div class="friend-name">
							<ins>
								<c:out value="${ list.mem_name }" />
							</ins>
							<span>작성일: <c:out value="${ list.wdate }" /></span>
						</div>
						<div class="post-meta">
							<!-- 여기에 첨부된 사진, 동영상, 음악이 출력
														<div class="pds">첨부된 사진, 동영상, 음악 출력. 없으면 div hidden</div> -->
							<!-- 기존 코드 <img src="img/resources/user-post.jpg" alt=""> -->
							<c:out value="${ list.cont }" />
							<!-- 좋아요, 댓글, 음악 즐겨찾기 -->
							<div class="we-video-info">
								<ul>
									<li><span class="like" data-toggle="tooltip" title="like">
											<i class="ti-heart"></i> <ins><c:out value="${ list.like }" /></ins> <!-- 이 피드를 좋아요 한 개수를 출력 -->
									</span></li>
									<li><span class="comment" data-toggle="tooltip"
										title="Comments"> <i class="fa fa-comments-o"></i> <ins>
												<!-- {n} -->
											</ins> <!-- 이 피드에 달린 댓글 전체 Select count하기 -->
									</span></li>
									<!-- 음악이라면 즐겨찾기 버튼 보이게하기 -->
									<li><span class="to_music_fav" data-toggle="tooltip"
										title="음악 즐겨찾기"> <img
											style="width: 16px; height: 16px;" src="css/emoji/cd.png" />
									</span></li>
								</ul>
							</div>
						</div>
					</div>
					<hr />
			</c:forEach>
			<!-- <div class="coment-area">
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
																				<a href="time-line.html" title="">alexendra
																					dadrio</a>
																			</h5>
																			<span>1 month ago</span> <a class="we-reply" href="#"
																				title="Reply"><i class="fa fa-reply"></i></a>
																		</div>
																		<p>
																			yes, really very awesome car i see the features of
																			this car in the official website of <a href="#"
																				title="">#Mercedes-Benz</a> and really impressed :-)
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
																		<p>i like lexus cars, lexus cars are most
																			beautiful with the awesome features, but this car is
																			really outstanding than lexus</p>
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
																	is very awesome for the youngster. please vote this
																	video and like our channel <i class="em em-smiley"></i>
																</p>
															</div>
														</li>
														<li><a href="#" title="" class="showmore underline">more
																comments</a></li>
														<li class="post-comment">
															<div class="comet-avatar">
																<img src="img/resources/comet-1.jpg" alt="">
															</div> 댓글 작성하고 엔터치면 내용이 적용되는데 DB랑 어떻게 연동하지
															<div class="post-comt-box">
																<form method="post">
																	<textarea placeholder="Post your comment"></textarea>
																	<button type="submit"></button>
																</form>
															</div>
														</li>
													</ul>
												</div> -->
		</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
</body>
</html>