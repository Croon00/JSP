<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 예외처리 페이지 설정 -->
<%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외처리 페이지</title>
</head>
<body>
<h1>Error 페이지</h1>
<!-- exception.getMessage() : 에러코드를 문자열로 출력 -->
<p>에러 발생
<b>	<%= exception.getMessage() %></b>
</p>
</body>
</html>