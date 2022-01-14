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
	String st_no = request.getParameter("st_no");

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
<title>회원 상세 보기</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
	<h1 align="center"><%=st_no %> 테이블</h1>
	<table width="400">
	<%
			try {
				// JDBC 드라이버 로드 
				Class.forName("oracle.jdbc.driver.OracleDriver");
				// 데이타베이스 연결 
				conn = DriverManager.getConnection(url, uid, pass);
				
				// PreparedStatement 객체 생성 
				PreparedStatement pstmt = null;
				String sql = "select * from student where st_no = ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(st_no));
				rs = pstmt.executeQuery();
				// application.log(sql);
				
				// 행단위로 출력 next()
				// getInt(), getString(), getDate() ...
				// () 안은 컬럼명이나 인덱스 가능 
				if (rs.next()) {
					out.println("<tr>");
					out.println("<th>학번</th>");
					out.println("<td>" + rs.getInt("st_no") + "</td>");
					out.println("</tr>");
					
					out.println("<tr>");
					out.println("<th>이름</th>");
					out.println("<td>" + rs.getString("st_name") + "</td>");
					out.println("</tr>");
					
					out.println("<tr>");
					out.println("<th>국어</th>");
					out.println("<td>" + rs.getString("kor") + "</td>");
					out.println("</tr>");
					
					out.println("<tr>");
					out.println("<th>영어</th>");
					out.println("<td>" + rs.getInt("eng") + "</td>");
					out.println("</tr>");
					
					out.println("<tr>");
					out.println("<th>수학</th>");
					out.println("<td>" + rs.getInt("math") + "</td>");
					out.println("</tr>");
					
					
					
					
					int tot = rs.getInt("kor") + rs.getInt("math") + rs.getInt("eng");
					double avg = Math.round((tot/3.0)*100)/100.0;
					
					out.println("<tr>");
					out.println("<th>총점</th>");
					out.println("<td>" + tot + "</td>");
					out.println("</tr>");
					out.println("<tr>");
					out.println("<th>평균</th>");
					out.println("<td>" + avg + "</td>");
					out.println("</tr>");
					
					char grade;
					if (avg>=90) grade = 'A';
					else if (avg>=80) grade = 'B';		
					else if (avg>=70) grade = 'C';
					else if (avg>=60) grade = 'D';
					else grade = 'F';
					
					out.println("<tr>");
					out.println("<th>학점</th>");
					out.println("<td>" + grade + "</td>");
					out.println("</tr>");
					out.println("<tr><th colspan='2'><a class='btn' href='quizDB6_all.jsp'>전체 회원 목록</a></td></tr>");
					
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
</body>
</html>