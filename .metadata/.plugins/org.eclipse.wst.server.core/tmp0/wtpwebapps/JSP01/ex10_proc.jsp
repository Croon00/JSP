<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 폼입력필드를 이용한 데이타 처리 ex10_proc.jsp</title>
</head>
<body>
<h1>폼 입력필드를 이용한 데이터 처리</h1>

<%
	// 한글 인코딩
	request.setCharacterEncoding("UTF-8");
	// 입력필드를 이용하여 전달받은 값을 변수에 저장
	String userName = request.getParameter("userName");
	String userPwd = request.getParameter("userPwd");

%>
<h2>userName ? <%= userName %></h2>
<h2>패스워드는 ? <%= userPwd %></h2>
<hr />
<p><a href="ex10_form.jsp">앞페이지로 이동</a></p>

<hr />
<!-- forward 액션태그 -->
<jsp:forward page="ex10_sub.jsp">
	<jsp:param name="userId" value="123"/>
	<jsp:param name="userId" value="12345"/>
</jsp:forward>
</body>
</html>