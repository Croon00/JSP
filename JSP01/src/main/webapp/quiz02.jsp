<%@ page language="java"
 contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>퀴즈</title>
<style type="text/css">
* {
	text-align: center
}
</style>
</head>
<body>
	<h1>Quiz</h1>
	<hr>
	<h2>01. 고객의 이름과 오늘의 인사말을 변수를 이용하여 선언하고 출력하여라</h2>
	<!--
01. 고객의 이름과 오늘의 인사말을 변수를 이용하여 선언하고 출력하여라 

고객명 : ?

오늘의 인사말 : 
    우중충한 장마로 주말에도 장마는 계속될 것 같지만, 
    ? 님의 마음 만큼은 맑길 바랍니다. 
-->
	<%!String user = "고길동";%>
	<p>
		우중충한 장마로 주말에도 장마는 계속될 것 같지만,
		<b><%=user%></b>
		님의 마음 만큼은 맑길 바랍니다.
	</p>
	<p>
		우중충한 장마로 주말에도 장마는 계속될 것 같지만,
		<!-- 
		문자열변수.substring(인덱스, 글자수)
		 -->
		<%=user.substring(0, 1)%>** 님의 마음 만큼은 맑길 바랍니다.
	</p>
	<hr>
	<h2>02. 두수의 곱셈과 나눗셈 연산 결과를 출력하여라.</h2>

	<!-- 02. 두수의 곱셈과 나눗셈 연산 결과를 출력하여라. 
나누기의 경우 소숫점 2째 자리까지 출력한다. 

	?   곱하기  ?   =   ?  
	?   나누기  ?   =   ?  
	 -->

	<%!int x = 10, y = 3;%>
	<p><%=x%>
		곱하기
		<%=y%>
		=
		<%=x * y%></p>
	<p><%=x%>
		나누기
		<%=y%>
		=
		<%=((Math.round(x* 100.0 / y )) / 100.0)%></p>

	<hr>
	<h2>03. Math.random()을 이용하여 5자리 정수로 구성된 비밀번호를 출력한다.</h2>
	<!-- 
	비밀번호는 ????? 입니다.
	10000 ~ 99999
	 -->
	<%!
	int randomNumber() {
		// (int)(Math.random()*(최대값-최소값+1))+최소값
		int result = (int)(Math.random()*(99999-10000+1))+10000;
		return result;
	}
	
	%>
	<p>비밀번호는 <%=randomNumber() %> 입니다. </p>
	<p>비밀번호는 <%=randomNumber() %> 입니다. </p>
	<p>비밀번호는 <%=randomNumber() %> 입니다. </p>
	<p>비밀번호는 <%=randomNumber() %> 입니다. </p>
	
	
	<hr>
	<h2>04. n~m까지의 누적합을 출력하여라. </h2>
	<!-- 
	10 ~ 50 까지의 누적합  =    ? 
	1 ~ 550 까지의 누적합  =    ? 
	 -->
	 
	<%!
		int sum_nm(int n, int m) {
		int sum = 0;
		for (int i=n; i<=m; i++) {
			sum+= i;
		}
		return sum;
	}
	%>
	
	<ul>
		<li>10 ~ 50 까지의 누적합  =  <%=sum_nm(10, 50)  %></li>
		<li>1 ~ 550 까지의 누적합  =  <%=sum_nm(1, 550)  %></li>
	</ul>	
	
	<hr>
	<h2>05.  100 ~ 50 사이의 숫자중에서 7이나 9의 배수만 출력하여라. </h2>
	<%
		for (int i=100; i>=50; i--) {
			if ((i%7 == 0) || (i%9==0)) {
				out.println(i);
			}
		}
	%>
	
	
	<hr>
	<h2>06.   다음 배열을 선언하고 목록문단을 이용하여 출력하여라. </h2>
	<!-- 
	배열은   사과, 포도, 수박, 바나나, 자몽으로 구성되어있습니다.  

      	● 사과 
	● 포도 
	● 수박 
	● 바나나
	● 자몽
	
	 -->
	<ul >
	<%
		String[] fruit_arr = {"사과", "포도", "수박", "바나나", "자몽" };
		
		for (int i=0; i<fruit_arr.length; i++) {
			out.println("<li>" + fruit_arr[i] + "</li>");
		}
	%>
	</ul>
	
	<hr>
	<h2>3, 6, 9  구구단을 출력하여라. </h2>
	<%
	for (int i = 3; i <= 9; i+=3) {
		out.println("<h2>" + i  + "단 </h2>");
		out.println("<hr>");
		for (int j = 1; j<=9; j++) {
			out.println(i + " X " + j + " = " + (i*j) + "<br>");
		}
		out.println("<hr>");
	}
	%>
	
	
	<hr>
	<h2>08.  다음 배열을 선언하고 가장 큰 수,  가장 작은 수,  배열의 평균을 출력하여라. </h2>
	<p>배열 숫자 =  [  12, 34, 55, -90, -65, 88, 200]</p>
	
	<%
		int[] num_arr = { 12, 34, 55, -90, -65, 88, 200};
		int min = num_arr[0];
		int max = num_arr[0];
		int sum = 0;
		double avg = 0;
		for (int i=0; i<num_arr.length; i++) {
			sum += num_arr[i];
			if (num_arr[i] > max) {
				max = num_arr[i];
			}
			if (num_arr[i] < min) {
				min = num_arr[i];
			}
		}
		avg = Math.round((sum/(double)num_arr.length)*100);
		
		out.println("<p> 가장 큰 수 = " + max + "</p>");
		out.println("<p> 가장 작은 수 = " + min + "</p>");
		out.println("<p> 배열의 평균 = " + avg + "</p>");
	%>
	
	<hr>
	<h2>. 출력 결과를 참조하여 연산자에 따른 연산 결과를 출력하여라. (메서드, 제어문 이용)</h2>
	<!-- 
			calc( 100, 5, 나누기) 호출 =>  
			
					100 / 5  = ?
			
			
				calc( 100, 5, 곱하기) 호출 =>  
			
					100 * 5  = ?
	 -->
	<%!
	// 전체가 하나의 클래스
	String calc(int n1, int n2, String sign) {
		String result="";
		if (sign.equals("곱하기")) {
			result = n1 + " 곱하기 "  + n2 + " = " + (n1*n2);
		} else if (sign.equals("나누기")) {
			result = n1 + " 나누기 "  + n2 + " = " + (n1/(double)n2);
		}
		
		return result;
	}
	%>

	<p>
		calc( 100, 5, 나누기) 호출 => <br>
		<%=calc(100, 5, "나누기")%>
	</p>
	<hr>
	<p>
		calc( 100, 5, 곱하기) 호출 => <br>
		<%=calc(100, 5, "곱하기")%>
	</p>













</body>
</html>