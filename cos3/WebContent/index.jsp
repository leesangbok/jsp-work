<%@page import="java.sql.Connection"%>
<%@page import="com.cos3.config.DBconn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DBCP 연습</title>
</head>
<body>
<h1>인덱스페이지입니다</h1>
<hr/>
<%
	Connection conn= DBconn.getInstance();
%>
</body>
</html>