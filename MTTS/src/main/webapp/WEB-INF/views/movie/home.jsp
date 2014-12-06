<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Movie Ticket Total System</title>

<link href="../static/css/bootstrap.css" rel="stylesheet">
<link href="../static/css/bootstrap-responsive.css" rel="stylesheet">
<link href="../static/manager/body.css" rel="stylesheet">
<link href="../resources/js/rateit/rateit.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="../common/submenu.jsp"></jsp:include>
			
			<div class="span9">
			<nav class="navbar navbar-default" role="navigation">
			<ul class="nav nav-tabs navbar-right">
    			<li><a href="/?sortCode=reserv">예매 순</a></li>
    			<li><a href="/?sortCode=open">개봉 순</a></li>
    			<li><a href="/?sortCode=grade">평점 순</a></li>
    		</ul>
    		</nav>

			<div class="row">
				<c:forEach var="movieInfo" items="${movieInfo }">
				<div class="col-sm-6 col-md-4" style="padding:10px;">
			    	<div class="thumbnail">
			      	<img src="./static/images/iu.jpg" alt="영화 포스터">
			      	<div class="caption">
				      	<div class="list-group">
						 	<a href="/movie/movieDetail.do?movieSeq=${movieInfo.movieSeq}" class="list-group-item">
		   						<h3>${movieInfo.title}</h3>
							</a>
						</div>
						<p><div class="span3"><b>평점</div> : </b><div class="rateit" data-rateit-value=${(movieInfo.gradeAvg)/2 } data-rateit-ispreset="true" data-rateit-readonly="true"></div></p>
				        <p><div class="span3"><b>장르</div> : </b><c:forEach var="genre" items="${movieInfo.genre }"><a href="/movie/home.do?genreSeq=${genre.genreSeq }" >${genre.genre}</a> </c:forEach></p>
				        <p><div class="span3"><b>국가</div> : </b><c:forEach var="country" items="${movieInfo.country }">${country} </c:forEach></p>
				        <p><div class="span3"><b>상영시간</div> : </b>${movieInfo.playTime}</p>
				        <p><div class="span3"><b>개봉일</div> : </b>${movieInfo.openDate}</p>
				        <p><div class="span3"><b>감독</div> : </b>${movieInfo.openDate}</p>
				        <p><div class="span3"><b>출연진</div> : </b>${movieInfo.openDate}</p>
				        <p><div class="span3"><b>등급</div> : </b>${movieInfo.rate}</p>
				        
				        
				        <p><a href="/reserv/reserv.do" class="btn btn-primary">예매 하기</a> <a href="#" class="btn btn-default">예고편 보기</a></p>
			      	</div>
			      	</div>
			  	</div>
			  	</c:forEach>
			</div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
<script type="text/javascript" src="../resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../resources/js/rateit/jquery.rateit.min.js"></script>
</html>
