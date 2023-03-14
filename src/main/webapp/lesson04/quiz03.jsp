<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
header {height: 80px;}
nav {height: 50px;}
section {height:800px;}
.article1 {height:400px;}
.article1 > .box {border: 3px solid; padding:10px; color: orange; weight:40px;}
.article2 {height:400px;}
footer {height:50px;}
</style>
</head>

<body>
	<div id="wrap" class="container bg-secondary">
		<header class="bg-success   text-center ">
			<h1 class="text-light pt-3">HONG당무 마켓</h1>
		</header>
		<nav class="bg-primary d-flex justify-content-between align-items-center">
			<ul class="nav nav-fill w-100">
				<li class="nav-item"><a href="#" class="text-light font-weight-bold">리스트</a></li>
				<li class="nav-item"><a href="#" class="text-light font-weight-bold">물건 올리기</a></li>
				<li class="nav-item"><a href="#" class="text-light font-weight-bold">마이 페이지</a></li>
				
			</ul>
		</nav>
		<section class="bg-warning">
			<article class="article1 bg-info">
				<div class="box"></div>
				<div></div>
				<div></div>
			
			</article>
			<article class="article2 bg-success"></article>
		</section>
		<footer class="bg-danger"></footer>
	
	</div>
</body>
</html>