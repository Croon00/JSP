<!-- PreparedStatement -->
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%
// 한글 처리 인코딩 
request.setCharacterEncoding("utf-8");

// 수정 폼 문서를 이용해서 전달받은 값을 각각의 변수로 저장 
// 이 부분을 만들기 귀찮으면 이를 직접 pstmt에 값으로 넣어주면 된다. 그러면 너무 길어진다.
int empno = Integer.parseInt(request.getParameter("empno"));
String ename = request.getParameter("ename");
String job = request.getParameter("job");
int mgr = Integer.parseInt(request.getParameter("mgr"));
String hiredate = request.getParameter("hiredate");
int sal = Integer.parseInt(request.getParameter("sal"));
int comm = Integer.parseInt(request.getParameter("comm"));
int deptno = Integer.parseInt(request.getParameter("deptno"));

Connection conn = null;
//Statement stmt = null;
// ResultSet rs = null;

String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott";
String pass = "tiger";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 처리</title>
</head>
<body>
   <%
   try {
      // JDBC 드라이버 로드 
      Class.forName("oracle.jdbc.driver.OracleDriver");
      // 데이타베이스 연결 
      conn = DriverManager.getConnection(url, uid, pass);

      // PreparedStatement 객체 생성 
      PreparedStatement pstmt = null;
      // update 테이블명 set 필드명1=값1, 필드명2=값2 ... where 필드명=값;
      String sql = "UPDATE EMP02 SET ename = ? , job = ?, mgr = ?, hiredate= ?, sal = ?, comm=?,  deptno=? WHERE empno = ? ";
      pstmt = conn.prepareStatement(sql);
      //바인딩 인덱스 값 연결
      pstmt.setString(1, ename);
      pstmt.setString(2, job);
      pstmt.setInt(3, mgr);
      pstmt.setString(4, hiredate);
      pstmt.setInt(5, sal);
      pstmt.setInt(6, comm);
      pstmt.setInt(7, deptno);
      pstmt.setInt(8, empno);
      // DB 반영 
      pstmt.executeUpdate();
      response.sendRedirect("ex06_allRecord.jsp");

   } catch (Exception e) {
      e.printStackTrace();
   } finally {
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