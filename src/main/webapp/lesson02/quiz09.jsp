<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D-Day 계산</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
	<h1>오늘부터 1일</h1>
	<%
		Calendar today = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 M월 d일");  // 1개씩만 나오기 때문에 M, d 하나씩 쓴다.
		//out.print(sdf.format(today.getTime()));
		
		// 오늘부터로 하면 0일이기 때문에 1일이 되려면 하루를 뺀다.
		today.add(Calendar.DATE, -1);  // yesterday로 해서 만들어야 된다.for문 밖에서 해야
		for(int i = 100; i <= 1000; i += 100) {
			today.add(Calendar.DAY_OF_MONTH, 100);
			
			
	
	%>
		<div class="d-flex">
			<div class="display-4"><%=i + "일: " %></div>
			<div class="display-4 text-danger"><%= sdf.format(today.getTime()) %></div>
		</div>
	<%
		}
	%>
</div>
</body>
</html>