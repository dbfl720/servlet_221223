<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<form method="post" action="/lesson02/quiz04_1.jsp" >
		<h1>사칙 연산 계산기</h1>
		<div class="form-group d-flex">
			<input type="text" name="fist" class="form-control col-2 mr-2">
			<select class="form-control col-1 mr-2" name="arithmetic">
				<option value="plus">+</option>
				<option value="minus">-</option>
				<option value="multiple">*</option>
				<option value="divide">/</option>
			</select>
			<input type="text" name="last" class="form-control col-2 mr-2">
			
			<button type="submit" class="btn btn-success " >계산하기</button>
		</div>
		</form>
	</div>

</body>
</html>