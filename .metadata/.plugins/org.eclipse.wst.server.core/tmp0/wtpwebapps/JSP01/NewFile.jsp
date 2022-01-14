<!-- page 지시자  -->
<%@ page 
   language="java" 
   contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    info="page 지시자 테스트입니다." %>
<!-- Date 클래스 임포트   -->
<%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>import 테스트</title>
</head>
<body>
<h1>오늘 날짜 출력하기</h1>
<hr>
<!-- Date 클래스에서 날짜와 관련된 객체생성 -->
<%
   Date date = new Date();
%>
<p>오늘 날짜는 
   <b><%= date.toLocaleString() %></b>
</p>
<p>
   <%= date.getYear() %> 년 
   <%= date.getMonth() + 1 %> 월
   <%= date.getDate() %> 일 
   <!-- 0 ~ 6 : 일요일 ~ 토요일 -->
   <%= date.getDay() %> 요일 
   <%
      int dayNum = date.getDay(); 
      if (dayNum == 0) {
         out.println("일요일입니다.");
      } else if (dayNum == 1) {
         out.println("월요일입니다.");
      } else if (dayNum == 2) {
         out.println("화요일입니다.");
      } else if (dayNum == 3) {
         out.println("수요일입니다.");
      } else if (dayNum == 4) {
         out.println("목요일입니다.");
      } else if (dayNum == 5) {
         out.println("금요일입니다.");
      } else if (dayNum == 6) {
         out.println("토요일입니다.");
      }    
   %>
</p>

</body>
</html>














