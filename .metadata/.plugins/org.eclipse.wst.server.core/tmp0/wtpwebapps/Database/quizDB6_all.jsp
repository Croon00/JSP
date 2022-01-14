<!-- 

DROP TABLE STUDENT; 

create table STUDENT
(
ST_NO    NUMBER PRIMARY KEY,
ST_NAME  NVARCHAR2(7),
KOR  NUMBER,
ENG  NUMBER,
MATH  NUMBER
);


CREATE SEQUENCE SEQ77
  INCREMENT BY 1 START WITH 1
  MAXVALUE 5000 MINVALUE 1
  NOCYCLE CACHE 2 ;

INSERT INTO STUDENT  VALUES (SEQ77.NEXTVAL, '홍진호',  55 , 67 , 89 ); 
INSERT INTO STUDENT  VALUES (SEQ77.NEXTVAL, '심순애',  88 , 99 , 67 ); 
INSERT INTO STUDENT  VALUES (SEQ77.NEXTVAL, '고길동',  88 , 89 , 67 ); 

SELECT * FROM STUDENT;


 -->



<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%! 
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "scott";
	String pass = "tiger";
	String sql = "select * from student";
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 레코드 목록 표시 </title>
<!-- <link rel="stylesheet" href="style.css" /> -->

<!-- 부트스트랩 연결 -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
	<h1 class="text-center">STUDENT 테이블</h1>
	<table class="table">
	<tr><td colspan="5" style="text-align:right"><a href="quizDB6_form.jsp" class="btn btn-secondary">학생 추가</a></td></tr>
	<%
			try {
				// JDBC 드라이버 로드 
				Class.forName("oracle.jdbc.driver.OracleDriver");
				// 데이타베이스 연결 
				conn = DriverManager.getConnection(url, uid, pass);
				// sql 명령어 준비 
				stmt = conn.createStatement();
				// sql 명령어 수행후 결과값을 변수에 받을 수 있도록 준비
				rs = stmt.executeQuery(sql);

				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>" + rs.getInt("ST_NO") + "</td>");
					out.println("<td>" + rs.getString("ST_NAME") + "</td>");
					out.println("<td> <a class='btn btn-success' href='quizDB6_info.jsp?st_no=" + rs.getInt("ST_NO") + "'>더보기</a></td>");
					out.println("<td> <a class='btn btn-warning' href='quizDB6_delete.jsp?st_no=" + rs.getInt("ST_NO") + "'>삭제</a></td>");
					out.println("<td> <a class='btn btn-danger' href='quizDB6_update.jsp?st_no=" + rs.getInt("ST_NO") + "'>수정</a></td>");
					out.println("</tr>");
				}//while의 끝
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