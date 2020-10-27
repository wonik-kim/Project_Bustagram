<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous">
</script>
<body>
<c:forEach var="list" items="${fList}">
	<div class="user-post">
		<div class="friend-info">
			<figure>
				<img src="img/resources/friend-avatar9.jpg" alt="">
			</figure>
			<div class="friend-name">
				<ins><c:out value="${ list.mem_name }"/></ins>
				<span><c:out value="${ list.wdate }"/></span>
			</div>
			<div class="post-meta">
				<div class="pds">첨부된 사진, 동영상, 음악 출력. 없으면 div hidden</div>
				<img src="img/resources/user-post.jpg" alt="">
				<div class="description">
					<p>
						<c:out value="${ list.cont }"/>
					</p>
				</div>
				<div class="we-video-info">
					<ul>
						<li><span class="like" data-toggle="tooltip" title="like">
								<i class="ti-heart"></i> <ins>{n}</ins>
						</span></li>
						<li><span class="comment" data-toggle="tooltip"
							title="Comments"> <i class="fa fa-comments-o"></i> <ins>{n}</ins>
						</span></li>
						<li><span class="to_music_fav" data-toggle="tooltip"
							title="음악 즐겨찾기"> <img style="width: 16px; height: 16px;"
								src="css/emoji/cd.png" />
						</span></li>
					</ul>
				</div>
			</div>
		</div>
		<hr />
	</div>
</c:forEach>
</body>
</html>