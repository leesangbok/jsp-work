package com.cos.blog.config.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.blog.dao.UserDao;
import com.cos.blog.model.User;

public class UserLoginProcAction implements Action{
	
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user= new User(
    			request.getParameter("username"),
    			request.getParameter("password")
    		);
		
    		System.out.println(user);
    		UserDao userDao = new UserDao();
    		User userEntity = userDao.로그인(user);
    		
    		if(userEntity != null) {
    			HttpSession session = request.getSession();
    			session.setAttribute("principal", userEntity);
    			System.out.println("로그인이 정상적으로 진행");
    			response.sendRedirect("/index.jsp");
    		}
	}
}
