<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>퀴즈 처리</title>
</head>
<body>
<%
 // 한글 인코딩 
 request.setCharacterEncoding("utf-8");

 // 값 전달. trim() 좌우공백 삭제  
 String ans = request.getParameter("ans").trim();
 
 // ans가 정답이면 yes.jsp로 이동
 // ans가 오답이면 no.jsp로 이동
 if (ans.equals("런던")) {
	 response.sendRedirect("yes.jsp");
 } else {
	 response.sendRedirect("no.jsp");
 }
%>

</body>
</html>


