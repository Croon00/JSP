<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라디오버튼 데이터 처리 : ex11_proc.jsp</title>
</head>
<body>
<%
	//데이터 값 전달 받아서 변수에 저장
	String bloodType = request.getParameter("bloodType");
%>
<h1>ex11_proc.jsp</h1>
<p>bloodType 값은? <%=bloodType %></p>

<!-- bloodType 데이터 값에 따라 각 페이지로 분기 -->
<!-- A => page="A.jsp" -->
<!-- B => page="B.jsp" -->
<!-- AB => page="AB.jsp" -->
<!-- O => page="O.jsp" -->

<!-- blood 데이터 값에 따라 각 페이지로 분기 -->
<jsp:forward page='<%= bloodType + ".jsp" %>'>
	<jsp:param name="bloodType" value="<%=bloodType%>"/>
</jsp:forward>

</body>
</html>