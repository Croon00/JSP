<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 문법</title>
<style>
 /* CS 영역 */
 * { text-align: center;}

</style>

</head>
<body>
<h1>JSP 문법1</h1>
<hr />
<!--  -->
<!-- 변수 선언  -->
<%!
	// 주석
	// 전역 변수
	// ! 안 붙은 얘는 지역 변수
	int x = 100;
	String msg = "realistic";


%>

<h2>
<!-- 변수 출력 -->
  x = <%=x /*100 */%>, 
  msg = <%= msg /*문자열 변수*/%>
</h2>
<hr />

<h2>
	<!-- 변수 출력 -->
	<%=x*30 %>,
	<!-- JSP 영역을 html 주석으로 감싼 경우 : 주석 적용이 가능, JSP 영역으로서 안보임 -->
	<!-- <%= msg + "..." %> -->
	<br /><br />
	<!-- <%--주석 문구--%>  -->
	<%-- <%= msg + "...." %> --%>

</h2>
<hr />
<!-- 퀴즈
	3개의 수를 매개변수로 입력받은 후
	? + ? + ? = ?
	? - ? - ? = ?
	? * ? * ? = ?
  -->

<%!
	// 메서드 선언
	String helloWorld() {
	return "Hello world";
}

	int sum_XY(int x, int y){
		return x+y;
	}

%>
<h2>helloWorld() 호출 => <%= helloWorld() %></h2>
<h2>sum_XY() 호출 => <%=sum_XY(23, 66) %></h2>


<%!
	int a;
	int b;
	int c;
	int sum_ABC(int a, int b, int c){
	return a+b+c;
}

	int sub_ABC(int a, int b, int c){
	return a-b-c;
}

	int mul_ABC(int a, int b, int c){
	return a*b*c;
}


%>


<h2>sum_ABC() 호출 => <%=sum_ABC(50, 10,100) %></h2>
<h2>sub_ABC() 호출 => <%=sub_ABC(35, 25,100) %></h2>
<h2>mul_ABC() 호출 => <%=mul_ABC(25, 35,100) %></h2>

<script> type="text/javascript"
		// js 영역
		console.log("Hello world");

</script>
	<h2>Hello world</h2>
</body>
</html>