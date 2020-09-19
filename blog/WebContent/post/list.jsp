<%@page import="com.cos.blog.model.User"%>
<%@page import="com.cos.blog.model.Post"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<h1>PostList.jsp</h1>
<%-- ${sessionScope.principal.username} --%> <!-- 이건 세션값의  principal -->
<%-- ${principal} --%> <!-- 그냥 적으면 request 값  --><!-- request 와 session 안에 값이 들어있는데 request가 우선 순위가 된다. -->
<%@ include file="../layout/footer.jsp" %>