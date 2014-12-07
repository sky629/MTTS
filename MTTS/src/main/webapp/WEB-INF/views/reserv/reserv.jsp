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
		<div class="reserv">
		
			<div id="movie_select" class="reserv_menu">
				<div class="reserv_nav">
					<p class="reserv_nav_span">영화 선택</p>
				</div>
				<c:forEach var="showMovieV" items="${showMovie }">
					<li><a href="/reserv/reserv.do?theaterSeq=${showMovieV.theaterSeq }&movieSeq=${showMovieV.movieSeq}">${showMovieV.title }</a></li>
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


<div class="demo">  
  
<p>Date:  
  <input type="text" id="datepicker" size="9">  
</p>  
</div><!-- End demo -->  
  
<div class="demo-description">  
  
<p>Show month and year dropdowns in place of the static month/year header to facilitate navigation through large timeframes.  Add the boolean <code>changeMonth</code> and <code>changeYear</code> options.</p>  
  
</div>
					
				</div>
				
			</div>
			
		
			
		</div>
		
		<div class="reserv">
			<p>선택정보</p>
		</div>
		
	</div>
</body>
</html>
