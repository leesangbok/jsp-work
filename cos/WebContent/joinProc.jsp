<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	String username = request.getParameter("userName");
	String userpw = request.getParameter("password");
	String useremail = request.getParameter("email");
	
/* 	System.out.println("컨텍스트 패스 :" + request.getContextPath());
	System.out.println("컨텐트 타입 :" + request.getHeader("Content-Type"));
	System.out.println("캐릭터 인코딩 :" + request.getCharacterEncoding());
	System.out.println("로컬포트 :" + request.getLocalPort());
	System.out.println("메서드 :" + request.getMethod());
	System.out.println("원격주소 :" + request.getRemoteAddr());
	System.out.println("프로토콜 :" + request.getProtocol());
	System.out.println("쿼리스트링 :" + request.getQueryString());
	System.out.println("로컬 주소 :" + request.getLocalAddr()); */
	
	//잘받아졌으면 DB에 insert 하면 회원가입이 되는것!
	
	//sendRedirect : 페이지를 바꿔서 메인페이지로 이동시키게 한다
	session.setAttribute("auth", true);
	response.sendRedirect("main.jsp");
%>
