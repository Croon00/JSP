<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- (1)자바 빈 생성 
	id는 식별자, class은 자바빈의 파일경로
 -->
<jsp:useBean id="test" class="mybean.SimpleBean" scope="page" />
<!-- (2) 값 지정  
  name 값은 자바빈의 id, property는 변수 value는 데이타값
-->
<jsp:setProperty name="test" property="message" value="Hello world" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈을 이용한 데이타 연동 테스트</title>
</head>
<body>
<h1>message 값은? </h1>
<!-- (3) 값 출력 -->
<p>
	<jsp:getProperty property="message" name="test"/>
</p>
</body>
</html>



