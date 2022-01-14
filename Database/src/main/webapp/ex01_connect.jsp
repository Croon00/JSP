<!-- 관련 API IMPORT -->

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//Connect 객체 생성
	Connection conn = null;
	

	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "scott"; // 데이터베이스 아이디
	String pass = "tiger";	// 데이터베이스 비밀번호 설정
	
	try {
		// JDBC 드라이버 로드 , 고정 값
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 데이타베이스 연결 아까 넣어준 conn에 직접적인 매니저가 됨
		conn = DriverManager.getConnection(url, uid, pass);
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
	}//finally의 끝




%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오라클 데이터베이스</title>
</head>
<body>
<h1>데이터베이스 연결 확인</h1>

</body>
</html>