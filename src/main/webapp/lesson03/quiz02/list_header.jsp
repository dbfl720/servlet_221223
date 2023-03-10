<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 로고 영역 -->
<h1>
	<a href="/lesson03/quiz02/list_layout.jsp" class="melongText text-success">Melong</a>
</h1>
<form method = "get" action="/lesson03/quiz02/info_layout.jsp"> <!-- 검색은 주소에 정보 보여도 상관없어서 get. -->
	<div class="input-group d-flex ml-5">
		<input name="search" type="text" class="form-control " placeholder="홍유리를 검색해보세요.">
		<button class="btn btn-success h-30" type="submit" >검색</button>
	</div>
</form>