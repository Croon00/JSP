
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex09_form.jsp</title>
</head>
<body>
<h1>폼 입력필드를 이용한 데이타 전달</h1>
	<!-- get방식은 보안과 상관없을때 사용 post방식은 보안과 상관 있을때 사용 -->
<form action="ex09_proc.jsp" method="post">
   <label for="userName">이름</label>
   <input type="text"  name="userName" id="userName" />
   <br>
   <input type="submit" value="보내기" />
</form>

</body>
</html>