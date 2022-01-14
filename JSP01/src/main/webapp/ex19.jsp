<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입폼</title>
<style type="text/css">
		h1 {text-align:center}
		form { wdith:300px; margin 20px auto; border:2px solid black, padding:10px}

</style>
</head>
<body>
	<h1>회원 가입</h1>
	<form action="ex19_proc.jsp" method="post">
	<p>아이디 <input type="text" name="id" ></p>
	<p>비밀번호 <input type="password" name="pwd" ></p>
	<p>이름 <input type="text"  name="name" ></p>
	<p>생년월일 <input type="text" name="birthday" ></p>
	<p>이메일 <input type="text" name="email" ></p>
	<p><input type="submit" value="전송" ></p>
</form>
</body>
</html>