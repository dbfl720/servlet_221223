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
header {min-height: 80px; padding-top:70px; padding-bottom:20px;}

a, a:hover {text-decoration: 100px;}
nav {min-height: 50px;}
section {min-height: 730px;}
.article1 {min-height:230px;  border: 4px solid green;}
.article2 {min-height:500px;}
footer {min-height: 50px;}
</style>
</head>
<body>
	<div id="wrap" class="container">
		<header class=" d-flex align-items-center">
			<!-- 로고 영역 -->
			<h1 ><a href="#" class="melongText text-success">Melong</a></h1>
			<div class="input-group col-4 ml-5">
			  <input type="text" class="form-control " placeholder="홍유리를 검색하세요~~용">
			  <button class="btn btn-success h-30" type="button">검색</button>
			</div>
		</header>
		<nav class=" d-flex align-items-center">
			<ul class="nav ml-2">
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱챠트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">뮤직어워드</a></li>
				
			</ul>
		</nav>
		<section class="">
			<!-- 아티스트 정보 영역 -->
			<!-- border 만들기 : class="border border-success" -->
			<article class="article1  d-flex">
				<div class="d-flex align-items-start mt-3">	
					<img src="https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et_400x400.jpg" alt="아이유 사진" width="190" height="190" class="ml-3">	
						<div class="ml-4 ">
							<h1 class="font-weight-bold">아이유</h1>
							<div>EDAM엔터테인먼트</div>
							<div>2008년 데뷔</div>
						</div>
				</div>
			</article>
			
			
			<article class="article2 ">
					<!-- 곡 목록  -->
				<h2 class="d-flex pt-5 pl-2">곡 목록</h2>
				<table class="table text-center mt-2">
					<thead>
					<%-- row class를 설정하면 12칸 기준으로 영역을 잡을 수 있다.??????? --%>
						<tr>
							<th class="col-2">no</th>
							<th class="col-4">제목</th>
							<th class="col-6">앨범</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="col-2">a</td>
							<td class="col-4">a</td>
							<td class="col-6">a</td>
						</tr>
					</tbody>
				
				</table>
			</article>
		</section>
		<footer class=" d-flex  align-items-center">
			<address class="ml-4">Copyright 2023. melong All Rights Reserved.</address>
		</footer>
	</div>
</body>
</html>