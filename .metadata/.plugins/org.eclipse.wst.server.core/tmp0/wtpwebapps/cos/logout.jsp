<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//JSessionId를 날리는것이다.
	session.invalidate();
	response.sendRedirect("main.jsp");
%>