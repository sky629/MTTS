<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container-fluid">
			<a class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a><a class="brand" href="/home.do?top=top&sub=sub">MTTS</a>
			<div class="nav-collapse collapse">
				<p class="navbar-text pull-right">
					
				</p>
				<ul class="nav">
					<c:forEach var="topmenu" items="${topmenuList}">
						<li class="<c:if test="${topmenuId == topmenu.menuId}">active</c:if>">
							<c:choose>
								<c:when test="${fn:contains(topmenu.menuUrl, '?')}">
									<a href="${topmenu.menuUrl}&top=${topmenu.menuId}&sub=sub">${topmenu.menuName}</a>							
								</c:when>
								<c:otherwise>
									<a href="${topmenu.menuUrl}?top=${topmenu.menuId}&sub=sub">${topmenu.menuName}</a>	
								</c:otherwise>
							</c:choose>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>
