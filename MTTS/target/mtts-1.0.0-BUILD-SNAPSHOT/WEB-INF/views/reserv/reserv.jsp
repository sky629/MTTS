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
	
	<div id="wrap">
		<div class="reserv">
		
			<div id="movie_select" class="reserv_menu">
				<div class="reserv_nav">
					<p class="reserv_nav_span">영화 선택</p>
				</div>
				<c:forEach var="showMovieV" items="${showMovie }">
					<li><a href="/reserv/reserv.do?theaterSeq=${showMovieV.theaterSeq }">${showMovieV.title }</a></li>
				</c:forEach>
			</div>
		
			<div id="theater_select" class="reserv_menu">
				<div class="reserv_nav">
					<p class="reserv_nav_span">영화관 선택</p>
				</div>
				<c:forEach var="theater" items="${theater }">
					<p>${theater.theaterName }</p>
				</c:forEach>
			</div>
			
			
		
			<div id="day_select" class="reserv_menu">
				<div class="reserv_nav">
					<p class="reserv_nav_span">날짜 선택</p>
				</div>
				
			</div>
			
		
			<div id="screen_select" class="reserv_menu">
				<div class="reserv_nav">
					<p class="reserv_nav_span">상영관 / 시간 선택</p>
				</div>
				<c:forEach var="movieTimeS" items="${movieTime}">
					<ul>
						<li>${movieTimeS.screenName }</li>
						<ul>
							<li>${movieTimeS.showTime }</li>
						</ul>
					</ul>
				</c:forEach>
			</div>
			
			<div id="member_select"></div>
			
		</div>
		
		<div class="reserv">
			<p>선택정보</p>
		</div>
		
	</div>
</body>
</html>
