<!--  관련 API import -->
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// 한글 인코딩 
request.setCharacterEncoding("utf-8");

Connection conn = null;
String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott"; // 데이타베이스 아이디 
String pass = "tiger"; // 데이타베이스 비밀번호 설정

PreparedStatement pstmt = null;

//실행할 sql 구문을 위한 변수 설정 
String sql = "";

try {
	// JDBC 드라이버 로드 
	Class.forName("oracle.jdbc.driver.OracleDriver");

	// 데이타베이스 연결 
	conn = DriverManager.getConnection(url, uid, pass);

	// ? 가 있는 SQL  
	sql = "insert into emp01 values (?, ? , ?) ";
	
	// prepareStatement() 메서드를 이용한 sql 명령 연결
	pstmt = conn.prepareStatement(sql);
	
	// 바인딩 인덱스를 이용한 값 전달 : 인덱스는 1부터 시작 
	pstmt.setInt(1, Integer.parseInt(request.getParameter("empno")));
	pstmt.setString(2, request.getParameter("ename"));
	pstmt.setInt(3, Integer.parseInt(request.getParameter("sal")));
	
	// DB 반영 
	pstmt.executeUpdate();
	

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
  

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 처리</title>
</head>
<body>
	<h1>레코드 추가 성공</h1>
	<p><a href="ex05.jsp">전체 레코드 목록</a></p>
</body>
</html>