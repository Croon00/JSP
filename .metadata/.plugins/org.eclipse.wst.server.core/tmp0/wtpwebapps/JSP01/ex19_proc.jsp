<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    // 한글 인코딩 
    request.setCharacterEncoding("utf-8");

%>    

<!-- 자바빈 연동  -->
<jsp:useBean id="member" class="mybean.MemberBean" ></jsp:useBean>    
<!-- 자바빈의 모든 속성 즉 변수 설정 : 
입력폼에서 값이 자동으로 전달된다. *는 전체 멤버변수  -->
<jsp:setProperty name="member" property="*" />

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력</title>
</head>
<body>
<!-- table[border=1 align=center cellpadding=10]>(tr>td*2)*6 -->
<table border="1" align="center" cellpadding="10">
   <tr>
      <th colspan="2">
      <jsp:getProperty name="member" property="name" />
      회원님이 작성하신 내용입니다. 확인해주세요      
      </th>
      <!-- <td></td> -->
   </tr>
   <tr>
      <td>아이디</td>
      <td><jsp:getProperty name="member" property="id" /></td>
   </tr>
   <tr>
      <td>패스워드</td>
      <td><jsp:getProperty name="member" property="pwd" /></td>
   </tr>
   <tr>
      <td>이름</td>
      <td><jsp:getProperty name="member" property="name" /></td>
   </tr>
   <tr>
      <td>생년월일</td>
      <td><jsp:getProperty name="member" property="birthday" /></td>
   </tr>
   <tr>
      <td>이메일</td>
      <td><jsp:getProperty name="member" property="email" /></td>
   </tr>
</table>
</body>
</html>