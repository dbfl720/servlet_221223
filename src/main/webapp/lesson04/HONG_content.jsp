<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- content 영역  -->

	<%
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String selectQuery = "select A.*, B.* from seller AS A inner join used_goods AS B on A.id = B.sellerId order by B.`id` desc";
			
		ms.select(selectQuery);
		ResultSet res = ms.select(selectQuery);
	
	%>


<article
	class="article1  d-flex flex-wrap align-items-center justify-content-between">
	<%
					while(res.next()) {
				%>
	<div class="box mt-3">
		<img src="<%= res.getString("imageUrl") %>" alt="이미지 없음" width="330"
			height="200">
		<h4 class="mt-3"><%= res.getString("title") %></h4>
		<small class="text-secondary"><%= res.getString("price") %>원</small><br>
		<small class="article-text"><%= res.getString("nickname") %></small>
	</div>

	<%
					}
				%>
</article>