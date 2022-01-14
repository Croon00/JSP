<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form 을 이용한 데이터 전달</title>
</head>
<body>
<h1>form 을 이용한 데이터 전달 : ex12.jsp</h1>
<form action="ex12_proc.jsp" method="post">
	<!-- (p>label+input)*3 -->
	<p><label for="userName">성명</label>
		<input type="text" name="userName" id="userName"/>
	</p>
	<p><label for="userNumber">학번</label>
		<input type="text" name="userNumber" id="userNumber" />
		</p>
	<p>성별 :
		<label for="userGender1">남자</label>
		<input type="radio" value="남자" name="userGender" id="userGender1"/>
	   <label for="userGender2">여자</label>
		<input type="radio" value="여자" name="userGender" id="userGender2"/>
		</p>
	<p>
		전공 :
		<select name="userMajor">
		<option value="영문학과">영문학과</option>
		<option value="국문학과">국문학과</option>
		<option value="컴퓨터공학과">컴퓨터공학과</option>
		<option value="바이오메디컬공학과">바이오메디컬공학과</option>
		</select>
	</p>
	<p><input type="submit" value="보내기" /></p>
</form>

</body>
</html>