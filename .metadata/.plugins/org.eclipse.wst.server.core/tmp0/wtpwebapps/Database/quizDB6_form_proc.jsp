<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
Connection conn = null;
// Statement stmt = null;
// ResultSet rs = null;

String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott";
String pass = "tiger";

// PreparedStatement 객체 생성 
PreparedStatement pstmt = null;
String sql = "INSERT INTO student  VALUES (SEQ5.NEXTVAL, ?, ?, ?, ?)";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 처리</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String st_name = request.getParameter("st_name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));

	try {
		// JDBC 드라이버 로드 
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 데이타베이스 연결 
		conn = DriverManager.getConnection(url, uid, pass);

		// PreparedStatement 객체 생성 
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, st_name);
		pstmt.setInt(2, kor);
		pstmt.setInt(3, eng);
		pstmt.setInt(4, math);

		pstmt.executeUpdate();

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if(pstmt != null) pstmt.close();
			if (conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	} //finally의 끝
	
	response.sendRedirect("quizDB6_all.jsp");
	%>
</body>
</html>