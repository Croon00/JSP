<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 자바빈 연동  -->
<jsp:useBean id="test2" class="mybean.Rect" ></jsp:useBean>    
<!-- 자바빈에 값 지정 -->
<jsp:setProperty name="test2" property="name" value="Rect_A" />
<jsp:setProperty name="test2" property="color" value="Blue" />
<jsp:setProperty name="test2" property="width" value="50" />
<jsp:setProperty name="test2" property="height" value="70" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rect 자바빈 연동</title>
</head>
<body>
<h1>Rect 자바빈 연동</h1>
<hr />
<p>사각형의 이름 : <jsp:getProperty property="name" name="test2"/></p>
<p>사각형의 색상 : <jsp:getProperty property="color" name="test2"/></p>
<p>사각형의 가로 : <jsp:getProperty property="width" name="test2"/></p>
<p>사각형의 세로 : <jsp:getProperty property="height" name="test2"/></p>
</body>
</html>