<!--  PreparedStatement을 이용한 sql 수행  -->

<!--  관련 API import -->
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!-- sql 구문 실행 + 결과 레코드 반환 -->
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<!-- (0) 관련 API 임포트  -->
<%@page import="java.sql.PreparedStatement"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// Connect 객체 생성 
Connection conn = null;

String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott"; // 데이타베이스 아이디 
String pass = "tiger"; // 데이타베이스 비밀번호 설정

// Statement, ResultSet 객체생성
// Statement stmt = null;

// (1) 객체생성 => 참조변수 설정 
PreparedStatement pstmt = null;


ResultSet rs = null;
// 실행할 sql 구문을 위한 변수 설정 
String sql = "";

// 하이퍼링크로 전달받은 값을 변수로 저장 
int ST_NO = Integer.parseInt(request.getParameter("ST_NO"));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STUDENT 테이블의 상세페이지</title>
<!-- css 파일 연결 -->
<link rel="stylesheet" href="style1.css" />
</head>
<body>
	<h1>STUDENT 테이블의 상세 페이지</h1>
	<hr>
	<table>
		<%
		try {
			// JDBC 드라이버 로드 
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 데이타베이스 연결 
			conn = DriverManager.getConnection(url, uid, pass);
	
			// (2) ? 가 있는 SQL 구문 선언 
			// sql 명령어 수행후 결과값을 변수에 받을 수 있도록 준비
			// SELECT * FROM EMP where empno=7369;
			sql = "select * from STUDENT where ST_NO= ? ";
			
			// (3) prepareStatement() 메서드를 이용한 sql 명령 연결
			pstmt = conn.prepareStatement(sql);
			
			// (4) 바인딩 인덱스를 이용한 값 전달 : 인덱스는 1부터 시작 
			pstmt.setInt(1, ST_NO);
				
			// (5) sql 수행 최종 결과 ResultSet의 참조변수에 전달
			rs = pstmt.executeQuery();

			// 행단위로 출력 next()
			// 레코드값의 데이타형에 맞추어서 메서드 사용
			// getInt(), getString(), getDate() ...
			// () 안은 컬럼명이나 인덱스 가능 
			if (rs.next()) {
				out.println("<tr>");
				out.println("<th>TITLE</th>");
				out.println("<td>INFO</td>");
				out.println("</tr>");
				
				out.println("<tr>");
				out.println("<th>ST_NO</th>");
				out.println("<td>" + rs.getInt("ST_NO") + "</td>");
				out.println("</tr>");
				
				out.println("<tr>");
				out.println("<th>ST_NAME</th>");
				out.println("<td>" + rs.getString("ST_NAME") + "</td>");
				out.println("</tr>");
				
				out.println("<tr>");
				out.println("<th>KOR</th>");
				out.println("<td>" + rs.getInt("KOR") + "</td>");
				out.println("</tr>");
				
				out.println("<tr>");
				out.println("<th>ENG</th>");
				out.println("<td>" + rs.getInt("ENG") + "</td>");
				out.println("</tr>");
				
				out.println("<tr>");
				out.println("<th>MATH</th>");
				out.println("<td>" + rs.getInt("MATH") + "</td>");
				out.println("</tr>");
				
				out.println("<tr>");
				out.println("<th>ITEM_ACCOUNT</th>");
				out.println("<td>" + rs.getInt("ITEM_ACCOUNT") + "</td>");
				out.println("</tr>");
				
			

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



</body>
</html>
