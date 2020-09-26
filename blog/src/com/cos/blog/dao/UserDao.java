package com.cos.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cos.blog.config.DBconn;
import com.cos.blog.model.User;

public class UserDao {
	public int 회원가입(User user) {
		
	try {	
		String query = "INSERT INTO user(username, password, email, address, createDate) values(?,?,?,?,now())"; //쿼리문을 작성해서 변수에 담는다
		Connection conn = DBconn.getInstance();
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setString(1, user.getUsername());
		pstmt.setString(2, user.getPassword());
		pstmt.setString(3, user.getEmail());
		pstmt.setString(4, user.getAddress());
		pstmt.executeUpdate();
	} catch (SQLException e) {
		System.out.println("회원가입 오류");
	}
		return -1;
	}
	
	public User 로그인(User user) {
		try {	
			String query = "SELECT id, username,email,address FROM user WHERE username=? AND password=?"; //쿼리문을 작성해서 변수에 담는다
			Connection conn = DBconn.getInstance();
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			ResultSet rs =pstmt.executeQuery();
			
			
			if(rs.next()) {
				User userEntity = new User(
					rs.getInt("id"),
					rs.getString("username"),
					rs.getString("email"),
					rs.getString("address")
				);
				return userEntity;
			}
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	public int 회원수정(User user) {
		String query = "UPDATE user SET username=?, password = ?, email=?, address=?, createDate=now() WHERE id = ?"; //쿼리문을 작성해서 변수에 담는다
		Connection conn = DBconn.getInstance();
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getEmail());
			pstmt.setString(4, user.getAddress());
			pstmt.setInt(5, user.getId());
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("회원수정 오류" + e);
		}
		return -1;
	}
}
