<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>

<%
	if(session.getAttribute("auth") == null){
		
		out.print("<script>alert('인증되지 않았습니다.')</script>");
		
		//response.sendRedirect("login.jsp");
		return;
	}

boolean islogin = (boolean)session.getAttribute("auth");

if(islogin == true){
	
%>
	인증된 사용자 입니다.
<%
}

%>


<h1>회원정보 페이지</h1>
	
<%@ include file="layout/footer.jsp" %>	