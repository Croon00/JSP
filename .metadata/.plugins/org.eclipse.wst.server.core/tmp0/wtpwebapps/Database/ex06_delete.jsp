<!--  레코드 삭제  -->    
<!--  관련 API import -->
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%
// Connect 객체 생성 
Connection conn = null;

String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott"; // 데이타베이스 아이디 
String pass = "tiger"; // 데이타베이스 비밀번호 설정

PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = "";

// 하이퍼링크로 전달받은 값을 변수로 저장 
String empno = request.getParameter("empno");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레코드 삭제</title>
</head>
<body>
<%
      try {
         // JDBC 드라이버 로드 
         Class.forName("oracle.jdbc.driver.OracleDriver");

         // 데이타베이스 연결 
         conn = DriverManager.getConnection(url, uid, pass);
         // 레코드 삭제 sql
         sql = "DELETE FROM emp02 WHERE empno = ? ";
         pstmt = conn.prepareStatement(sql);
         pstmt.setInt(1, Integer.parseInt(empno));
         // DB 반영
         pstmt.executeUpdate();
         // 전체레코드 페이지로 이동 
         response.sendRedirect("ex06_allRecord.jsp");
         

      } catch (Exception e) {
         e.printStackTrace();

      } finally {
         // 리소스 반환 
         try {
            if (conn != null)
         conn.close();
         } catch (Exception e) {
            e.printStackTrace();
         }
      } //finally의 끝
      %>
</body>
</html>
