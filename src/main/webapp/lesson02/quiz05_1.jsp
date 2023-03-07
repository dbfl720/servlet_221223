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
	double result1 = 0;
	double result2 = 0;
	double result3 = 0;
	double result4 = 0;
	String printCalculation1 = null;
	String printCalculation2 = null;
	String printCalculation3 = null;
	String printCalculation4 = null;
	
	
	for (String results : calculations) {
		if(results.equals("inch")){
			result1 = cm * 0.393;
			printCalculation1 = "in";
			
		}
		if(results.equals("yard")){
			result2 = cm / 91.44;
			printCalculation2 = "yd";	
		
		}
		
		if(results.equals("feet")){
			result3 = cm / 30.48;
			printCalculation3 = "ft";
		}
		
		if(results.equals("meter")) {
			result4 =  cm * 0.01;
			printCalculation4 = "m";
		}
		
	}
	
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%= cm %> cm</h3> 	
		<hr>
		<span><h3><%= result1 + " " + printCalculation1
		%></h3></span>
		<span><h3>
		<%= result2 + " " +  printCalculation2 %>
		<span></h3></span>
		<span><h3><%= result3 + " " + printCalculation3
		%></h3></span>
		<span><h3><%= result4 + " " + printCalculation4
		%></h3></span>
		
	</div>
</body>
</html>