<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레코드 삽입 폼</title>
<link rel="stylesheet" href="style.css" />
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<h1>학생 추가 폼</h1>
<hr />
<form action="quizDB6_form_proc.jsp" method="post">
<table >
	<tr>
		<th>학생명</th>
		<td><input type="text" name="st_name" required class="form-control form-control"/></td>
	</tr>	
	<tr>
		<th>국어</th>
		<td><input type="number" name="kor" required class="form-control form-control"/></td>
	</tr>
	<tr>
		<th>영어</th>
		<td><input type="number" name="eng" required class="form-control form-control"/></td>
	</tr>	
		<tr>
		<th>수학</th>
		<td><input type="number" name="math" required class="form-control form-control"/></td>
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