<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex12_proc.jsp 결과 페이지</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String userName = request.getParameter("userName");
	String userNumber = request.getParameter("userNumber");
	String userGender = request.getParameter("userGender");
	String userMajor = request.getParameter("userName");

%>
<h1>회원 정보</h1>
<!-- table[border=1 align=center padding=10]>(tr>td*2)*4 -->
<table border="1" align="center" padding="10">
	<tr>
		<td>성명</td>
		<td><%= userName%></td>
	</tr>
	<tr>
		<td>학번</td>
		<td><%= userNumber%></td>
	</tr>
	<tr>
		<td>성별</td>
		<td><%= userGender%></td>
	</tr>
	<tr>
		<td>전공</td>
		<td><%= userMajor %></td>
	</tr>
</table>
</body>
</html>