package com.cos.blog.action.post;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.blog.config.action.Action;
import com.cos.blog.dao.PostDao;
import com.cos.blog.model.Post;

public class PostListFormAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("dsdsda");
		PostDao postDao = new PostDao();
		List<Post> posts = postDao.글목록();
		System.out.println("aaaaaaaa");
		request.setAttribute("posts", posts);
		System.out.println("aaaaaaaa2222");
		RequestDispatcher dis = request.getRequestDispatcher("/post/list.jsp");
		
		dis.forward(request, response);
		
		
	}
	
}
