<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>

<h2>데이터베이스 드라이버와 DB 연결 점검 프로그램</h2>
<%
try{
	String driverName="com.mysql.cj.jdbc.Driver";
	String dbURL="jdbc:mysql://localhost:3306/mysql";
	
	Class.forName(driverName);
	Connection con = DriverManager.getConnection(dbURL,"root","wjdtjgus04");
	out.println("성공적으로 접속했습니다.");
	
	con.close();
}
catch (Exception e){
	
	out.println("접속에 문제가 생겼습니다");
	out.println(e.getMessage());
	e.printStackTrace();
}
%>
</body>
</html>