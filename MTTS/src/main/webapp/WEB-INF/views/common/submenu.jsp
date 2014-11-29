<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="span2">
		<form class="form-horizontal" role="form">
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-3 control-label">&nbspEmail</label>
    <div class="col-lg-8">
      <input type="email" class="form-control" id="inputEmail1" placeholder="Email">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword1" class="col-lg-3 control-label">&nbspPW</label>
    <div class="col-lg-8">
      <input type="password" class="form-control" id="inputPassword1" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-8">
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-8">
      <button type="submit" class="btn btn-default">로그인</button>
    </div>
  </div>
</form>
</div>
