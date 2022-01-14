<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="product" class="product.quiz04_01"></jsp:useBean> 
<jsp:setProperty name ="product" property="*"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>주문 상품의 결제 정보</h1>
<p>상품명 : <jsp:getProperty name="product" property="name"/></p>
<p>가격 : <jsp:getProperty name="product" property="price"/></p>
<p>수량 : <jsp:getProperty name="product" property="amount"/></p>
</body>
</html>