<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라디오버튼이 있는 폼 문서: ex11_form.jsp</title>
</head>
<body>
<h1>ex11_form.jsp</h1>
<form action="ex11_proc.jsp" method="post">
<h2>혈액형별 셩격테스트</h2>
<p>당신의 형액형은?</p>
<!-- input:radio --> <!-- 4개중 하나의 값만 선택이 가능해야함으로 네임값이 같아야함 -->
<input type="radio" name="bloodType" value="A"  /> A형<br />
<input type="radio" name="bloodType" value="B"  /> B형<br />
<input type="radio" name="bloodType" value="AB"  /> AB형<br />
<input type="radio" name="bloodType" value="O"  /> O형<br />
<input type="submit" value="보내기" />
</form>
</body>
</html>