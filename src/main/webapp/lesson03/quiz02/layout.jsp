<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
<!-- 부트스트랩 검색할 때 4.6버전으로 바꿔서 검색하랏! -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
header {height: 80px;}
a, a:hover {text-decoration: 100px;}
nav {height: 50px;}
section {height: 850px;}
.article1 {height:350px;  border: 4px solid green;}
.article2 {height:500px;}
footer {height: 50px;}
</style>
</head>
<body>
	<div id="wrap" class="container">
		<header class="bg-danger d-flex align-items-center ">
			<!-- 로고 영역 -->
			<h2 ><a href="#" class="text-success">Melong</a></h2>
			<div class="input-group col-4">
			  <input type="text" class="form-control " placeholder="노래를 검색해주세요.">
			  <button class="btn btn-info h-50" type="button">검색</button>
			</div>
		</header>
		<nav class="bg-warning">
			<ul class="nav ">
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱챠트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">뮤직어워드</a></li>
				
			</ul>
		</nav>
		<section class="">
			<!-- 아티스트 정보 영역 -->
			<!-- border 만들기 : class="border border-success" -->
			<article class="article1  d-flex">
				<div class="d-flex align-items-start mt-3">	
					<img src="https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et_400x400.jpg" alt="아이유 사진" width="300" height="300" class="ml-4">	
						<div class="ml-4 ">
							<h1 class="font-weight-bold">아이유</h1>
							<div>EDAM엔터테인먼트</div>
							<div>2008년 데뷔</div>
						</div>
				</div>
			</article>
			
			
			<article class="article2 bg-warning">
					<!-- 곡 목록  -->
				<h1>곡 목록</h1>
				<table>
					<thead>
						<tr>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				
				</table>
			</article>
		</section>
		<footer class="bg-success"></footer>
	</div>
</body>
</html>