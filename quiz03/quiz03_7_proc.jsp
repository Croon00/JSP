<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산 결과 확인</title>
</head>
<body>
<h1>계산 결과 확인</h1>
<%
		request.setCharacterEncoding("UTF-8");
		out.println(request.getParameter("num1").getClass() + "<br>");
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		out.println(num1 + " + " + num2 + " = " + (num1+num2) + "<br>");
		out.println(num1 + " - " + num2 + " = " + (num1-num2) + "<br>");
		out.println(num1 + " X " + num2 + " = " + (num1*num2) + "<br>");
		out.println(num1 + " / " + num2 + " = " + (Math.round((num1/(double)num2)*100))/100.0 + "<br>");
%>
</body>
</html>