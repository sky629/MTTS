<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../resources/js/rateit/rate.css" rel="stylesheet">
</head>
<body>
	<div class="row marketing">
		<c:forEach var="grade" items="${grade }">
			<div class="col-lg-4" style="border: #fff solid 1px; background-color:#eee; border-radius:5px;">
				<div><h4><b>${grade.review }</b></h4></div>
				<p><div class="rateit" data-rateit-value=${(grade.grade)/2 } data-rateit-ispreset="true" data-rateit-readonly="true"></div>${grade.grade }</p>
				<p>${grade.writer }</p>
				<p style="font-size:8px;">${grade.createDate }</p>
			</div>
		</c:forEach>
	</div>
</body>
</html>