<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>퀴즈4-03</title>
<style type="text/css">
h1 { text-align:center }
table { border-collapse: collapse; margin:20px auto }
td, th { text-align:center; border:1px solid black; padding:10px}
</style>
</head>
<body>
<h1>퀴즈4-01</h1>
<hr />
<form action="quiz4_03_proc.jsp" method="post">
<table >
	<tr>
		<th>이름</th>
		<td><input type="text" name="userName" required/></td>
	</tr>
	<tr>
		<th>태어난 년도</th>
		<td><input type="number" name="birthYear" required /></td>
	</tr>
	<tr>
		<th>성별</th>
		<td>
		 <label>남자 : <input type="radio" name="gender" value="남" /></label>
		 <label>여자 : <input type="radio" name="gender" value="여" /></label>		
		</td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="text" name="address" required /></td>
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