<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 객체</title>
</head>
<body>
<h1>폼을 이용한 데이타 전달</h1>
<form action="ex13_proc.jsp" method="post">
	<p>숫자 1 => <input type="text" name="num1"/> </p>
	<p>숫자 2 => <input type="text" name="num2"/> </p>
	<p><input type="submit" value="전송" /></p>
</form>

</body>
</html>