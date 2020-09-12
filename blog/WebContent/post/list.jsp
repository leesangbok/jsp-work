<%@page import="com.cos.blog.model.Post"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<%

	Post post = (Post)request.getAttribute("post"); 
%>
<h1>PostList.jsp</h1>
<%= post.getId() %>
<%= post.getTitle() %>
<%= post.getContent() %>
<%@ include file="../layout/footer.jsp" %>