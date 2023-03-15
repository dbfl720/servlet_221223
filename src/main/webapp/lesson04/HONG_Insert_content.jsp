<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <!-- Insert_content 영역 -->
 
 	<%
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String selectQuery = "select*from seller";
			
		ms.select(selectQuery);
		ResultSet res = ms.select(selectQuery);
	
	%>


<article class="article1">
	<form method="post" action="/lesson04/HONG_Insert">
		<div class="display-4 pt-5 pb-5">물건 올리기</div>

		<div class="d-flex justify-content-between">
			<select name= "id" class="form-select form-select-sm form-control col-3">
				<option  selected>-아이디 선택-</option>
				<% while(res.next()) { %>
				<option  value=<%= res.getString("id") %>><%= res.getString("nickname") %></option>
				<%
				}
				 %>
			</select> 
			<input name="title" type="text" class="form-control col-5 mr-3 ml-3" placeholder="제목">
			<div class="input-group">
				<input name="price" type="text" class="form-control col-10" placeholder="가격">
				<span class="input-group-text pr-3" id="basic-addon2">원</span>
			</div>
		</div>

		<textarea name="description" type="text" class="form-control h-25 mt-3"></textarea>

		<div class="input-group mb-3 mt-3">
			<span class="input-group-text" id="basic-addon1">이미지 url</span>
			 <input name="imageUrl" type="text" class="form-control">
		</div>

		<button class="btn btn-secondary col-12" type="submit">저장</button>
</article>
</form>