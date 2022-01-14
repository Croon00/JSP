<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!-- 자바빈 생성 -->
<jsp:useBean id="userBean" class="myBean.UserBean" />
<!-- 멤버 변수 설정  -->
<jsp:setProperty name="userBean" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>퀴즈4-03  실행결과</title>
<style type="text/css">
h1 { text-align:center }
table { border-collapse: collapse; margin:20px auto }
td, th { text-align:center; border:1px solid black; padding:10px}
</style>
</head>
<body>
<h1>퀴즈4-03  실행결과</h1>
<table >
	<tr>
		<th>이름</th>
		<td><jsp:getProperty name="userBean" property="userName"/></td>
	</tr>
	<tr>
		<th>태어난 년도</th>
		<td><jsp:getProperty name="userBean" property="birthYear"/></td>
	</tr>
	<tr>
		<th>나이</th>
		<td>
		
		<jsp:getProperty name="userBean" property="age"/>
		
		</td>
	</tr>
	<tr>
		<th>성별</th>
		<td>
		 <jsp:getProperty name="userBean" property="gender"/></label>
		
		</td>
	</tr>
	<tr>
		<th>주소</th>
		<td><jsp:getProperty name="userBean" property="address"/></td>
	</tr>	
	<tr>
		<td colspan="2">
		<a href="quiz4_03_form.jsp">폼으로 다시 이동</a>
		</td>
	</tr>
</table>
</body>
</html>