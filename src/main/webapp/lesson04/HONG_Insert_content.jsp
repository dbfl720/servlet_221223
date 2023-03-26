<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록 출력 페이지</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- bootstrap (slim 뺐음), jquery가 위에 있기 때문에 나머지를 가져오기-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<style>
#insert_TextArea {height: 200px;}
</style>
</head>
<body>







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
		<form id="inputForm" method="post" action="/lesson04/HONG_Insert">
			<div class="display-4 pt-5 pb-5">물건 올리기</div>

			<div class="d-flex justify-content-between">
				<select name="id" id= "selectId"
					class="form-select form-select-sm form-control col-3">
					<option value="default">-아이디 선택-</option>
					<%
					while (res.next()) {
					%>
					<option  value=<%=res.getString("id")%>><%=res.getString("nickname")%></option>
					<%
					}
					%>
				</select> <input id="title" name="title" type="text" 
					class="form-control col-5 mr-3 ml-3" placeholder="제목">
				<div class="input-group">
					<input id="price" name="price" type="text" class="form-control col-10"
						placeholder="가격"> <span class="input-group-text pr-3"
						id="basic-addon2">원</span>
				</div>
			</div>

			<textarea name="description" type="text" id="insert_TextArea" class="form-control mt-3 pb-5"></textarea>

			<div class="input-group mb-3 mt-3">
				<span class="input-group-text" id="basic-addon1">이미지 url</span> <input
					name="imageUrl" type="text" class="form-control">
			</div>
			<div class=" text-center pt-3 ">
				<button id="button" class=" btn btn-secondary col-4 mb-5 " type="submit">저장</button>
			</div>
	</article>
	</form>




	

 	<script>
		$(document).ready(function() {
			$("#inputForm").on("submit",function(e) {
				
				var title = $('#title').val();
				var price = $('#price').val();
				
				if($("#selectId").val() == "default") { 
					alert("판매자를 선택하세요.");
					return false;
				}
				
				if(title == null || title == "") {
					alert("제목을 입력하세요.");
					return false;
					}
				
				if(price == null || price == "") {
					alert("가격을 입력하세요.");
					return false;
				}
				return true;
		    });
			
		});
			

	</script> 

</body>
</html>