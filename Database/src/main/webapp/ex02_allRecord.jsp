<!-- 관련 API IMPORT -->

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!-- sql구문 실행 + 결과 레코드 반환 -->
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//Connect 객체 생성
	// Statement, Resultset 객체 생성
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	// 실행할 sql 구문을 위한 변수 설정
	String sql = "";

	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "scott"; // 데이터베이스 아이디
	String pass = "tiger";	// 데이터베이스 비밀번호 설정




%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp 테이블의 전체 레코드 출력</title>
<!-- css파일 연결 -->
<link rel="stylesheet" href="style1.css" />
</head>
<body>
<h1>emp 테이블의 전체 레코드 출력</h1>
<hr />
<table>
<tr>
		<th>EMPNO</th>
		<th>ENAME</th>
		<th>JOB</th>
		<th>MGR</th>
		<th>HIREDATE</th>
		<th>SAL</th>
		<th>COMM </th>
		<th>DEPTNO </th>		
	</tr>
<%
      try {
         // JDBC 드라이버 로드 
         Class.forName("oracle.jdbc.driver.OracleDriver");

         // 데이타베이스 연결 
         conn = DriverManager.getConnection(url, uid, pass);

         // sql 명령어 준비 
         stmt = conn.createStatement();
         
         // sql 명령어 수행후 결과값을 변수에 받을 수 있도록 준비
         sql = "SELECT * FROM EMP ORDER BY EMPNO"; 
         rs = stmt.executeQuery(sql);

         // 행단위로 출력 next()
         // resultSet의 참조변수 rs로 레코드값의 데이터형에 맞추어서 넣어주어야 한다.
         // getInt(), getString(), getDate() ...
         // () 안은 컬럼명이나 인덱스 가능 
         while (rs.next()) {
            out.println("<tr>");
            out.println("<td>" + rs.getInt("empno") + "</td>");
            out.println("<td>" + rs.getString("ename") + "</td>");
            out.println("<td>" + rs.getString("job") + "</td>");
            out.println("<td>" + rs.getInt("mgr") + "</td>");
            out.println("<td>" + rs.getDate("hiredate") + "</td>");
            out.println("<td>" + rs.getInt("sal") + "</td>");
            out.println("<td>" + rs.getInt("comm") + "</td>");
            out.println("<td>" + rs.getInt("deptno") + "</td>");
            out.println("</tr>");
         } //while의 끝

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
</body>
</html>