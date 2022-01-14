<!-- PreparedStatement -->
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	// 하이퍼링크로 전달한 값을 저장 
	int st_no = Integer.parseInt(request.getParameter("st_no"));
	String st_name = request.getParameter("st_name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));

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
<title>회원 수정 처리</title>
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
				String sql = "UPDATE student SET kor = ? , eng = ?, math = ?  WHERE st_no = ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, kor);
				pstmt.setInt(2, eng);
				pstmt.setInt(3, math);
				pstmt.setInt(4, st_no);
				
				pstmt.executeUpdate();
				response.sendRedirect("quizDB6_all.jsp");
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}//finally의 끝
		%>

</body>
</html>