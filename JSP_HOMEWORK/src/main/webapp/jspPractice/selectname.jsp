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
	
	Statement pstmt = null;
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
       <td align=center><b>���̵�</b></td>
       <td align=center><b>��ȣ</b></td>
       <td align=center><b>�̸�</b></td>
       <td align=center><b>���г⵵</b></td>
       <td align=center><b>�й�</b></td>
       <td align=center><b>�а�</b></td>
       <td align=center><b>�޴���1</b></td>
       <td align=center><b>�޴���2</b></td>
       <td align=center><b>�ּ�</b></td>
       <td align=center><b>�̸���</b></td>
    </tr>
<%
        while (result.next()) {
%>
    <tr>
       <td align=center><%= result.getString(1) %></td>
       <td align=center><%= result.getString(2) %></td>
       <td align=center><%= result.getString(3) %></td>
       <td align=center><%= result.getString(4) %></td>
       <td align=center><%= result.getString(5) %></td>
       <td align=center><%= result.getString(6) %></td>
       <td align=center><%= result.getString(7) %></td>
       <td align=center><%= result.getString(8) %></td>
       <td align=center><%= result.getString(9) %></td>
       <td align=center><%= result.getString(10) %></td>
    </tr>
<%
			rowCount++;
        }
        result.close();        
    }
    catch(Exception e) {
    	out.println("MySql �����ͺ��̽� univdb�� student ��ȸ�� ������ �ֽ��ϴ�. <hr>");
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
		out.println("조회된 결과가 없습니다..");
	else 
		out.println("조회된 결과가" + rowCount + "건입니다.");    
%>
</font>

</body>
</html>