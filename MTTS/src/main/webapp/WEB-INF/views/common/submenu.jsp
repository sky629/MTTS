<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	<div class="span2">
		<div class="well sidebar-nav">
			<ul class="nav nav-list">
				<c:forEach var="submenu" items="${submenuList}">
					<!--  <li class="nav-header">Sidebar</li>-->
					<li class="<c:if test="${submenuId == submenu.menuId}">active</c:if>">
						<c:choose>
							<c:when test="${fn:contains(submenu.menuUrl, '?')}">
								<a href="${submenu.menuUrl}&top=${topmenuId}&sub=${submenu.menuId}">${submenu.menuName}</a>							
							</c:when>
							<c:otherwise>
								<a href="${submenu.menuUrl}?top=${topmenuId}&sub=${submenu.menuId}">${submenu.menuName}</a>	
							</c:otherwise>
						</c:choose>
					</li>
				</c:forEach>
			</ul>
		</div>
		<c:if test="${qa}">
		 <h1 align="center" style="color:red;"> QA 어드민</h1>
		</c:if>
	</div>
