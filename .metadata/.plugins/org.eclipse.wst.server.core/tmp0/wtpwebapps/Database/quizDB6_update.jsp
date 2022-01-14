<!-- PreparedStatement -->
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	// 하이퍼링크로 전달한 값을 저장 
	int st_no = Integer.parseInt(request.getParameter("st_no"));

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "scott";
	String pass = "tiger";

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정 보기</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
	<h1><%=st_no %> 수정 </h1>
	<form action="quizDB6_update_proc.jsp" method="post">
	<table>
	<%
			try {
				// JDBC 드라이버 로드 
				Class.forName("oracle.jdbc.driver.OracleDriver");
				// 데이타베이스 연결 
				conn = DriverManager.getConnection(url, uid, pass);
				
				// PreparedStatement 객체 생성 
				PreparedStatement pstmt = null;
				String sql = "select * from student where st_no= ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, st_no);
				rs = pstmt.executeQuery();

				if (rs.next()) {
					out.println("<tr>");
					out.println("<th>학번</th>");
					// <input type='text' value=empno name='empno' readonly />
					out.println("<td> <input type='number' value='" + rs.getString("st_no") + "' name='st_no' readonly /></td>");
					out.println("</tr>");
					out.println("<tr>");
					out.println("<th>학생명</th>");
					out.println("<td><input type='text' value='" + rs.getString("st_name") + "' name='st_name' readonly /></td>");
					out.println("</tr>");

					out.println("<tr>");
					out.println("<th>국어</th>");
					out.println("<td><input type='number' value='" + rs.getInt("kor") + "' name='kor' /></td>");
					out.println("</tr>");
					out.println("<tr>");

					out.println("<tr>");
					out.println("<th>영어</th>");
					out.println("<td><input type='number' value='" + rs.getInt("eng") + "' name='eng' /></td>");
					out.println("</tr>");
					out.println("<tr>");
					out.println("<th>수학</th>");
					out.println("<td><input type='number' value='" + rs.getInt("math") + "' name='math' /></td>");
					out.println("</tr>");
					out.println("<tr><td colspan='2'><input type='submit' value='전송' /> &nbsp;<a href='quizDB6_all.jsp' class='btn2'>전체 회원 목록</a></td></tr>");
					
				}//if의 끝
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null)
						rs.close();
					if (stmt != null)
						stmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}//finally의 끝
		%>
		</table>
		</form>
</body>
</html>