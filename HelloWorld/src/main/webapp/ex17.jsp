<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿과 연동하기</title>
<style type="text/css">
h1, .center  { text-align:center }
form { padding:20px; width:300px; margin:20px auto; border:2px solid green }
</style>
</head>
<body>
<h1>서블릿과 연동하기</h1>
<form action="서블릿주소" method="post">
   <p> <label>ID : <input type="text" name="userId"/></label> </p>
   <p> <label>PWD : <input type="password" name="userPwd"/></label> </p>
   <p> <label>email : <input type="text" name="userEmail"/></label> </p>
   <p class="center"><input type="submit" value="가입" /></p>
</form>
</body>
</html>