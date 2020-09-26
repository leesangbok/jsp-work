<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<br />
	<h2>회원가입 페이지</h2>
	<br />
	<form action="/user?cmd=joinProc" method="POST">
		<div class="form-group">
			<label for="username">이름:</label> 
			<input type="text" class="form-control" id="username" placeholder="name" name="username"/>
		</div>

		<div class="form-group">
			<label for="password">비밀번호:</label> 
			<input type="password" class="form-control" id="password" placeholder="password" name="password"/>
		</div>

		<div class="form-group">
			<label for="email">이메일:</label> 
			<input type="email" class="form-control" id="email" placeholder="email" name="email"/>
		</div>

		<div class="form-group">
			<label for="address">주소:</label> 
			<button type="button" class="btn btn-warning float-right">주소검색</button>
			<input type="text" class="form-control" id="address" placeholder="address" name="address"/>
		</div>
		
		<button type="submit" class="btn btn-primary">회원가입</button>
	</form>
</div>
<%@ include file="../layout/footer.jsp"%>