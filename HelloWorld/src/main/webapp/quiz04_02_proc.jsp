<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <jsp:useBean id="favorite" class="product.quiz04_02"></jsp:useBean> 
<jsp:setProperty name ="favorite" property="*"/>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좋아하는 것들</title>
</head>	
<body>
<h1>좋아하는 것들</h1>
<p>당신이 좋아하는 색깔은 : <jsp:getProperty name="favorite" property="color"/></p>
<p>당신이 좋아하는 꽃은 : <jsp:getProperty name="favorite" property="flower"/></p>
<p>당신이 좋아하는 음악은 : <jsp:getProperty name="favorite" property="music"/></p>
</body>
</html>