<%@page import="java.util.ArrayList"%>
<%@page import="com.cos3.model.Person"%>
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
<title>데이터 전체 찾기</title>
</head>
<body>
<h1>데이터 전체찾기 페이지</h1>
<hr/>

<%
	//http://localhost:8080/cos3/select.jsp?id=1

	String query ="SELECT id, pw, name FROM person";
	Connection conn = DBconn.getInstance(); //스트림
	PreparedStatement pstmt = conn.prepareStatement(query);//버퍼
	//pstmt.setInt(1, id);
	ResultSet rs = pstmt.executeQuery();
	ArrayList<Person> persons = new ArrayList<>();
	while(rs.next()){
		Person person = new Person(
			rs.getInt("id"),
			rs.getString("pw"),
			rs.getString("name")
		);
		persons.add(person);
	}
	
	for(Person person : persons){
		System.out.println("아이디 : " + person.getId());
		System.out.println("비밀번호 : " + person.getPw());
		System.out.println("이름 : " + person.getName());
		System.out.println("========================");
	}

%>
받은결과값
<table border="1" cellpadding="0" cellspacing="0">
	<tr>
		<th>아이디</th>
		<th>패스워드</th>
		<th>이름</th>
	</tr>
<%for(Person person: persons){ %>
	<tr>
		<td><%= person.getId() %></td>
		<td><%=person.getPw() %></td>
		<td><%=person.getName() %></td>
	</tr>
<%} %>
</table>
</body>
</html>