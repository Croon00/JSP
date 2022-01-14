<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 문법 - 테이블 활용</title>
<style type="text/css">
	.tableStyle { border-collapse:collapse;} /* 셀과 셀사이 병합 */
	.tableStyle td {border:1px solid darkgreen;
					text-align:center;
					background:lightblue;
					}
	
</style>
</head>
<body>
<h1>JSP문법 - 테이블 활용</h1>
<hr></hr>
<!-- table>(tr>td{data}*2)*2 -->
<table border = "1" cellpading="10" align="center">
	<tr>
		<td>data</td>
		<td>data</td>
	</tr>
	<tr>
		<td>data</td>
		<td>data</td>
	</tr>
	
</table>

<hr />
<table border = "1" cellpading = "10" align="center" class="tableStyle">
<%
	// 3행 3열
	int cnt = 1;
	for(int i = 1; i <= 4; i++){
		out.println("<tr>");
		for(int j = 1; j<=4; j++){
/* 			out.println("<td>" + j + "</td>");
 */			
 			out.println("<td>" + cnt + "</td>");
 			cnt ++;
		}
		out.println("<tr>");
	}
%>
</table>

</body>
</html>