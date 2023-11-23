<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<link rel="stylesheet" type ="text/css" href ="1.css">
<%@ page import="java.sql.*" %>


<h2>데이터베이스 테이블 student 조회</h2>

<hr><center>
<h2>학생조회</h2>
<%
	Connection con = null;
	
	Statement stmt = null;
	String driverName="com.mysql.cj.jdbc.Driver";
	String dbURL="jdbc:mysql://localhost:3306/mysql";
	
	try{
		Class.forName(driverName);
		con=DriverManager.getConnection(dbURL,"root","wjdtjgus04");
		stmt = con.createStatement();
		ResultSet result = stmt.executeQuery("select * from student;");
		
	
%>
<table>
<tr>
	<td ><b>아이디</b></td>
	<td ><b>암호</b></td>
	<td ><b>이름</b></td>
	<td ><b>입학년도</b></td>
	<td ><b>학번</b></td>
	<td ><b>학과</b></td>
	<td><b>휴대폰1</b></td>
	<td ><b>휴대폰2</b></td>
	<td ><b>주소</b></td>
	<td ><b>이메일</b></td>
</tr>
<% while(result.next()){ %>

<tr>
	<td ><%=result.getString(1) %></td>
	<td ><%=result.getString(2) %></td>
	<td ><%=result.getString(3) %></td>
	<td ><%=result.getString(4) %></td>
	<td ><%=result.getString(5) %></td>
	<td ><%=result.getString(6) %></td>
	<td ><%=result.getString(7) %></td>
	<td><%=result.getString(8) %></td>
	<td ><%=result.getString(9) %></td>
	<td><%=result.getString(10) %></td>
	
</tr>
<%
	}
	result.close();
}
catch(Exception e){
	out.println("student조회에 문제가 생겼습니다<hr>");
	out.println(e.toString());
	e.printStackTrace();
	}
finally{
	if(stmt !=null)stmt.close();
	if(con !=null)con.close();
	
}
%>

</table>
</center>


</body>
</html>