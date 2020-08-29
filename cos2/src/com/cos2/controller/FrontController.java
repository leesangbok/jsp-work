package com.cos2.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FrontController extends HttpServlet{
	//데이터를 줘 (select절)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet() 요청");
		String endPoint = req.getRequestURI();
		
		if(endPoint.equals("/info.do")) {						   //회원정보 페이지
			System.out.println("/info접근");
			System.out.println();
			resp.sendRedirect("info.jsp");
		}else if(endPoint.equals("/join.do")) { 					//회원가입 페이지
			System.out.println("/join접근");
			System.out.println();
			resp.sendRedirect("join.jsp");
		}else if(endPoint.equals("/login.do")) { 					//로그인 페이지
			System.out.println("/login접근");
			System.out.println();
			resp.sendRedirect("login.jsp");
		}else if(endPoint.equals("/main.do")) { 					//메인페이지
			System.out.println("/main접근");
			System.out.println();
			resp.sendRedirect("index.jsp");
		}else if(endPoint.equals("/logout.do")) { 					//로그아웃 할때
			HttpSession session = req.getSession();
			session.invalidate();
			resp.sendRedirect("main.jsp");
		}
	}		
	
	//데이터줄게(insert, delete, update절) -> 어떤데이터(Http body - MIME타입으로 준다)
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost() 요청");
		String endPoint = req.getRequestURI();
		HttpSession session = req.getSession();
		
		if(endPoint.equals("/joinProc.do")) { 						//회원가입 할때
			String username = req.getParameter("userName");
			String userpw = req.getParameter("password");
			String useremail = req.getParameter("email");
			
			session.setAttribute("auth", true);
			resp.sendRedirect("main.jsp");
		}else if(endPoint.equals("/loginProc.do")) { 				//로그인할때
			String username = req.getParameter("username");
			String password = req.getParameter("password");
			
			if(username.equals("sang")&&password.equals("1234")){
				session.setAttribute("auth", true);
				session.getAttribute(username);
			}
			
			resp.sendRedirect("main.jsp");
		}
		
	}
}
