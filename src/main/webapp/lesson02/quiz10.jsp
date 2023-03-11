<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar 활용 - 이번달 출력</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container text-center">
			<h1>3</h1>
			<table class="table ">
				<thead>
					<tr>
						<th>일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th>토</th>
					</tr>
				</thead>
		<% 
			Calendar cal = Calendar.getInstance(); // Calendar 객체 얻어오기 (시스템의 현재날짜와 시간정보)
		 	int year = cal.get(Calendar.YEAR);
		 	int month = cal.get(Calendar.MONTH)+ 1;
		 	int day = cal.get(Calendar.DATE);
		 	int start = cal.get(Calendar.DAY_OF_WEEK); // 1일의 요일 계산
			int lastDay = cal.getActualMaximum(Calendar.DATE); // 해당 월 마지막 날짜
			
		 	
		 	cal.set(Calendar.YEAR, year); //년도 세팅
		 	cal.set(Calendar.MONTH, month);  // 월 세팅
		 	cal.set(year, month -1, 1); // month는 0이 1월이므로 -1을 해준다 ** 
		
	
			for (int i = 1; i <= start; i++) {
			
		
				
		%>
				<tbody>
					<tr>
						<td><%= i %></td>
						<td><%= i %></td>
						<td><%= i %></td>
						<td><%= i %></td>
						<td><%= i %></td>
						<td><%= i %></td>
						<td><%= i %></td>
				
					</tr>
				</tbody>
			<%
				
				
			}
			%>
			</table>
	</div>
</body>
</html>