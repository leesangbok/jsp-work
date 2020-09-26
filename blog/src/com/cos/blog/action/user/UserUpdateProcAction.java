package com.cos.blog.action.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.blog.config.action.Action;
import com.cos.blog.dao.UserDao;
import com.cos.blog.model.User;

public class UserUpdateProcAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//세션확인
		if(session.getAttribute("principal") == null) {
			return;
		}
		
		
		
		
		/*공백과 null 확인
		 * if(request.getParameter("id") == null ||
		 * request.getParameter("id").equals("")) { return; }
		 */
		
		//데이터 검증 (이메일 형식이 맞는지, 전화번호 형식이 맞는지)
		
		
		
		
		/*
		 * BufferedReader br = request.getReader();
		 * 
		 * StringBuilder sb = new StringBuilder();
		 * 
		 * String input = "";
		 * 
		 * while ((input=br.readLine()) != null) { sb.append(input);
		 * System.out.println(sb.toString()); }
		 */
		
		int id = Integer.parseInt(request.getParameter("id"));
		String username = request.getParameter("username");
		String pw = request.getParameter("password");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		System.out.println("id::" + id);
		System.out.println("username::" + username);
		System.out.println("pw::" + pw);
		System.out.println("email::" + email);
		System.out.println("addr::" + address);
		
		User user = new User(
				id, username, pw, email, address, null
		);
		
		UserDao userDao = new UserDao();
		int result = userDao.회원수정(user);
		
		if(result == 1) {
			
			session.setAttribute("principal", user);
		}
		
		response.sendRedirect("index.jsp");
		
	}
	
}
