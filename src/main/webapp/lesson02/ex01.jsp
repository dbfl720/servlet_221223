<!--  JSP 구문-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- HTML의 주석 소스보기에서 보인다.-->
	<%-- JSP의 주석 소스보기에서 보이지 않는다. --%>
	<%
		// JAVA 문법 시작
		// scriptlet .  오래된 문법임. 나중에 안쓰임. // 긴 코드 쓸때는 이걸로..
		int sum = 0;
		for (int i = 1; i <= 10; i++){
			sum += i;		
		}
		
	%>
	
	
	<strong>합계:</strong>
	<%-- sum: expression 문법/ 하나의 변수, 간단 리턴받는 것을 출력할때는.. --%>
	<input type="text" value="<%=sum %>">
	<br>
	
	<%!
		// 선언문 - 클래스 같은 느낌
		// 필드
		private int num = 100;
	
		// 메소드
		public String getHelloWorld() {
			return "hello world";
		}	
	%>
	
	<%= getHelloWorld() %>
	<br>
	<%= num + 200 %>
</body>
</html>