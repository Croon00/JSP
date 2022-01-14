<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>퀴즈4-01</title>
<style type="text/css">
h1 { text-align:center }
table { border-collapse: collapse; margin:20px auto }
td, th { text-align:center; border:1px solid black; padding:10px}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	int result = Integer.parseInt(request.getParameter("price"))*Integer.parseInt(request.getParameter("count"));
%>

<h1>주문 상품 정보 </h1>
<hr />
<table >
	<tr>
		<th>상품명</th>
		<td><%= request.getParameter("itemName") %></td>
	</tr>
	<tr>
		<th>결제 금액(가격 X 수량) : </th>
		<td><%=result  %></td>
	</tr>
	<tr>
		<td colspan="2">
		<a href="quiz4_01_form.jsp">입력 폼으로 이동하기</a></td>
	</tr>
</table>
</body>
</html>