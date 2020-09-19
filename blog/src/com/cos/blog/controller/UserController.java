package com.cos.blog.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.blog.config.action.Action;
import com.cos.blog.config.action.UserJoinProcAction;
import com.cos.blog.config.action.UserLoginProcAction;
import com.cos.blog.config.action.UserLogoutAction;

//http://localhost:8080/blog
//모든 .do 요청은 FrontController를 탄다.
@WebServlet("/user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserController() {
        super();
    }
    
    void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("/user 요청됨");
    	String cmd = request.getParameter("cmd");
    	System.out.println("cmd:::: " + cmd);
    	
    	Action action = route(cmd);
    	if(action != null) action.execute(request, response);
    }
    private Action route(String cmd) {
    	if(cmd.equals("joinForm")){
    		//response.sendRedirect("/user/joinForm.jsp");
    		
    	}else if(cmd.equals("loginForm")) {
    		//response.sendRedirect("/user/loginForm.jsp");
    	}else if(cmd.equals("updateForm")) {
    		//회원수정 페이지로 이동하기전 Model로 이동후 디스패쳐
    	}else if(cmd.equals("joinProc")) {
    		return new UserJoinProcAction();
    	}else if(cmd.equals("loginProc")) {
    		return new UserLoginProcAction();
    	}else if(cmd.equals("updateProc")) {
    		//1. 회원수정 진행(update)model 이동 
    		//
    	}else if(cmd.equals("logout")) {
    		return new UserLogoutAction();
    	}
		return null;
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

}
