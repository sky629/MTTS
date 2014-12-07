<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">

<link href="../static/css/bootstrap.css" rel="stylesheet">
<link href="../static/css/bootstrap-responsive.css" rel="stylesheet">
<link href="../static/manager/body.css" rel="stylesheet">
<link href="../resources/js/rateit/rateit.css" rel="stylesheet">
</head>
<body>
	<h2>배우</h2>
	<hr>
	<div class="row">
		<c:forEach var="actor" items="${movieInfo.actor}">
			<div class="col-sm-6 col-md-4" style="padding:10px;">
		    	<div class="thumbnail">
			      	<img src="http://tv03.search.naver.net/nhnsvc?size=120x150&quality=9&q=http://sstatic.naver.net/people/146/201410291637047751.jpg" alt="영화 포스터">
				    <div class="caption">
					   	<div class="list-group">
		   					<h3>${actor.name}</h3>
		   					<p>${actor.role }역</p>
						</div>
				    	<p><div class="span3"><b>출생일</div> : </b>${actor.birthDate}</p>
				       	<p><div class="span3"><b>출생지</div> : </b>${actor.birthLegion}</p>
				    	<p><div class="span3"><b>프로필</div> : </b>${actor.profile}</p>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<hr>
	<div>
		<h2>감독</h2>
		<hr>
		<div class="row">
		<c:forEach var="director" items="${movieInfo.director}">
			<div class="col-sm-6 col-md-4" style="padding:10px;">
		    	<div class="thumbnail">
			      	<img src="http://tv03.search.naver.net/nhnsvc?size=120x150&quality=9&q=http://sstatic.naver.net/people/146/201410291637047751.jpg" alt="영화 포스터">
				    <div class="caption">
					   	<div class="list-group">
		   					<h3>${director.name}</h3>
	   					</div>
				    	<p><div class="span3"><b>출생일</div> : </b>${director.birthDate}</p>
				       	<p><div class="span3"><b>출생지</div> : </b>${director.birthLegion}</p>
				    	<p><div class="span3"><b>프로필</div> : </b>${director.profile}</p>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	</div>
</body>
<script type="text/javascript" src="../resources/js/rateit/jquery.rateit.min.js"></script>
</html>
