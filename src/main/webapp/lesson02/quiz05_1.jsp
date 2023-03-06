<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
</head>
<body>

	<%
	int cm = Integer.valueOf(request.getParameter("cm")); 
	
	// checkbox처럼 여러 파라미터가 넘어올 때 getParameterValues  ( 스프링 넘어가면 안씀.. 기억안해도 됨)
	
	String[] calculations = request.getParameterValues("calculation");
	double result = 0;
	String printCalculation = null;
	
	switch(calculations) {
	case "inch":
		result = cm / 2.54;
		printCalculation = "in";
		break;
	case "yard":
		result = cm / 91.44;
		printCalculation = "yd";
		break;
	case "feet":
		result = cm / 30.48;
		printCalculation = "ft";
		break;
	case "meter":
		result = cm / 100;
		printCalculation = "m";
		break;
		
	}
	
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%= cm %> cm</h3> 
		
		<hr>
		<%
		out.println(result + " " + printCalculation);
		%>
	</div>
</body>
</html>