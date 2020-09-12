<%@page import="java.sql.ResultSet"%>
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
<h1>데이터 한건찾기 페이지</h1>
<hr/>

<%

	if(request.getParameter("id") == null){
		return;
	}
	
	
	int id = Integer.parseInt(request.getParameter("id"));
	
	String query ="SELECT id, pw, name FROM person WHERE id = ?";
	Connection conn = DBconn.getInstance(); //스트림
	PreparedStatement pstmt = conn.prepareStatement(query);//버퍼
	pstmt.setInt(1, id);
	ResultSet rs = pstmt.executeQuery();
	rs.next();

%>
받은결과값
<table border="1" celpadding="0">
	<tr>
		<th>아이디</th>
		<th>패스워드</th>
		<th>이름</th>
	</tr>
	<tr>
		<td><%=rs.getInt("id") %></td>
		<td><%=rs.getString("pw") %></td>
		<td><%=rs.getString("name") %></td>
	</tr>
</table>
</body>
</html>