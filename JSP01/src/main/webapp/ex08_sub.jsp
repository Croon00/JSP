<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ex08.jsp 에서 include로 삽입되는 페이지 -->
<!-- 	ex08_sub.jsp -->
<hr />
<% 
		// <jsp:param name="username"  value=:james />
		// 인용부호 조심
		// request.getParamter("<jsp:param>의 name명")
		// String 옆에 userName과 오른쪽의 userName은 다른것, userName은 jams를 가져온것
String userName = request.getParameter("userName");
%> 

<h2><%=userName %>님 오늘도 좋은 하루!!!</h2>
<h2><%=request.getParameter("userName") %></h2>
<h2><%=request.getParameter("userAge") %></h2>
<h2><%=request.getParameter("userHobby") %></h2>