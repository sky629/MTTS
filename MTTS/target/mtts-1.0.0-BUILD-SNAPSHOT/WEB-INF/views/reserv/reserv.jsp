<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ page import ="java.text.*,java.util.*" %>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Movie Ticket Total System</title>

<link href="../static/css/bootstrap.css" rel="stylesheet">
<link href="../static/css/bootstrap-responsive.css" rel="stylesheet">
<link href="../static/manager/body.css" rel="stylesheet">
<link href="../resources/js/rateit/rateit.css" rel="stylesheet">



</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	
	<div id="wrap">
		<div class="reserv" id="left">
		
			<div id="movie_select" class="reserv_menu">
				<div class="reserv_nav">
					<p class="reserv_nav_span">영화 선택</p>
				</div>
				<c:forEach var="showMovieV" items="${showMovie }">
					<li><a href="/reserv/reserv.do?movieSeq=${showMovieV.movieSeq}">${showMovieV.title }</a></li>
				</c:forEach>
			</div>
		
			<div id="theater_select" class="reserv_menu">
				<div class="reserv_nav">
					<p class="reserv_nav_span">영화관 선택</p>
				</div>
				<c:forEach var="theater" items="${theater }">
					<li><a href="/reserv/reserv.do?theaterSeq=${theater.theaterSeq }&movieSeq=${ms }">${theater.theaterName }</a></li>
				</c:forEach>
			</div>
			
			
		
			<div id="day_select" class="reserv_menu">
				<div class="reserv_nav">
					<p class="reserv_nav_span">날짜 선택</p>
				</div>
				<div>
						
<%   
int year;
int month;
   Calendar today=Calendar.getInstance();
   Calendar cal = new GregorianCalendar();
   year = (request.getParameter("year")==null) ?  today.get(Calendar.YEAR) :      Integer.parseInt(request.getParameter("year").trim()) ;
 month = (request.getParameter("month")==null) ?   today.get(Calendar.MONTH)+1:      Integer.parseInt(request.getParameter("month").trim()) ;
if (month<=0){
 month = 12;
 year  =year- 1;
}else if (month>=13){
 month = 1;
 year =year+ 1;
}
   cal.set(Calendar.YEAR,year);
   cal.set(Calendar.MONTH,(month-1));
   cal.set(Calendar.DATE,1);
%>

<table align="center">
<tr >
	<td align="center"height='18' valign='bottom' colspan="7">
		<a href='calendar.jsp?year=<%=cal.get(Calendar.YEAR)%>&month=<%=((cal.get(Calendar.MONTH)+1)-1)%>'><font color='484848' size='2'>◀ </font></a><font color='484848' size='2'><%=cal.get(Calendar.YEAR)%> / <%=(cal.get(Calendar.MONTH)+1)%> </font><a href='calendar.jsp?year=<%=cal.get(Calendar.YEAR)%>&month=<%=((cal.get(Calendar.MONTH)+1)+1)%>'><font color='484848' size='2'>▶ </font></a>
	</td>
</tr>
<tr align="right" bgcolor="#6ea1aa">
<td>  일</td><td>  월</td><td>  화</td><td>  수</td><td>  목</td><td>  금</td><td>  토</td>
</tr>
<%   
cal.set(year, month-1, 1);
int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
%>
<tr align="right">
<%
for(int i=1;i<dayOfWeek;i++){ 
%><td align="right"></td>
<% }
for(int i=1;
        i<=cal.getActualMaximum(Calendar.DAY_OF_MONTH);i++){
	
			if(i==12)	{
    %><td id="fontc" bgcolor="blue"><%
			}else	{
	%><td><%} %>
    <a href="/reserv/reserv.do?theaterSeq=${ts}&movieSeq=${ms }&showDate=20141211"><%=i %></a></td>
<% 
	if((dayOfWeek-1+i)%7==0){
%>
</tr><tr align="right">
   <% }
  }%>
 
 </tr>
</table>
					
				</div>
			</div>
			<div id="reserv_second_row">
				<div id="screen_select">
					<div class="reserv_nav">
						<p class="reserv_nav_span">상영관 / 시간 선택</p>
					</div>
					<div id="mTS">
						<c:forEach var="movieS" items="${movieScreen}">
							<ul>
								<li id="mScreen">${movieS.screenName }</li>
								<ul>
									<c:forEach var="movieT" items="${movieTime}">
										<c:if test="${movieS.screenSeq == movieT.screenSeq }">
											<li id="mTime">
											<a href="#">
												${movieT.showTime }
											</a>
											</li>
										</c:if>
									</c:forEach>
								</ul>
							</ul>
						</c:forEach>
					</div>
				</div>
				
				<div id="member_select">
					<div class="reserv_nav">
						<p class="reserv_nav_span">좌석선택</p>
					</div>
					<c:forEach var="seatInfo" items="${seatInfo}">
						<ul>
							<li>${seatInfo.seatNumber }</li>
						</ul>
					</c:forEach>
				</div>
			</div>
			
		</div>
		
		<div class="reserv" id="right">
			
				<div class="reserv_nav">
					<p class="reserv_nav_span">예매 정보</p>
				</div>
				
				<form action="/reserv/reserv.do" method="post">
					<input type="hidden" value="sample" id="Rdata"/>
					
					<input type="submit" value="예매하기" id="reserv_btn"/>
				</form>
				
		</div>
		
	</div>
</body>
</html>
