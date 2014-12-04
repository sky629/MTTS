<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Movie Ticket Total System</title>
<link href="./static/css/bootstrap.css" rel="stylesheet">
<link href="./static/css/bootstrap-responsive.css" rel="stylesheet">
<link href="./static/manager/body.css" rel="stylesheet">
</head>
<body style="font-family: 나눔고딕, NanumGothic, ngeot, 돋움, DotumChe, Dotum">
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="../common/submenu.jsp"></jsp:include>
			<div class="span9">
				<div class="row" style="bottom-margin:30px;">
					<div class="col-md-4"
						style="min-width: 450px; min-height: 300px;">
							<p><h1>${movieDetail.title}</h1></p>
							<hr>
							<p><div class="span3"><b>평점</b></div> : ${grade }</p>
							<p><div class="span3"><b>장르</b></div> : ${genre }</p>
							<p><div class="span3"><b>국가</b></div> : ${country }</p>
							<p><div class="span3"><b>상영시간</b></div> : ${movieDetail.playTime }</p>
							<p><div class="span3"><b>개봉날짜</b></div> : ${movieDetail.openDate }</p>
							<p><div class="span3"><b>감독</b></div> : </p>
							<p><div class="span3"><b>출연</b></div> : </p>
							<p><div class="span3"><b>등급</b></div> : ${rate }</p>
					</div>
					<div class="col-md-3"
						style="padding: 0 0 0 25px; min-width: 150px; min-height: 300px; max-height: 400px;">
						<img alt="포스터 사진" src="http://movie.phinf.naver.net/20141021_17/14138540655417EjQ6_JPEG/movie_image.jpg" height="400px"></div>
				</div>
				<br/>
				<div class="row" >
					<nav class="navbar navbar-default" role="navigation">
					<div class="collapse navbar-collapse navbar-ex1-collapse">
						<ul class="nav navbar-nav">
							<li><a href="">줄거리</a></li>
							<li><a href="#">배우/제작진</a></li>
							<li><a href="#">사진</a></li>
							<li><a href="#">동영상</a></li>
							<li><a href="#">평점/리뷰</a></li>
							<li><a href="#">상영시간표</a></li>
							<li><a href="#">명대사</a></li>
						</ul>
					</div>

					</nav>
				</div>
				<div class="row">
				<span><h1>줄거리</h1></span>
				<hr>
				<span>${movieDetail.synopsis}</span>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="./resources/js/jquery-1.7.2.min.js"></script>

</html>