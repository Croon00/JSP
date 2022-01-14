<!-- 관련 클래스 임포트 -->
<%@ page import="java.util.*, beans.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!-- 자바빈 연결 -->
<jsp:useBean id="regMgr" class="beans.RegisterMgr" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean을 이용한 레코드 상세 페이지</title>
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
<link rel="stylesheet" href="style2.css" />

</head>
<body>
   <h1 class="text-center"> 레코드  상세 페이지 </h1>
   <table class="table table-bordered" style="width:80%; margin:20px auto;">
      <thead class="thead-dark">
         <!-- 제목행 출력  -->
         <tr>
            <th>아이디</th>
            <th>패스워드</th>
            <th>이름</th>
            <th>이메일</th>
            <th>연락처</th>
         </tr>
      </thead>
      <tbody>
      <%
      // 하이퍼링크로 전달 받은 userId 값을  변수에 저장 
      String userId = request.getParameter("userId");
      // 자바빈 선언 
      RegisterBean bean = new RegisterBean();
      //  getRegister(userId) 메서드 호출 => 자바빈에 저장 
      bean = regMgr.getRegister(userId);
      %>
      <!-- 테이블 행으로 출력 -->
      <tr>
         <td><%=bean.getUserId()%></td>
         <td><%=bean.getPwd()%></td>
         <td><%=bean.getName()%></td>
         <td><%=bean.getEmail()%></td>
         <td><%=bean.getPhone()%></td>
      </tr>

      </tbody>
   </table>

</body>
</html>
