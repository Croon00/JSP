<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 처리 및 결과 확인</title>
</head>
<body>
<h1>결과 확인</h1>
<%
	out.println("num1 => " + request.getParameter("num1"));
	//java.lang.String
	out.println(request.getParameter("num1").getClass()); 
	out.println(request.getParameter("num1") + request.getParameter("num2"));
	
	// 정수형 변수로 지정하기 
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));

	// 사칙연산 결과 출력하기 
	out.println("<p>" + num1 + " + " + num2 +  " = " + (num1+num2) + "</p>");
	out.println("<p>" + num1 + " - " + num2 +  " = " + (num1-num2) + "</p>");
	out.println("<p>" + num1 + " X " + num2 +  " = " + (num1*num2) + "</p>");
	out.println("<p>" + num1 + " / " + num2 +  " = " + ((Math.round((num1/(double)num2)*100)/100.0)) 
			+ "</p>");
	out.println("<p><a href='ex13.jsp'>다시하기</a></p>");
	
%>
</body>
</html>








