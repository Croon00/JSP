<!-- 레코드 수정 페이지  -->
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

Statement stmt = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = "";

// 수정 버튼에서 전달받은 값을 변수로 저장 
String empno = request.getParameter("empno");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레코드 수정 폼</title>
<link rel="stylesheet" href="style1.css" />
</head>
<body>
   <h1>레코드 수정 폼</h1>
   <form action="ex06_update_proc.jsp" method="post">
      <table>
         <%
         try {
            // JDBC 드라이버 로드 
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // 데이타베이스 연결 
            conn = DriverManager.getConnection(url, uid, pass);

            // sql 명령어 준비 
            stmt = conn.createStatement();

            // sql 명령어 수행후 결과값을 변수에 받을 수 있도록 준비
            // SELECT * FROM EMP where empno=7369;
            sql = "SELECT * FROM EMP02 WHERE empno = " + empno;
            // 콘솔창에 sql 출력 
            application.log(sql);

            rs = stmt.executeQuery(sql);

            // 행단위로 출력 next()
            // 레코드값의 데이타형에 맞추어서 메서드 사용
            // getInt(), getString(), getDate() ...
            // () 안은 컬럼명이나 인덱스 가능 
            if (rs.next()) {
               out.println("<tr>");
               out.println("<th>EMPNO</th>");
               out.println("<td><input type='number' value='" + rs.getInt("empno") + "' name='empno' readonly /></td>");
               out.println("</tr>");

               out.println("<tr>");
               out.println("<th>ENAME</th>");
               out.println("<td><input type='text' value='" + rs.getString("ename") + "' name='ename' /></td>");
               out.println("</tr>");
               
               out.println("<tr>");
               out.println("<th>JOB</th>");
               out.println("<td><input type='text' value='" + rs.getString("job") + "' name='job' /></td>");
               out.println("</tr>");
               
               out.println("<tr>");
               out.println("<th>MGR</th>");
               out.println("<td><input type='number' value='" + rs.getInt("mgr") + "' name='mgr' /></td>");
               out.println("</tr>");
               
               out.println("<tr>");
               out.println("<th>HIREDATE</th>");
               out.println("<td><input type='date' value='" + rs.getDate("hiredate") + "' name='hiredate' /></td>");
               out.println("</tr>");
               
               out.println("<tr>");
               out.println("<th>SAL</th>");
               out.println("<td><input type='number' value='" + rs.getInt("sal") + "' name='sal' /></td>");
               out.println("</tr>");
               
               out.println("<tr>");
               out.println("<th>COMM</th>");
               out.println("<td><input type='number' value='" + rs.getInt("comm") + "' name='comm' /></td>");
               out.println("</tr>");
               
               out.println("<tr>");
               out.println("<th>DEPTNO</th>");
               out.println("<td><input type='number' value='" + rs.getInt("deptno") + "' name='deptno' /></td>");
               out.println("</tr>");
               
               out.println("<tr><td colspan='2'><input type='submit' value='전송' /> &nbsp;<a href='ex06_allRecord.jsp' class='btn2'>전체 회원 목록</a></td></tr>");

            } //if의 끝

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
      </table>
   </form>
</body>
</html>