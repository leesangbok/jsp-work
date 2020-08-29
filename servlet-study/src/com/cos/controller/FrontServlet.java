package com.cos.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontServlet extends HttpServlet{
	//데이터를 줘 (select절)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet() 요청");
		System.out.println(req.getRequestURI());
		String endPoint = req.getRequestURI();
		
		if(endPoint.equals("/user.do")) {
			System.out.println("/user접근");
			System.out.println();
			resp.sendRedirect("user.jsp");
		}else if(endPoint.equals("/profile.do")) {
			System.out.println("/profile접근");
			System.out.println();
			resp.sendRedirect("profile.jsp");
		}else if(endPoint.equals("/")) {
			System.out.println("/index접근");
			System.out.println();
			resp.sendRedirect("index.jsp");
		} 
	}
	
	//데이터줄게(insert, delete, update절) -> 어떤데이터(Http body - MIME타입으로 준다)
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost() 요청");
		super.doPost(req, resp);
	}
}
