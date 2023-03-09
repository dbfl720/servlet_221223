<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SK Broadband</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
header {height: 80px; font-size: 40px;}
nav {height: 50px;}
.contents {min-height: 850px;} /*  min-hight 하면 높이 자동적으로 늘어남.!!*/
footer {height: 50px;}
</style>
</head>

<body>






	<div id="wrap" class=" container text-center">
		<header class="text-danger d-flex font-weight-bold align-items-center justify-content-center">
			<jsp:include page="header.jsp" />
		</header>
		<!-- align-items-center : 수직기준 가운데 정렬 -->
		<nav class="bg-danger d-flex justify-content-between align-items-center">
		 	<jsp:include page="menu.jsp" />
		</nav>
		<section class=" contents">
			<jsp:include page="contents.jsp" />
		</section>
		<footer class=" d-flex justify-content-center align-items-center">
			<jsp:include page="footer.jsp" />
		</footer>
	</div>

</body>
</html>