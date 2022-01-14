<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02</title>
</head>
<body>
<%! String Client = "홍길동"; 

		
%>
<p>우중충한 장마로 주말에도 장마는 계속될 것 같지만,</p>
<p><%=Client %>님의 마음만큼은 밝기를 바랍니다.</p>


<%!
	double x=100;
	double y=50;
	double mulXY(){
		return x*y;
	}
	double divXY(){
		return Math.round(x/y)*100;
	}

%>


<p><%=x %> 곱하기 <%=y %> = <%=mulXY() %></p>
<p><%=x %> 나누기 <%=y %> = <%=divXY() %></p>

<%
	int z = (int)(Math.random()*100000);
%>

<p>비밀번호는 <%=z %>입니다.</p>

<% int sum = 0;
	int sum2 =0;
	for(int i = 10; i< 51; i++){
	sum +=i;
	
}
	
	for(int i = 1; i< 551; i++){
	sum2 +=i;
	
}
	%>
	<p>10~50까지의 누적합 = <%=sum %></p>
	<p>1~550까지의 누적합 = <%=sum2 %></p>
<%
	for(int i=50; i<101; i++){
		if(i%7 == 0 || i%9==0){
			out.println("7이나 9의 배수:"+i+"<br>");
		}
	}

%>

<% String[] fruits ={"사과", "포도", "수박","바나나","자몽"};
for(int i = 0; i < fruits.length; i++){
		out.println(fruits[i]+","); // 세로로 출력하려면 <br>
	}out.println("로 구성되어있습니다.");
	
	for (int i = 0; i < fruits.length; i++) {

		out.println("<li>" + fruits[i]+ "</li>");
	}
%>

<% int[] abc ={12, 34, 55, -90, -65, 88, 200};
int min = 100000;
int max = 0;
int sum3 = 0;
for(int i=0; i<abc.length; i++){
	if(min>abc[i]){
		min = abc[i];
	}
	if(max<abc[i]){
		max = abc[i];
	}
	sum3 = sum3 + abc[i];
}
%>

<p>가장 큰 숫자 = <%=max %> 가장 작은 숫자 <%=min %> 배열의 평균<%=sum3/abc.length %></p>

<%!
   	int calc(int x, int y, String z){
	if(z.equals("나누기")){
		int qqq = x/y;
		return x/y;
	}
	else if(z.equals("곱하기")){
		return x*y;
	}
	return x*y;
}
%>

<p>calc( 100, 5, 나누기)호출 => <%=calc(100, 5, "나누기") %></p>


</body>
</html>