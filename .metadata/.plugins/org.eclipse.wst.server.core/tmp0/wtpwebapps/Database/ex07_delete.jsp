<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 관련 class import -->
<%@ page import="java.util.*, beans.*" %>
<!-- 자바빈 연결, 현재는 위에 beans 패키지 안에 RegisterMgr이 있다보니 할 필요가 없다. -->
<jsp:useBean id="regMgr" class="beans.RegisterMgr"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean을 사용한 데이터 삭제</title>

</head>
<body>

	
	
	<%
      // 하이퍼링크로 전달 받은 userId 값을  변수에 저장 
      String userId = request.getParameter("userId");
      // 자바빈 선언 
      RegisterBean bean = new RegisterBean();
      //  getRegister(userId) 메서드 호출 => 자바빈에 저장 
      regMgr.deleteRegister(userId);
      response.sendRedirect("ex07.jsp");
      %>
	
		

</body>
</html>