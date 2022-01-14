<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 폼입력필드를 이용한 데이타 처리 ex09_proc.jsp</title>
</head>
<body>
<h1>폼 입력필드를 이용한 데이터 처리</h1>

<%
	// 한글 인코딩
	request.setCharacterEncoding("UTF-8");
	// 입력필드를 이용하여 전달받은 값을 변수에 저장
	String userName = request.getParameter("userName");
%>
<h2>userName ? <%= userName %></h2>
<hr />
<p><a href="ex09_form.jsp">앞페이지로 이동</a></p>


</body>
</html>