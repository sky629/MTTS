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
		<c:forEach var="fameLine" items="${fameLine }">
			<div class="col-lg-4" style="border: #fff solid 1px; background-color:#eee; border-radius:5px;">
				<div><h4><b>${fameLine.staffName }</b></h4></div>
				<p>작성자 : ${fameLine.writer}</p>
				<p>명대사 : ${fameLine.fameLine }</p>
				<p>추천수 : ${fameLine.recommend }</p>
				<p style="font-size:8px;">작성날짜 : ${fameLine.createDate }</p>
			</div>
		</c:forEach>
	</div>
</body>
</html>