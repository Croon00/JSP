
<!-- page 지시지ㅏ -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Date 클래스를 임퍼트 -->
<%@ page import ="java.util.*" %>
<!-- 위에서 한 번에 정의해줘도 되고 위에 처럼 따로 import 지정해주어도 된다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day</title>
</head>
<body>
<h1>오늘 날짜 출력하기</h1>
<hr>
<!-- Date 클래스에서 날짜와 관련된 객체 생성 -->
<%
Date date = new Date();


%>
<p>오늘 날짜는
	<b><%= date.toLocaleString() %></b></p>
<!-- 사용자 정의를 사용할 수도 있고 있던거 사용도 가능 -->
<p>
<%= date.getYear() %> 년
<%= date.getMonth() %> 월
<%= date.getDate() %> 일
<%= date.getDay() %> 요일

<% int dayNum = date.getDay(); %>
</p>

</body>
</html>