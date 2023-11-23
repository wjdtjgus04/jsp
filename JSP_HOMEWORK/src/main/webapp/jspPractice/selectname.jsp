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
<link rel="stylesheet" type ="text/css" href ="1.css">

<h2>이름으로 조회하는 프로그램</h2>
<hr>
<h2>학생정보조회</h2>
<%
	Connection con = null;
	
	PreparedStatement pstmt = null;
	String driverName="com.mysql.cj.jdbc.Driver";
	String dbURL="jdbc:mysql://localhost:3306/mysql";
	String sql="select*from student where name like ?";
	String name=request.getParameter("snaem")+"%";
	int rowCount = 0;
	
	try{
		Class.forName(driverName);
		con=DriverManager.getConnection(dbURL,"root","wjdtjgus04");
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1,name);
		ResultSet result = pstmt.executeQuery();
		
	
%>
 <table >
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
<%
        while (result.next()) {
%>
    <tr>
       <td ><%= result.getString(1) %></td>
       <td ><%= result.getString(2) %></td>
       <td ><%= result.getString(3) %></td>
       <td ><%= result.getString(4) %></td>
       <td ><%= result.getString(5) %></td>
       <td ><%= result.getString(6) %></td>
       <td ><%= result.getString(7) %></td>
       <td ><%= result.getString(8) %></td>
       <td ><%= result.getString(9) %></td>
       <td><%= result.getString(10) %></td>
    </tr>
<%
			rowCount++;
        }
        result.close();        
    }
    catch(Exception e) {
    	out.println("데이터베이스 접속에 실패했습니다.<hr>");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally {
        if(pstmt != null) pstmt.close();
        if(con != null) con.close();
    }
%>
</table>


<p><hr><font color=blue>
<%
	if (rowCount == 0) 
		out.println("조회된 결과가 없습니다.");
	else 
		out.println("조회된 결과가" + rowCount + "건입니다.");    
%>
</font>

</body>
</html>