<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">

</head>
<body>

	<div style="display:none;" class="html5gallery" data-skin="light" data-width="700" data-height="400">
		<c:forEach var="video" items="${video}">
    	<a href="${video.videoURL }"><img src="${video.videoPictureURL }" alt="${video.videoName }"></a>
    	</c:forEach>
    </div>
</body>
</html>
