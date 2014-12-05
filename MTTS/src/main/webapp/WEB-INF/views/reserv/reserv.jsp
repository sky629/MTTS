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
		<div class="reserv_left">
			<div id="movie_select">
				<h3>영화 선택</h3>
				<c:forEach var="showMovie" items="${showMovie }">
					<p>${showMovie.title }</p>
				</c:forEach>
			</div>
		
			<div id="theater_select">
				<h3>극장 선택DD</h3>
				<c:forEach var="theater" items="${theater }">
					<p>${theater.theaterName }</p>
				</c:forEach>
			</div>
			<div id="screen_select"></div>
		
		
		
			<div id="day_select"></div>
				<p>날짜 선택</p>
			<div id="member_select"></div>
		</div>
		
		<div class="reserv_right">
			<p>선택정보</p>
		</div>
		
	</div>
</body>
</html>
