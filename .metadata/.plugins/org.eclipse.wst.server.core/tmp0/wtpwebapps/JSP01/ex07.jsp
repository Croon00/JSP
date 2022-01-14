<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 테스트</title>
<!-- <style> type="text/css">
		* {text-align:center}
 	#top { background-color:blue;
		   padding:10px;
		   width:80%;
		   margin:10px auto;} 
	#bottom { 
		   background-color:brown;
		   color:white;
		   padding:10px;
		   width:80%;
		   margin:10px auto;
	} 

</style> -->
<!-- css 파일 연결 -->
<link rel="stylesheet" href="style07.css" /> 

</head>
<body>
<h1>include 테스트 메인</h1>
<!-- top.jsp 인클루드 삽입 -->
<%@ include file="top.jsp" %>
<h2>main 영역</h2>
<p>ex07.jsp 입니다.</p>
<div>
<img src="images/pink-lemonade.jpg" alt="pink-lemonade" />
</div>

<!-- bottom.jsp 인클루드 삽입 -->
<%@ include file="bottom.jsp" %>

</body>
</html>