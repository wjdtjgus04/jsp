<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%request.setCharacterEncoding("euc-kr"); %>

<h2>이름으로 조회하는 프로그램</h2>
<hr>
<h2>학생정보조회</h2>
<%
	Connection con = null;
	
	Statement stmt = null;
	String driverName="com.mysql.cj.jdbc.Driver";
	String dbURL="jdbc:mysql://localhost:3306/mysql";
	String sql="select*from student where name like ?";
	String name=request.getParameter("snaem")+"%";
	int rowCount = 0;
	
	try{
		Class.forName(driverName);
		con=DriverManager.getConnection(dbURL,"root","wjdtjgus04");
		stmt = con.createStatement();
		ResultSet result = stmt.executeQuery("select * from student;");
		
	
%>

</body>
</html>