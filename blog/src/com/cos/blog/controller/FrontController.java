package com.cos.blog.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.blog.model.Post;

//http://localhost:8080/blog
//모든 .do 요청은 FrontController를 탄다.
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FrontController() {
        super();
    }
    
    void route(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//request.setCharacterEncoding("UTF-8");
    	//System.out.println(request.getContextPath()); path를 알수있음.
    	String uri = request.getRequestURI();
		//String contextPath = request.getContextPath()+ "/";
		//uri = uri.replace(contextPath, "");
		System.out.println("get uri : " + uri);
		
		if(uri.equals("/post/list.do")) { 								//게시글 목록
			//모델 (DB연결 - 데이터가져와서)
			Post post= new Post(1, "제목1", "내용1", 1, null, 2);
			request.setAttribute("post", post);
			
			//페이지 이동시 request response 새로 만들어지는데 RequestDispatcher는 request response 를 유지시킨다.
			RequestDispatcher dis = request.getRequestDispatcher("/post/list.jsp");
			dis.forward(request, response);
			
		}else if(uri.equals("/post/detail.do")) { 						//게시글 상세
			response.sendRedirect("/post/detail.jsp");
		}else if(uri.equals("/post/updateForm.do")) { 					//게시글 수정
			response.sendRedirect("/post/updateForm.jsp");
		}else if(uri.equals("/post/saveForm.do")) { 					// 게시글 작성
			response.sendRedirect("/post/saveForm.jsp");
		}else if(uri.equals("/user/joinForm.do")) {						//회원가입
			response.sendRedirect("/user/joinForm.jsp");
		}else if(uri.equals("/user/loginForm.do")) {					//로그인
			response.sendRedirect("/user/loginForm.jsp");
		}else if(uri.equals("/user/updateForm.do")) { 					//회원수정
			response.sendRedirect("/user/updateForm.jsp");
		}else if(uri.equals("/user/detail.do")) { 						//회원상세
			response.sendRedirect("/user/detail.jsp");
		}
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		route(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		route(request, response);
	}

}
