<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex10_sub.jsp</title>
</head>
<body>
<%
	// 한글 인코딩
	request.setCharacterEncoding("UTF-8");
	// 입력필드를 이용하여 전달받은 값을 변수에 저장
	String userName = request.getParameter("userName");
	String userPwd = request.getParameter("userPwd");
%>

<h2>ex10_sub.jsp영역</h2>
<p> userName = <%= userName %></p>
<p> userPwd = <%= userPwd %></p>

<hr />
<p><a href="ex10_form.jsp">앞페이지로 다시 이동</a></p>
</body>
</html>