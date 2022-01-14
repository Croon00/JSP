<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Date date = new Date(); %>
<p>오늘은 
		<%=date.getMonth()%>월
		<%=date.getDate()%>일
		<%=date.getDay()%>요일입니다. </p>

</body>
</html>