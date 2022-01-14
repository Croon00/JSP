<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 날짜 관련 API 임포트 -->
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>퀴즈3-2</title>
<style type="text/css">
	p {text-align:center; color:red; font-weight:bold}
</style>
</head>
<body>
	<!-- 
02. Date 클래스를 import 시키고  
   오늘은  ? 월  ?일   ? 요일이 출력되도록 하여라. 
 -->

<% 
 
 Date date = new Date();

out.println("<p>오늘은 " + (date.getMonth()+1) + " 월 " + date.getDate() + " 일"); 
 
// getDay() 메서드를 이용하여 요일 찍기 
int day_num = date.getDay();


switch(day_num){
case 0 :
	out.println("일요일  </p>");
	break;
case 1 :
	out.println("월요일  </p>");
	break;	
case 2 :
	out.println("화요일  </p>");
	break;	
case 3 :
	out.println("수요일  </p>");
	break;	
case 4 :
	out.println("목요일  </p>");
	break;	
case 5 :
	out.println("금요일  </p>");
	break;	
case 6 :
	out.println("토요일  </p>");
	break;
default:
	break;
}

%>



</body>
</html>