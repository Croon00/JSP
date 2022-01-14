<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레코드 삽입 폼</title>
<link rel="stylesheet" href="style1.css" />
</head>
<body>
	<h1>레코드 삽입 폼</h1>
	<form action="quiz05_proc.jsp" method="post">
		<table>
			<tr>
				<th>아이템 번호</th>
				<td><input type="number" name="ITEM_NO" required /></td>
			</tr>
			<tr>
				<th>아이템 코드</th>
				<td><input type="text" name="ITEM_COD" required /></td>
			</tr>
			<tr>
				<th>아이템 이름</th>
				<td><input type="text" name="ITEM_NAME" required /></td>
			</tr>
			<tr>
				<th>아이템 지역</th>
				<td><input type="text" name="ITEM_COUNTRY" required /></td>
			</tr>
			<tr>
				<th>아이템 가격</th>
				<td><input type="number" name="ITEM_PRICE" required /></td>
			</tr>
			<tr>
				<th>아이템 계정</th>
				<td><input type="number" name="ITEM_ACCOUNT" required /></td>
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