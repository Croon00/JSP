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
<h1>퀴즈4-01</h1>
<hr />
<form action="quiz4_01_proc.jsp" method="post">
<table >
	<tr>
		<th>상품명</th>
		<td><input type="text" name="itemName" required/></td>
	</tr>
	<tr>
		<th>가격</th>
		<!-- type 값을 number로 지정하면 입력값을 숫자로 제한 
		 required 필수필드 
		-->
		<td><input type="number" name="price" required /></td>
	</tr>
	<tr>
		<th>수량</th>
		<td><input type="number" name="count" required /></td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="submit" value="전송" /> &nbsp;
		<input type="reset" value="취소" /></td>
	</tr>
</table>
</form>
</body>
</html>