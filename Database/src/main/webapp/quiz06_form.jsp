<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STUDENT 레코드 삽입 폼</title>
<link rel="stylesheet" href="style1.css" />
</head>
<body>
	<h1>STUDENT 레코드 삽입 폼</h1>
	<form action="quiz06_proc.jsp" method="post">
		<table>
			<tr>
				<th>사원번호</th>
				<td><input type="number" name="empno" required /></td>
			</tr>
			<tr>
				<th>사원이름</th>
				<td><input type="text" name="ename" required /></td>
			</tr>
			<tr>
				<th>급여</th>
				<td><input type="number" name="sal" required /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="전송" /> &nbsp; 
					<input type="reset" value="취소" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>