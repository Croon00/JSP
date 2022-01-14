<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%String name = request.getParameter("name");
		String memo = request.getParameter("memo"); %>

<table border="1" align-center="" padding="10px">
	<tr>
		<td><%=name %></td>
		<td><%=memo %></td>
	</tr>
	<tr>
		<td>입니다</td>
		<td>입니다.</td>
	</tr>
</table>
</body>
</html>