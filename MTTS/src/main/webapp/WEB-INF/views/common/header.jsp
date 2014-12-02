<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  
  <h1>
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="/" style="width:215px; font-size:32px;" align="center">영화야 놀자!</a>
 </div>
 </h1>
  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
      <li class="active"><a href="/">영화 홈</a></li>
      <li class="active"><a href="#">예매 하기</a></li>
      <li class="active"><a href="#">예매 확인</a></li>
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
      <form class="navbar-form navbar-left" role="search">
      <div class="form-group">
		<select class="form-control" name="searchCode" id="searchCode">
			<option value="ALL">ALL</option>
			<option value="MOVIE">영화명</option>
			<option value="ACTOR">배우명</option>
		</select>
      </div>
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search" id="search" name="search" style="width:300px">
      </div>
      <button type="submit" class="btn btn-default">검색</button>
  	  </form>
    </ul>
  </div><!-- /.navbar-collapse -->
</nav>
<div class="well well-sm" align="center">
  <img alt="" src="./static/images/main.png">
</div>