<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<br />
	<h2>로그인 페이지</h2>
	<br />
	<form action="/user?cmd=loginProc" method="POST">
		<div class="form-group">
			<label for="username">이름:</label> 
			<input type="text" class="form-control" id="username" placeholder="name" name="username"/>
		</div>

		<div class="form-group">
			<label for="password">비밀번호:</label> 
			<input type="password" class="form-control" id="password" placeholder="password" name="password"/>
		</div>

		<div class="form-group form-check">
			<label class="form-check-label"> 
			<input class="form-check-input" type="checkbox" name="remember">아이디 저장하기
			</label>
		</div>
		<button type="submit" class="btn btn-primary">로그인</button>
	</form>
</div>
<%@ include file="../layout/footer.jsp"%>