<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Movie Ticket Total System</title>

<link href="../static/css/bootstrap.css" rel="stylesheet">
<link href="../static/css/bootstrap-responsive.css" rel="stylesheet">
<link href="../static/manager/body.css" rel="stylesheet">
<link href="../resources/js/rateit/rateit.css" rel="stylesheet">

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
 
<script language="javascript" type="text/javascript">
 $(document).ready(function() {
  //******************************************************************************
  // 상세검색 달력 스크립트
  //******************************************************************************
  var clareCalendar = {
   monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
   dayNamesMin: ['일','월','화','수','목','금','토'],
   weekHeader: 'Wk',
   dateFormat: 'yy-mm-dd', //형식(2014-12-25)
   autoSize: false, //오토리사이즈(body등 상위태그의 설정에 따른다)
   changeMonth: true, //월변경가능
   changeYear: true, //년변경가능
   showMonthAfterYear: true, //년 뒤에 월 표시
   buttonImageOnly: true, //이미지표시
   buttonText: '달력선택', //버튼 텍스트 표시
   buttonImage: '../static/images/calendar.png', //이미지주소
   showOn: "both", //엘리먼트와 이미지 동시 사용(both,button)
   yearRange: '1990:2020' //1990년부터 2020년까지
  };
  $("#reservDate").datepicker(clareCalendar);
  $("#toDt").datepicker(clareCalendar);
  $("img.ui-datepicker-trigger").attr("style","margin-left:5px; vertical-align:middle; cursor:pointer;"); //이미지버튼 style적용
  $("#ui-datepicker-div").hide(); //자동으로 생성되는 div객체 숨김  
 });
</script>

<script type="text/javascript">
$(function(){
	//  리스트 가져오기
	var url="<%=cp%>/reserv/movieList.action";
	var params="movieSeq=";
	
	$.ajax({
		type:"post"		// 포스트방식
		,url:url		// url 주소
		,data:params	//  요청에 전달되는 프로퍼티를 가진 객체
		,dataType:"json"
		,success:function(args){	//응답이 성공 상태 코드를 반환하면 호출되는 함수
			 for(var idx=0; idx<args.data.length; idx++) {
				 $("#movieSelect").append("<option value='"+args.data[idx].movieSeq+"'>"+args.data[idx].title+"</option>");
				 //id가 sido인 요소선택
				 //append로 기존 셀렉터로 선택된 요소 다음에 다음내용이 들어감
				 //<option value='0'>서울</option> 이런식으로 sido의 요소안에 자식으로 들어감
   // args.data[idx] : args 는 function(args)의 인자. data는 controller.java에서 json객체에 넣어준 key(여기서는 list가 값이 된다). [idx]는 list의 몇번쨰 데이터를 가져올지 배열을 나타냄
			 }
		}
	    ,error:function(e) {	// 이곳의 ajax에서 에러가 나면 얼럿창으로 에러 메시지 출력
	    	alert(e.responseText);
	    }
	});
});

function movieList() {
	var movieSeq=$("#movieSelect").val();	// ID가 movieSelect인 요소의 값을 불러옴
	if(movieSeq=="") {	                // movieSeq에 ""가 선택되어있다면
		$("#theaterSelect option").each(function() {	//ID가 theater이며 option인 요소를 
			$("#theaterSelect option:eq(1)").remove();	//city theater의 1번째를 계속 삭제(0번째만 남기고 모두 지우게 된다) ,  eq : 지정된 index 번째의 엘리먼트 선택
		});
	
		$("#showSelect option").each(function() {	
			$("#showSelect option:eq(1)").remove();	 
		});
		
		$("#seatSelect option").each(function() {	
			$("#seatSelect option:eq(1)").remove();	
		});

		return;
	}
	
	var url="<%=cp%>/reserv/theaterList.action";
	var params="movieSeq="+movieSeq;
	
	$.ajax({
		type:"post"
		,url:url	
		,data:params
		,dataType:"json"
		,success:function(args){
			$("#theaterSelect option").each(function() {	
				$("#theaterSelect option:eq(1)").remove();	
			});
			
			 for(var idx=0; idx<args.data.length; idx++) {	
				 $("#theaterSelect").append("<option value='"+args.data[idx].theaterSeq+"'>"+args.data[idx].theaterName+"</option>");	
			 }
		}
	    ,error:function(e) {
	    	alert(e.responseText);
	    }
	});
}

function dateList() {
	var movieSeq=$("#movieSelect").val();	
	var theaterSeq=$("#theaterSelect").val();
	var reservDate=$("#reservDate").val();
	
	
	var url="<%=cp%>/reserv/dateList.action";
	var params="movieSeq="+movieSeq+"&theaterSeq="+theaterSeq+"&reservDate="+reservDate;
	
	$.ajax({
		type:"post"
		,url:url	
		,data:params
		,dataType:"json"
		,success:function(args){
			$("#showSelect option").each(function() {	
				$("#showSelect option:eq(1)").remove();	
			});
			
			 for(var idx=0; idx<args.data.length; idx++) {	
				 $("#showSelect").append("<option value='"+args.data[idx].showTimeSeq+"'>"+args.data[idx].screenName+" / "+args.data[idx].showTime+"</option>");	
			 }
		}
	    ,error:function(e) {
	    	alert(e.responseText);
	    }
	});
}

