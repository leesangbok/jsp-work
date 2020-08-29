<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

if(session.getAttribute("auth")!= null){
	if((boolean)session.getAttribute("auth")== true){
		System.out.println("인증된  사용자 입니다");
		session.getAttribute("username");
	}
}
	String user_name = (String) session.getAttribute("username");
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

	<%
		if(session.getAttribute("auth") == null){
	%>
		<ul>
			<li><a href="main.do" title="">메인</a></li>
			<li><a href="login.do" title="">로그인</a></li>
			<li><a href="join.do" title="">회원가입</a></li>
		</ul>
	<%		
		}else{
	%>
		<ul>
			<li><a href="main.do" title="">메인</a></li>
			<li><a href="info.do" title="">회원정보</a></li>
			<li><a href="logout.do" title="">로그아웃</a></li>
			<li style="font-size:10px;"><%=user_name%> 님 환영합니다!</li>
		</ul>
	<%	
		}
	%>
	<hr/>
</body>
</html>