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

<h2>데이터베이스 테이블 student 조회</h2>

<hr>
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
<table width =100% border =2 cellpadding=1>
<tr>
	<td aligin=center><b>아이디</b></td>
	<td aligin=center><b>암호</b></td>
	<td aligin=center><b>이름</b></td>
	<td aligin=center><b>입학년도</b></td>
	<td aligin=center><b>학번</b></td>
	<td aligin=center><b>학과</b></td>
	<td aligin=center><b>휴대폰1</b></td>
	<td aligin=center><b>휴대폰2</b></td>
	<td aligin=center><b>주소</b></td>
	<td aligin=center><b>이메일</b></td>
</tr>
<% while(result.next()){ %>

<tr>
	<td aligin=center><%=result.getString(1) %></td>
	<td aligin=center><%=result.getString(2) %></td>
	<td aligin=center><%=result.getString(3) %></td>
	<td aligin=center><%=result.getString(4) %></td>
	<td aligin=center><%=result.getString(5) %></td>
	<td aligin=center><%=result.getString(6) %></td>
	<td aligin=center><%=result.getString(7) %></td>
	<td aligin=center><%=result.getString(8) %></td>
	<td aligin=center><%=result.getString(9) %></td>
	<td aligin=center><%=result.getString(10) %></td>
	
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



</body>
</html>