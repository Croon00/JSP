<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체</title>
</head>
<body>
<h1>ex14.jsp</h1>
<%
	// 로그 출력하기 
	application.log("ex14_sub.jsp 이동");
	// 특정 주소로 이동 : 액션태그의 forward 와 기능이 같음 
	response.sendRedirect("ex14_sub.jsp");
%>
</body>
</html>