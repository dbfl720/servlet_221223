<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
header {height: 100px; background-color: #FF8000;}
nav {height: 70px; background-color: #FF8000;}
section {height:500px;} 
.article1 {height:500px;  width: 80%; margin: 0 auto;}
.article-text {color: #FF8000; font-weight: bold;}
.box {border: 3px solid #FF8000; padding:10px; width:360px; height:330px;}
.box:hover {background-color:#F7BE81;}
footer {min-height:100px;}
</style>
</head>

<body>
	<div id="wrap" class="container">
		<header class=" pt-2">
			<jsp:include page="HONG_header.jsp" />
		</header>
		<nav class=" d-flex justify-content-between align-items-center">
			<jsp:include page="HONG_menu.jsp" />
		</nav>
		<div class="warpper2">
			<section>
				<jsp:include page="HONG_Insert_content.jsp" />
			</section>
		</div>
		<footer class=" d-flex justify-content-center align-items-center">
			<jsp:include page="HONG_footer.jsp" />
		</footer>
	
	</div>
</body>
</html>