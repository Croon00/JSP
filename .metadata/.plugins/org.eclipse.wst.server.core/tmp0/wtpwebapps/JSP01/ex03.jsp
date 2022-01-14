<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 문법 - 스크립트릿 Scriptletk</title>
</head>
<body>
<h1>JSP 문법 - 스크립트릿</h1>
<hr />
<h2>특정 실수를 반올림해서 출력한다.</h2>
<%
	double x = 123.456789;
	double y = Math.round(x);
	double z = Math.round(x*100);
	double q = (Math.round(x*100))/100;

%>
<p> x 값은? <%= x %></p>
<p> y 값은? <%= y %></p>
<p> z 값은? <%= z %></p>
<p> q 값은? <%= q %></p>

<hr />
<h2> 선언문 변수와 스크립트릿의 변수 테스트</h2>
<%! int value = 100; %>
<% int value = 200; %>
<!-- 우선순위
	스크립트릿변수 > 선언문 변수
	
	 -->

<p> value 값은? <%= value %></p>
<hr />
<%!// 메서드은 선언 영역에서만 선언이 가능
	String myMethod() {
	return "Hello Java";
}

%>

<%
	/* String myMethod() {
	return "Hello Java";
}     스크립트릿에서는 메서드 선언 불가능*/

%>
<hr />
<h2> 조건문 </h2>
<%
	int xx = 100;
	int yy = 50;
	int result;
	// 두 수중 큰 수만 저장
	if(xx > yy){
		result = xx;
	}else if (xx == yy){
		result = -99;
	}else {
		result = yy;
	}

%>
<p><%= xx %> 과/와 <%= yy %>중 큰 숫자는 <%=result %>이다.</p>
<hr />
<h2>반복문 for</h2>
<%
	// 1~10 까지 숫자 출력
	for(int i = 1; i <= 10; i++){
		// i 출력
		/* System.out.println(i);
		// 콘솔창에 출력 */
	

%>
	<p><%= i %></p> <!-- expression  -->
<%
	} // 끊어지는 스크립트릿
%>

<hr />
<%
	// 스크립트릿안에서의 출력문
	// out.println(변수 또는 리터럴 또는 메서드호출(return 값 있는))
	String userName = "허준";
	out.println(userName + "님 오늘도 수고하셨습니다. <br>");
	out.println(56 + " <br> X <br>" + 78 + "<br> = <br>" + (56*78));
%>
<hr />
<h2>반복문 for2</h2>

<%
	// 1~30까지의 숫자 중에서 3의 배수만 출력
	for (int i = 1; i <= 30; i++){
		if (i%3==0){
			out.println(i + " ");
		}
	}

%>

<hr />
<p><%
	// 1~30까지의 숫자 중에서 3의 배수만 출력
	for (int i = 1; i <= 30; i++){
		if (i%3==0){
			%>
			<%= i %>&nbsp;&nbsp;
<%
		}
	}

%></p>
<hr />
<h2> while문 </h2>
<ul>
<%
	int cnt = 1;
	while(cnt <= 5){
		out.println("<li>" + cnt + " 번: Hello world <li>");
		cnt++;
	}

%>
</ul>

<hr />
<h2> 2 중 for문</h2>
<%
	for (int i = 0; i < 3; i++) {
		out.println("<h3>제목입니다.</h3>");
		out.println("<ul>");
		for (int j = 0; j < 2; j++) {
			out.println("<li> 목록" + j + "</li>");
		}
		out.println("</ul>");
		out.println("<hr>");
	}

%>

<hr />
<h2> 배열 선언과 출력</h2>
<%
	int[] num_arr = {10, 56, 77, 34, 100};
	out.println(num_arr); // 주소값이 나옴
	out.println("<p align='center'>");
	for(int i = 0; i < num_arr.length; i++){
		out.println(num_arr[i]+ "   "); // 세로로 출력하려면 <br>
	}
	out.println("</p>");

%>

<hr />
<h2> 구구단 출력</h2>

<%  int a = 2;
	for(int i = 0; i < 3; i++){
		out.println(a + "단" + "&nbsp;&nbsp;&nbsp;"); 
		out.println(a+1 + "단" + "&nbsp;&nbsp;&nbsp;");
		out.println(a+2 + "단");
		out.println("<br>");
		for(int j = 1; j < 11; j++){
			out.println(a + " X " + j + " = " + a*j+"&nbsp;");
			out.println(a+1 + " X " + j + " = " + (a+1)*j + "&nbsp;");
			out.println(a+2 + " X " + j + " = " + (a+2)*j);
			out.println("<br>");
		}
		a = a+3;
	}
	

%>




</body>
</html>