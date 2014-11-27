<%-- <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="/resources/js/jquery-1.7.2.min.js"></script>

<div id="event_pagination" class="pagination pagination-centered">
	<ul>
		<c:if test="${pagingInfo.isDisplayPrevIcon}">
			<li><a href="javascript:void(0)" class="page_move" data-page="1">First</a></li>
			<li><a href="javascript:void(0)" class="page_move" data-page="${pagingInfo.prevPageNumber}">Prev 10</a></li>
		</c:if>
		<c:if test="${pagingInfo.displayMinPageNumber != pagingInfo.displayMaxPageNumber}">
			<c:forEach begin="${pagingInfo.displayMinPageNumber}" end="${pagingInfo.displayMaxPageNumber}" step="1" var="i">
				<c:choose>
					<c:when test="${pagingInfo.currentPageNumber == i }">
						<li class="active"><a>${i}</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="javascript:void(0)" class="page_move" data-page="${i}" >${i}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</c:if>
		<c:if test="${pagingInfo.isDisplayNextIcon}">
			<li><a href="javascript:void(0)" class="page_move" data-page="${pagingInfo.nextPageNumber}">Next 10</a></li>
			<li><a href="javascript:void(0)" class="page_move" data-page="${pagingInfo.totalPageNumber}">Last</a></li>
		</c:if>
	</ul>
</div>
 --%>