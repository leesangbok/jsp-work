<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("auth")!= null){
	if((boolean)session.getAttribute("auth")== true){
		System.out.println("인증된  사용자 입니다");
	}
}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>

 <style>
 	ul{text-align: center;}
 	li{display: inline-block; width: 100px;}
 </style>
</head>
<body>
	<ul>
		<li><a href="main.jsp" title="">메인</a></li>
		<li><a href="login.jsp" title="">로그인</a></li>
		<li><a href="join.jsp" title="">회원가입</a></li>
		<li><a href="info.jsp" title="">회원정보</a></li>
		<li><a href="logout.jsp" title="">로그아웃</a></li>
	</ul>
	<hr/>
</body>
</html>