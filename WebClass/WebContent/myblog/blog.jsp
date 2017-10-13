<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>유정이블로그</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">

<script>
	function meny_over(e) {
		e.setAttribute("class", "nav-item active"); //<li class="nav-item active>"
	}
	function meny_out(e) {
		e.setAttribute("class", "nav-item"); //<li class="nav-item">
	}
</script>
<style>
div.container {
	padding-top: 30px;
}
</style>

<link href="../css/blog.css" rel="stylesheet">
<link href="../css/album.css" rel="stylesheet">

</head>
<body>

	<!-- 메뉴바  -->
	<nav class="navbar navbar-expand-lg navbar-light"
		style="background-color: pink;">
		<a class="navbar-brand" href="#">MyBlog</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="blog.html">Home<span class="sr-only">(current)</span></a></li>
				<li class="nav-item" onmouseover="menu_over(this);"
					onmouseout="menu_out(this);"><a class="nav-link"
					href="favoriteFood.html">Favorite Food<span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item" onmouseover="menu_over(this);"
					onmouseout="menu_out(this);"><a class="nav-link"
					href="favoriteSinger.html">Favorite Singer <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item" onmouseover="menu_over(this);"
					onmouseout="menu_out(this);"><a class="nav-link"
					href="favoriteTravelDestination.html">Favorite Travel
						Destination <span class="sr-only">(current)</span>
				</a></li>
			</ul>
			<ul class="navbar-nav my-2 my-lg-0" id="navbarRight">
				<%
					if ("true".equals(request.getSession().getAttribute("logged_in"))) {
				%>
				<li class="nav-item"><a class="nav-link"
					href="/WebClass/bloglogout"> <%=request.getSession().getAttribute("name") %>님
				</a></li>
				<%
					} else {
				%>
				<form class="form-inline my-2 my-lg-0" id="loginForm">
				<input class="form-control mr-sm-2" type="text" size="15"
					placeholder="ID" aria-label="ID" id="id" required> <input
					class="form-control mr-sm-2" type="password" size="15"
					placeholder="PWD" aria-label="PWD" id="pwd" required>
				<button class="btn btn-outline-secondary my-2 my-sm-0" type="submit">Login</button>
			</form>

			<form class="form-inline my-2 my-lg-0" id="joinForm">
				<a href="join.html"><button
						class="btn btn-outline-secondary my-2 my-sm-0" type="button">Join</button></a>
			</form>
				<% } %>
			</ul>

		</div>
	</nav>

	<div class="container">

		<div class="blog-header">
			<div class="container">
				<h1 class="blog-title">Welcome to Yu-Jeong's Blog</h1>
				<p class="lead blog-description">유정이의 블로그에 오신걸 환영합니다!</p>
			</div>
		</div>

		<div class="container">

			<div class="row">

				<div class="col-sm-8 blog-main">

					<div class="blog-post">
						<h2 class="blog-post-title">Sample blog post</h2>
						<p class="blog-post-meta">
							January 1, 2014 by <a href="#">Mark</a>
						</p>

						<p>This blog post shows a few different types of content
							that's supported and styled with Bootstrap. Basic typography,
							images, and code are all supported.</p>
						<hr>
						<p>
							Cum sociis natoque penatibus et magnis <a href="#">dis
								parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam.
							Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed
							posuere consectetur est at lobortis. Cras mattis consectetur
							purus sit amet fermentum.
						</p>
						<blockquote>
							<p>
								Curabitur blandit tempus porttitor. <strong>Nullam quis
									risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id
								nibh ultricies vehicula ut id elit.
							</p>
						</blockquote>
						<p>
							Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras
							mattis consectetur purus sit amet fermentum. Aenean lacinia
							bibendum nulla sed consectetur.
						</p>
						<h2>Heading</h2>
						<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus
							dolor auctor. Duis mollis, est non commodo luctus, nisi erat
							porttitor ligula, eget lacinia odio sem nec elit. Morbi leo
							risus, porta ac consectetur ac, vestibulum at eros.</p>
						<h3>Sub-heading</h3>
						<p>Cum sociis natoque penatibus et magnis dis parturient
							montes, nascetur ridiculus mus.</p>
						<pre>
							<code>Example code block</code>
						</pre>
						<p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta
							sem malesuada magna mollis euismod. Fusce dapibus, tellus ac
							cursus commodo, tortor mauris condimentum nibh, ut fermentum
							massa.</p>
						<h3>Sub-heading</h3>
						<p>Cum sociis natoque penatibus et magnis dis parturient
							montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed
							consectetur. Etiam porta sem malesuada magna mollis euismod.
							Fusce dapibus, tellus ac cursus commodo, tortor mauris
							condimentum nibh, ut fermentum massa justo sit amet risus.</p>
						<ul>
							<li>Praesent commodo cursus magna, vel scelerisque nisl
								consectetur et.</li>
							<li>Donec id elit non mi porta gravida at eget metus.</li>
							<li>Nulla vitae elit libero, a pharetra augue.</li>
						</ul>
						<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla
							vitae elit libero, a pharetra augue.</p>
						<ol>
							<li>Vestibulum id ligula porta felis euismod semper.</li>
							<li>Cum sociis natoque penatibus et magnis dis parturient
								montes, nascetur ridiculus mus.</li>
							<li>Maecenas sed diam eget risus varius blandit sit amet non
								magna.</li>
						</ol>
						<p>Cras mattis consectetur purus sit amet fermentum. Sed
							posuere consectetur est at lobortis.</p>
					</div>
					<!-- /.blog-post -->

					<div class="blog-post">
						<h2 class="blog-post-title">Another blog post</h2>
						<p class="blog-post-meta">
							December 23, 2013 by <a href="#">Jacob</a>
						</p>

						<p>
							Cum sociis natoque penatibus et magnis <a href="#">dis
								parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam.
							Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed
							posuere consectetur est at lobortis. Cras mattis consectetur
							purus sit amet fermentum.
						</p>
						<blockquote>
							<p>
								Curabitur blandit tempus porttitor. <strong>Nullam quis
									risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id
								nibh ultricies vehicula ut id elit.
							</p>
						</blockquote>
						<p>
							Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras
							mattis consectetur purus sit amet fermentum. Aenean lacinia
							bibendum nulla sed consectetur.
						</p>
						<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus
							dolor auctor. Duis mollis, est non commodo luctus, nisi erat
							porttitor ligula, eget lacinia odio sem nec elit. Morbi leo
							risus, porta ac consectetur ac, vestibulum at eros.</p>
					</div>
					<!-- /.blog-post -->

					<div class="blog-post">
						<h2 class="blog-post-title">New feature</h2>
						<p class="blog-post-meta">
							December 14, 2013 by <a href="#">Chris</a>
						</p>

						<p>Cum sociis natoque penatibus et magnis dis parturient
							montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed
							consectetur. Etiam porta sem malesuada magna mollis euismod.
							Fusce dapibus, tellus ac cursus commodo, tortor mauris
							condimentum nibh, ut fermentum massa justo sit amet risus.</p>
						<ul>
							<li>Praesent commodo cursus magna, vel scelerisque nisl
								consectetur et.</li>
							<li>Donec id elit non mi porta gravida at eget metus.</li>
							<li>Nulla vitae elit libero, a pharetra augue.</li>
						</ul>
						<p>
							Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras
							mattis consectetur purus sit amet fermentum. Aenean lacinia
							bibendum nulla sed consectetur.
						</p>
						<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla
							vitae elit libero, a pharetra augue.</p>
					</div>
					<!-- /.blog-post -->


				</div>
				<!-- /.blog-main -->

				<div class="col-sm-3 offset-sm-1 blog-sidebar">
					<div class="sidebar-module sidebar-module-inset">
						<h4>
							<b>할 일</b>
						</h4>
						<p>
							미적분2 PRM 풀기<br>미2 자이스토리 풀기<br>영어 수능특강 풀기<br>영어단어
							외우기<br>국어 모의고사 풀기<br>확통 개념원리 풀기
						</p>
					</div>
					<div class="sidebar-module">
						<h4>
							<b>학사일정</b>
						</h4>
						<ol class="list-unstyled">
							<li>9/22 금요귀가</li>
							<li>9/29 금요귀가</li>
							<li>9/30~10/9 추석연휴</li>
							<li>10/12 내생일</li>
							<li>10/18~10/20 중간고사</li>
							<li>11/10 금요귀가</li>
							<li>11/16 대수능</li>
							<li>11/22 모의고사</li>
							<li>11/24 금요귀가</li>
							<li>12/12~12/15 기말고사</li>
							<li>12/25 크리스마스</li>
							<li>12/28 축제</li>
							<li>12/29 겨울방학</li>
						</ol>
					</div>
					<div class="sidebar-module">
						<h4>
							<b>즐겨찾기</b>
						</h4>
						<ol class="list-unstyled">
							<li><a href="https://github.com/">GitHub</a></li>
							<li><a href="https://twitter.com/">Twitter</a></li>
							<li><a href="https://ko-kr.facebook.com/">Facebook</a></li>
						</ol>
					</div>
				</div>
				<!-- /.blog-sidebar -->

			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->

	</div>

	<!-- 모달창 -->
	<div class="modal" id="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">로그인 결과</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>


	<script>
		$(document).ready(function() {
			$("#loginForm").submit(function(event) {
				// submit되는 것을 막기
				event.preventDefault();

				console.log('start');
				// id, pwd 값 가져오기
				var id = $("#id").val();
				var pwd = $("pwd").val();
				console.log(id, pwd);

				$.post({
					url : '/WebClass/bloglogin',
					dataType : 'json',
					data : {
						id : id,
						pwd : pwd
					},
					success : function(data) {
						var myModal = $('#myModal');
						myModal.modal();
						myModal.find('.modal-body').html(data.msg);
						if (data.status == "success") {
							$('#loginForm').html("");
							$('#joinForm').html("");
							$('#navbarRight').html('<li class="nav-item"><a class="nav-link" href="/WebClass/bloglogout">'+data.name+'님</a></li>')
						} else {
							$('#pwd').val("");
						}
					}
				});
			});
		});
		// 간단하게 쓰기
		$(function() {

		});
	</script>


</body>
</html>