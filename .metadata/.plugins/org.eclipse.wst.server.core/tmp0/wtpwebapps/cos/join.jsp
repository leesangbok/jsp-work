<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
	<!-- form태그 :: 데이터를 전송하기 위한 박스 이다 -->
	<form action="joinProc.jsp" method="post">
		<input type="text" name="userName" placeholder="userName"/><br/>
		<input type="password" name="password"placeholder="userPw"/><br/>
		<input type="email" name="email" placeholder="userEmail"/>
		<button>전송</button>
	</form>
<%@ include file="layout/footer.jsp" %>
</body>
</html>