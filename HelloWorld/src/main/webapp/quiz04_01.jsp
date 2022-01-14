<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 상품 폼</title>
</head>
<body>
<h1>주문 상품 폼</h1>
<form action="quiz04_01_proc.jsp" method="post">
	<p>상품명:<input type="text" name="name"/></p>
	<p>가격:<input type="text" name="price"/></p>
	<p>수량:<input type="text" name="amount"/></p>
	<p><input type="submit" value="전송" /></p>

</form>

</body>
</html>