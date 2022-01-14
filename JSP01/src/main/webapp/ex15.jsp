<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>퀴즈</title>
</head>
<body>
<h1>퀴즈</h1>
<!-- response.sendRedirect() 이용 -->
<!-- 텍스트필드값이 정답이면 yes.jsp , 오답이면 no.jsp로 이동  -->
<form action="ex15_proc.jsp" method="post">
	<p> 영국의 수도는? <input type="text" name="ans"/></p>
	<input type="submit" value="정답 확인" />
</form>
</body>
</html>