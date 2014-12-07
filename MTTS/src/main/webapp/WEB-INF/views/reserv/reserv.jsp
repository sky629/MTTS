
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ page import ="java.text.*,java.util.*" %>


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
		<div class="reserv" id="left">
		
			<div id="movie_select" class="reserv_menu">
				<div class="reserv_nav">
					<p class="reserv_nav_span">영화 선택</p>
				</div>
				<c:forEach var="showMovieV" items="${showMovie }">
					<li><a href="/reserv/reserv.do?movieSeq=${showMovieV.movieSeq}">${showMovieV.title }</a></li>
				</c:forEach>
			</div>
		
			<div id="theater_select" class="reserv_menu">
				<div class="reserv_nav">
					<p class="reserv_nav_span">영화관 선택</p>
				</div>
				<c:forEach var="theater" items="${theater }">
					<li><a href="/reserv/reserv.do?theaterSeq=${theater.theaterSeq }&movieSeq=${ms }">${theater.theaterName }</a></li>
				</c:forEach>
			</div>
			
			
		
			<div id="day_select" class="reserv_menu">
				<div class="reserv_nav">
					<p class="reserv_nav_span">날짜 선택</p>
				</div>
				<div>
					<li><a href="/reserv/reserv.do?theaterSeq=${ts}&movieSeq=${ms }&showDate=20141211">12월 11일</a></li>
				</div>
				
			</div>
			
			<div id="reserv_second_row">
				<div id="screen_select">
					<div class="reserv_nav">
						<p class="reserv_nav_span">상영관 / 시간 선택</p>
					</div>
					<div id="mTS">
						<c:forEach var="movieS" items="${movieScreen}">
							<ul>
								<li id="mScreen">${movieS.screenName }</li>
								<ul>
									<c:forEach var="movieT" items="${movieTime}">
										<c:if test="${movieS.screenSeq == movieT.screenSeq }">
											<li id="mTime">
											<a href="#">
												${movieT.showTime }
											</a>
											</li>
										</c:if>
									</c:forEach>
								</ul>
							</ul>
						</c:forEach>
					</div>
				</div>
				
				<div id="member_select">
					<div class="reserv_nav">
						<p class="reserv_nav_span">좌석선택</p>
					</div>
					<c:forEach var="seatInfo" items="${seatInfo}">
						<ul>
							<li>${seatInfo.seatNumber }</li>
						</ul>
					</c:forEach>
				</div>
			</div>
			
		</div>
		
		<div class="reserv" id="right">
			
				<div class="reserv_nav">
					<p class="reserv_nav_span">예매 정보</p>
				</div>
				
				<form action="/reserv/reserv.do" method="post">
					<input type="hidden" value="sample" id="Rdata"/>
					
					<input type="submit" value="예매하기" id="reserv_btn"/>
				</form>
				
		</div>
		
	</div>
</body>
</html>
