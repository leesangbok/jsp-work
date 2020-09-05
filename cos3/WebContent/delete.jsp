<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.cos3.config.DBconn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 입력</title>
</head>
<body>
<h1>데이터 입력 페이지</h1>
<hr/>

<%

	/* if(request.getParameter("password") == null || request.getParameter("name") == null){
		return;
	} */
	
	if(request.getParameter("id") == null){
		return;
	}
	/* String password = request.getParameter("password");
	String name = request.getParameter("name"); */
	
	int id = Integer.parseInt(request.getParameter("id"));
	String query = "DELETE FROM person WHERE id = ?";
	
	
	//String query = "INSERT INTO person(pw, name) values(?, ?)"; //쿼리문을 작성해서 변수에 담는다
	Connection conn = DBconn.getInstance(); // 연결 
	PreparedStatement pstmt = conn.prepareStatement(query); //변수명 적어서 담아보낸다.
	pstmt.setInt(1, id);
	//pstmt.setString(2, name);//타입에 맞춰서 적어주면 된다.
	int result = pstmt.executeUpdate(); //executeQuery 는 select 할때 쓴다. 수정된 행의 개수가 리턴
%>
수정된 행의 개수 : <%=result%>
</body>
</html>