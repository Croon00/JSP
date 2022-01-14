<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>별자리 처리</title>
</head>
<body>
<%
 	String starType = request.getParameter("starType");
 %>
<jsp:forward page='<%=starType + ".jsp"%>' />


</body>
</html>