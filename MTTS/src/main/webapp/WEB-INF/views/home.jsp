<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link href="/static/css/bootstrap.css" rel="stylesheet">
<link href="/static/css/bootstrap-responsive.css" rel="stylesheet">
<link href="/static/css/manager/body.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="./common/header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="./common/submenu.jsp"></jsp:include>
			
			<div class="span9">
				<div>
					<h1>Admin HOME~~hhhhhhhh~</h1>
					<p>
						<c:forEach var="info" items="${info }">
							${info.seq } ${info.name } ${info.age } ${serverTime }<br>
						</c:forEach>
					</p>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="./common/footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="/resources/js/jquery-1.7.2.min.js"></script>
</html>
