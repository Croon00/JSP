<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error page 테스트</title>
</head>
<body>
<h1>Error Page 테스트</h1>
<hr />
<!-- 0으로 나눈 결과값 표시 -->
<%
	int x = 10;
	int y = 3;
%>
<!-- 첫 번째 에러에 대해서 먼저 발생한다. -->
<p><%= x %> / <%= y %> = <%= x/y %></p>
<hr />
<%
	int arr [] = {10, 40, 100};
%>
<p> 특정 배열갑 출력 : <%= arr[0] %></p>
<!-- 에러 발생 -->
<p> 특정 배열갑 출력 : <%= arr[10] %></p>


</body>
</html>