<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 관련 class import -->
<%@ page import="java.util.*, beans.*" %>
<!-- 자바빈 연결, 현재는 위에 beans 패키지 안에 RegisterMgr이 있다보니 할 필요가 없다. -->
<jsp:useBean id="regMgr" class="beans.RegisterMgr"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean을 사용한 데이터베이스 연동</title>
<!-- 부트스트랩 연결 -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- 사용자 정의 css -->
<link rel="stylesheet" href="style3.css" type="text/css"/>
</head>
<body>
<h1 class="text-center">전체 레코드 조회</h1>
<hr />
	
	<table  class="table table-dark table-striped" style="width.80%; margin:20px auto">
		<thead>
		<tr><td colspan="5" style="text-align:right"><a href="ex07_form.jsp" class="btn3 btn-secondary">레코드 추가</a></td></tr>
		<tr>
			<th class="text-center">아이디</th>
			<th class="text-center">이름</th>
			<th class="text-center">더 보기</th>
			<th class="text-center">삭제</th>
			<th class="text-center">수정</th>
		</tr>
		</thead>
		<tbody>
		<%
		// DB 테이블의 전체레코드를 벡터에 저장
		// 벡터 참조 변수에 getRegisterList() 호출해서 저장
		// Vector<자바빈클래스명> 참조변수 = DAO식별자.메서드명()
		Vector<RegisterBean> vlist = regMgr.getRegisterList();
		// 레코드 총 갯수
		int counter = vlist.size();
		// RegisterBean 자바빈 각 레코드 반환
		for (int i = 0; i < vlist.size(); i++) {
			// RegisterBean bean = (RegisterBean)vlist.elementAt(i);
			RegisterBean bean = vlist.get(i);
		%>
		<!-- 테이블 행으로 html방식으로 출력 -->
		<!-- 전에 배운 방법으로 try catch 구문을 가져와서 out.println안에서 th, tr을 사용하여 rs.get을 이용하여 받을 수도 있다. -->
		<tr>
			<td class="text-center"><%=bean.getUserId()%></td>
			<td class="text-center"><%=bean.getName()%></td>
			<!-- ex08_info.jsp?userId=bean.getUserId() -->
			<td class="text-center"><a href="ex07_info.jsp?userId=<%=bean.getUserId()%> "class="btn btn-dark">더 보기</a></td>
			<td class="text-center"><a href="ex07_delete.jsp?userId=<%=bean.getUserId()%> "class="btn2 btn-dark">삭제</a></td>
		</tr>
		<%
		} // for ending
		%>
		</tbody>
	</table>
	<p class="text-center">total records :	<%= counter %>
</body>
</html>