package com.cos.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cos.blog.config.DBconn;
import com.cos.blog.model.Post;

public class PostDao {
	public int 글쓰기(Post post) {
		String query = "INSERT INTO post(title, content, readCount, createDate, userId) values(?, ?, 0, now(), ?)"; //쿼리문을 작성해서 변수에 담는다
		Connection conn = DBconn.getInstance();
	try {	
		
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setString(1, post.getTitle());
		pstmt.setString(2, post.getContent());
		pstmt.setInt(3, post.getUserId());
		pstmt.executeUpdate();
	} catch (SQLException e) {
		System.out.println("글쓰기 오류"+ e);
	}
		return -1;
	}
	
	public List<Post> 글목록(){
		List<Post> posts = new ArrayList<>();
		
		String sql = "SELECT * FROM post ORDER BY id DESC";
		Connection conn = DBconn.getInstance();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery(); //조회할때만쓴다 rs는 데이터 하나하나 불러오기위해 쓴다.
			while (rs.next()) {
				Post post = new Post(
					rs.getInt("id"),
					rs.getString("title"),
					rs.getString("content"),
					rs.getInt("readCount"),
					rs.getTimestamp("createDate"),
					rs.getInt("userId")
				);
				posts.add(post);
			}
			return posts;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
}
