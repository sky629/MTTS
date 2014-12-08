<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<link href="../static/css/bootstrap.css" rel="stylesheet">
<link href="../static/css/bootstrap-responsive.css" rel="stylesheet">
<link href="../static/manager/body.css" rel="stylesheet">
<link href="../resources/js/rateit/rateit.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<link href="../resources/js/fotorama/fotorama.css" rel="stylesheet">
<script src="../resources/js/fotorama/fotorama.js"></script>
</head>
<body>
	<div style="margin:auto;">
		<div class="fotorama" data-width="700" data-ratio="700/467" data-max-width="100%">
	  		<c:forEach var="picture" items="#{movieInfo.picture }">
	  			<img alt="${picture.pictureName }" src="${picture.pictureURL }">
	  			${picture.pictureName }
	  		</c:forEach>
		</div>
	</div>
</body>
</html>
