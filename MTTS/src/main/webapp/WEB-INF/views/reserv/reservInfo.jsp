<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../static/css/bootstrap.css" rel="stylesheet">
<link href="../static/css/bootstrap-responsive.css" rel="stylesheet">
<link href="../static/manager/body.css" rel="stylesheet">
<link href="../resources/js/rateit/rateit.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body style="font-family: 나눔고딕, NanumGothic, ngeot, 돋움, DotumChe, Dotum">
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="../common/submenu.jsp"></jsp:include>
	<div class="row">
		<div class="col-md-8">
			<div>
				<h1>${reservInfo[0].memberName }님의 예매 내역</h1>
				<hr>
			</div>
			<div>
				<c:forEach var="reservInfo" items="${reservInfo }">
				<div class="row">
					<div class="col-md-3" align="center"><img height="250px" alt="aa" src="${reservInfo.moviePosterURL }"> </div>
					<div class="col-md-6" style="background-color:#eee;">
						<p><div class="span2">영화 제목</div>: ${reservInfo.movie }
						<p><div class="span2">영화관</div>: ${reservInfo.theater }
						<p><div class="span2">상영관</div>: ${reservInfo.screen } 
						<p><div class="span2">예매인</div>: ${reservInfo.memberName } 
						<p><div class="span2">좌석번호</div>: ${reservInfo.seatNumber }
						<p><div class="span2">가격</div>: ${reservInfo.price }원
						<p><div class="span2">상영날짜</div>: ${reservInfo.showDate }
						<p><div class="span2">예매날짜</div>: ${reservInfo.reservDate }
					</div>
				</div>
					<hr>
				</c:forEach>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
	</div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>