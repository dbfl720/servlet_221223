<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래 세부사항</title>
<!-- 부트스트랩 검색할 때 4.6버전으로 바꿔서 검색하랏! -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
header {height: 80px; padding-top:70px; padding-bottom:20px;}
a, a:hover {text-decoration: 100px;}
nav {height: 50px;}
section {height: 550px;}
.article1 {height:230px;  border: 4px solid green;}
.article2 {height:300px;}
.music-info-text {font-size: 15px;}
footer {height: 50px;}
</style>
</head>
<body>
	<div id="wrap" class="container">
		<header class=" d-flex align-items-center">
			<jsp:include page="list_header.jsp" />
		</header>
		<nav class=" d-flex align-items-center">
			<jsp:include page="list_menu.jsp" />
		</nav>
		<section class="">
			<jsp:include page="info_content.jsp" />
		</section>
		<footer class=" d-flex  align-items-center">
			<jsp:include page="list_footer.jsp" />
		</footer>
	</div>
</body>
</html>