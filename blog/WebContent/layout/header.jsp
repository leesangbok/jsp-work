<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BLOG</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="/">BLOG</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <c:choose>
      	<c:when test="${empty sessionScope.principal}"><!-- empty는 값이 있는지 없는지 확인해준다 자세하게 null인지 공백인지까지도 확인한다. -->
      		<li class="nav-item">
			       <a class="nav-link" href="/user?cmd=loginForm">로그인</a>
			    </li>
			    <li class="nav-item">
			       <a class="nav-link" href="/user?cmd=joinForm">회원가입</a>
			    </li>
      	</c:when>
      		<c:otherwise>
      			<li class="nav-item"><a class="nav-link" href="/post?cmd=saveForm">글쓰기</a></li>
			    <li class="nav-item"><a class="nav-link" href="/user?cmd=updateForm">회원수정</a></li>
			    <li class="nav-item"><a class="nav-link" href="/user?cmd=logout">로그아웃</a></li>
			    <li style="color:#fff;" class="float-right">${sessionScope.principal.username} 님 환영합니다!</li>
			    
      		</c:otherwise>
      	
      </c:choose>
      
        
      
       
    </ul>
  </div>  
</nav>
