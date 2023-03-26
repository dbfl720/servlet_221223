<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록 출력 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
#image{width:330px; height:200px; font-size: 30px; }
</style>
</head>
<!-- content 영역  -->

	<%
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String selectQuery = "select A.*, B.* from seller AS A inner join used_goods AS B on A.id = B.sellerId order by B.`id` desc";
			
		ms.select(selectQuery);
		ResultSet res = ms.select(selectQuery);
	
	%>


<article class="article1  d-flex flex-wrap align-items-center justify-content-between">
	
	
 	<script>
		$(document).ready(function() {
				let imageUrl = $('#imageUrl').val();
			if($(imageUrl != "" && imageUrl != null) { 
			
			
	</script> 
	
	

	
	<%

					while(res.next()) {
					 	if(res.getString("imageUrl") == null || res.getString("imageUrl").equals("")){ 
						
				%>
				<div class="box mt-3">
		<div id="image" class="d-flex text-secondary align-items-center justify-content-center ">이미지 없음</div>
		<h4 class="mt-3"><%= res.getString("title") %></h4>
		<small class="text-secondary"><%= res.getString("price") %>원</small><br>
		<small class="article-text"><%= res.getString("nickname") %></small>
	</div>


	<%
						} else{
							
				%>
		<div class="box mt-3">
		<img src="<%= res.getString("imageUrl") %>" id="imageUrl" name="iamgeUrl" alt="이미지 " width="330"
			height="200">
		<h4 class="mt-3"><%= res.getString("title") %></h4>
		<small class="text-secondary" name="price"><%= res.getString("price") %>원</small><br>
		<small class="article-text"><%= res.getString("nickname") %></small>
	</div>
				  
				<%
						}
					}
				%>
				
</article>