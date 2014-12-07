<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Movie Ticket Total System</title>
<link href="../static/css/bootstrap.css" rel="stylesheet">
<link href="../static/css/bootstrap-responsive.css" rel="stylesheet">
<link href="../static/manager/body.css" rel="stylesheet">
<link href="../resources/js/rateit/rateit.css" rel="stylesheet">
</head>
<body style="font-family: 나눔고딕, NanumGothic, ngeot, 돋움, DotumChe, Dotum">
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="../common/submenu.jsp"></jsp:include>
			<div class="span9">
				<div class="row" style="align:center;">
					<div class="col-md-4"
						style="min-width: 450px; min-height: 300px;">
							<p><h1>${movieInfo.title}</h1></p>
							<hr>
							<p><div class="span2"><b>평점</b></div> : <div class="rateit" data-rateit-value=${(movieInfo.gradeAvg)/2 } data-rateit-ispreset="true" data-rateit-readonly="true"></div></p>
							<p><div class="span2"><b>장르</div> : </b><c:forEach var="genre" items="${movieInfo.genre }"><a href="/movie/home.do?genreSeq=${genre.genreSeq }" >${genre.genre}</a> </c:forEach></p>
							<p><div class="span2"><b>국가</div> : </b><c:forEach var="country" items="${movieInfo.country }">${country} </c:forEach></p>
							<p><div class="span2"><b>상영시간</b></div> : ${movieInfo.playTime }</p>
							<p><div class="span2"><b>개봉날짜</b></div> : ${movieInfo.openDate }</p>
							<p><div class="span2"><b>감독</b></div> : <c:forEach var="director" items="${movieInfo.director }">${director.name}, </c:forEach></p>
							<p><div class="span2"><b>출연</b></div> : <c:forEach var="actor" items="${movieInfo.actor }">${actor.name}, </c:forEach></p>
							<p><div class="span2"><b>등급</b></div> : ${movieInfo.rate }</p>
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
							<c:choose>
								<c:when test="${navCode=='synopsis' }">
									<li class="active"><a href="/movie/movieDetail.do?movieSeq=${movieInfo.movieSeq }&navCode=synopsis">줄거리</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/movie/movieDetail.do?movieSeq=${movieInfo.movieSeq }&navCode=synopsis">줄거리</a></li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${navCode=='staff' }">
									<li class="active"><a href="/movie/movieDetail.do?movieSeq=${movieInfo.movieSeq }&navCode=staff">배우/제작진</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/movie/movieDetail.do?movieSeq=${movieInfo.movieSeq }&navCode=staff">배우/제작진</a></li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${navCode=='picture' }">
									<li class="active"><a href="/movie/movieDetail.do?movieSeq=${movieInfo.movieSeq }&navCode=picture">사진</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/movie/movieDetail.do?movieSeq=${movieInfo.movieSeq }&navCode=picture">사진</a></li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${navCode=='video' }">
									<li class="active"><a href="/movie/movieDetail.do?movieSeq=${movieInfo.movieSeq }&navCode=video">동영상</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/movie/movieDetail.do?movieSeq=${movieInfo.movieSeq }&navCode=video">동영상</a></li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${navCode=='grade' }">
									<li class="active"><a href="/movie/movieDetail.do?movieSeq=${movieInfo.movieSeq }&navCode=grade">평점/리뷰</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/movie/movieDetail.do?movieSeq=${movieInfo.movieSeq }&navCode=grade">평점/리뷰</a></li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${navCode=='timeTable' }">
									<li class="active"><a href="/movie/movieDetail.do?movieSeq=${movieInfo.movieSeq }&navCode=timeTable">상영시간표</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/movie/movieDetail.do?movieSeq=${movieInfo.movieSeq }&navCode=timeTable">상영시간표</a></li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${navCode=='fameLine' }">
									<li class="active"><a href="/movie/movieDetail.do?movieSeq=${movieInfo.movieSeq }&navCode=fameLine">명대사</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/movie/movieDetail.do?movieSeq=${movieInfo.movieSeq }&navCode=fameLine">명대사</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
					</nav>
				</div>
				<div class="row">
				
				<span><h1>
				<c:choose>
					<c:when test="${navCode  == 'synopsis'}">
						${movieIfo.synopsis }
					</c:when>
					<c:when test="${navCode  == 'staff'}">
						배우/제작진
					</c:when>
					<c:when test="${navCode  == 'picture'}">
						사진
					</c:when>
					<c:when test="${navCode  == 'video'}">
						동영상
					</c:when>
					<c:when test="${navCode  == 'grade'}">
						${movieInfo.grade }
					</c:when>
					<c:when test="${navCode  == 'timeTable'}">
						상영시간표
					</c:when>
					<c:when test="${navCode  == 'fameLine'}">
						명대사
					</c:when>
				</c:choose></h1></span>
				<hr>
				<c:choose>
					<c:when test="${navCode  == 'synopsis'}">
						${movieInfo.synopsis }
					</c:when>
					<c:when test="${navCode  == 'staff'}">
						<div>
							배우/제작진
							<jsp:include page="./movieActor.jsp"></jsp:include>
						</div>
					</c:when>
					<c:when test="${navCode  == 'picture'}">
						<div align="center">
							<jsp:include page="./moviePicture.jsp"></jsp:include>
						</div>
					</c:when>
					<c:when test="${navCode  == 'video'}">
						<div align="center">
							<jsp:include page="./movieVideo.jsp"></jsp:include>
						</div>
					</c:when>
					<c:when test="${navCode  == 'grade'}">
						평점/리뷰
					</c:when>
					<c:when test="${navCode  == 'timeTable'}">
						상영시간표
					</c:when>
					<c:when test="${navCode  == 'fameLine'}">
						명대사
					</c:when>
				</c:choose>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="../resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../resources/js/rateit/jquery.rateit.min.js"></script>

</html>