function seatList() {
	var showTimeSeq=$("#showSelect").val();
	
	
	var url="<%=cp%>/reserv/seatList.action";
	var params="showTimeSeq="+showTimeSeq;
	
	$.ajax({
		type:"post"
		,url:url	
		,data:params
		,dataType:"json"
		,success:function(args){
			$("#seatSelect option").each(function() {	
				$("#seatSelect option:eq(1)").remove();	
			});
			
			 for(var idx=0; idx<args.data.length; idx++) {	
				 $("#seatSelect").append("<option value='"+args.data[idx].seatNumber+"'>"+args.data[idx].seatNumber+"</option>");	
			 }
		}
	    ,error:function(e) {
	    	alert(e.responseText);
	    }
	});
}


<%-- //확인 버튼을 누르면 실행될 함수
function result() {	
	var movieSeq=$("#movieSelect").val();
	var theaterSeq=$("theaterSelect").val();
	var reservDate=$("#reservDate").val();
	var showTimeSeq=$("#showSelect").val();
	var reservSeat=$("#seatSelect").val();
	
	if(movieSeq=="" || theaterSeq=="" || reservDate=="" || showTimeSeq=="" || reservSeat=="")
		return;
	
	var url="<%=cp%>/reserv/reservEnd.action";
	var params="movieSeq="+movieSeq+"&theaterSeq="+theaterSeq+"&reservDate="+reservDate+"&showTimeSeq="+showTimeSeq+"&reservSeat="reservSeat;
	
	$.ajax({
		type:"post"
		,url:url	
		,data:params
		,dataType:"json"
		,success:function(args){
			$("#reservEnd li").each(function() {	
				$("#reservEnd li:eq(1)").remove();	
			});
			
			 for(var idx=0; idx<args.data.length; idx++) {	
				 $("#reservEnd").append("<li>"+args.data[idx].movieName+"</li>");
				 $("#reservEnd").append("<li>"+args.data[idx].theaterName+"</li>");
				 $("#reservEnd").append("<li>"+args.data[idx].reservDate+"</li>");
				 $("#reservEnd").append("<li>"+args.data[idx].showTime+"</li>");
				 $("#reservEnd").append("<li>"+args.data[idx].reservSeat+"</li>");
			 }
		}
	    ,error:function(e) {
	    	alert(e.responseText);
	    }
	});
	
} --%>
</script>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	
	<div id="wrap">
		<div class="reserv" id="left">
		
			<div id="movie_select" class="reserv_menu">
				<div class="reserv_nav">
					<p class="reserv_nav_span">영화 선택</p>
				</div>
				<%-- <c:forEach var="showMovieV" items="${showMovie }">
					<li><a href="/reserv/reserv.do?movieSeq=${showMovieV.movieSeq}">${showMovieV.title }</a></li>
				</c:forEach> --%>
					<select id="movieSelect" onchange="movieList();">	
  						<option value="">::영화 선택::</option>
					</select>
			</div>
		
			<div id="theater_select" class="reserv_menu">
				<div class="reserv_nav">
					<p class="reserv_nav_span">영화관 선택</p>
				</div>
				<li><select id="theaterSelect">
  						<option value="">::영화관 선택::</option>
					</select>
				</li>
				
			</div>
		
			<div id="day_select" class="reserv_menu">
				<div class="reserv_nav">
					<p class="reserv_nav_span">날짜 선택</p>
				</div>
				<div>
						
				<table align="center">
					<tr align="center">
					<div id="dateSelect">
						<input name='reservDate' type='text' id='reservDate' size='8' maxlength='8' title='예매일자' onchange="dateList();">
					</div>
					</tr>
				</table>
					
				</div>
			</div>
			<div id="reserv_second_row">
				<div id="screen_select">
					<div class="reserv_nav">
						<p class="reserv_nav_span">상영관 / 시간 선택</p>
					</div>
					<li>
						<select id="showSelect" onchange="seatList();">
  							<option value="">::상영관 및 시간 선택::</option>
						</select>
					</li>
				</div>
				
				<div id="member_select">
					<div class="reserv_nav">
						<p class="reserv_nav_span">좌석선택</p>
					</div>
					<li>
						<select id="seatSelect">
  							<option value="">::좌석 선택::</option>
						</select>
					</li>
				</div>
				
				<input type="button" value="예매하기" onclick="result();">
				
			</div>
			
		</div>
		
		<div class="reserv" id="right">
			
				<div class="reserv_nav">
					<p class="reserv_nav_span">예매 정보</p>
				</div>
				
					
				
				
		</div>
		
		
		
		
	</div>
</body>
</html>
