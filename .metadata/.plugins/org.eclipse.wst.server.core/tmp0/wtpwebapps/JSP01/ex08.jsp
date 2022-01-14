<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그 -include</title>
</head>
<body>
<h1>액션 태그 테스트</h1>
<hr />

<% String userName= "Maria"; %>
<h2>userName : <%=userName %></h2>

<!-- include 액션 태그 -->
<!-- ex08_sub.jsp 파일에 변수와 값 전달 -->
<jsp:include page="ex08_sub.jsp">
	<jsp:param name="userName" value="James"/>
	<jsp:param name="userAge" value="25"/>
	<jsp:param name="userHobby" value="game"/>
</jsp:include>

</body>
</html>