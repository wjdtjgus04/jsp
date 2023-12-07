<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>학과정보 조회</title>
</head>

<body>
<link rel="stylesheet" type="text/css" href="1.css">
<%@ page import="java.sql.*" %>

<h2>데이터베이스 테이블 department 조회</h2>

<hr>
<h2>학과정보 조회</h2>
<%
    Connection con = null;
    Statement stmt = null;
    String driverName = "com.mysql.cj.jdbc.Driver";
    String dbURL = "jdbc:mysql://localhost:3306/mysql"; // 수정: 데이터베이스 이름 변경
    String username = "root";
    String password = "wjdtjgus04";

    try {
        Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, username, password);
        stmt = con.createStatement();
        ResultSet result = stmt.executeQuery("select * from department;"); // 수정: 테이블 이름 변경

%>
<table>
    <tr>
        <td><b>학과번호</b></td>
        <td><b>학과이름</b></td>
        <td><b>정원</b></td>
        <td><b>홈페이지</b></td>
    </tr>
    <% while (result.next()) { %>

     <tr>
        <td><%=result.getInt("departid") %></td>
        <td><%=result.getString("name") %></td>
        <td><%=result.getInt("numstudent") %></td>
        <td><%=result.getString("homepage") != null ? result.getString("homepage") : "" %></td> <!-- 수정: 널 값 처리 -->

    </tr>
    <%
    }
    result.close();
    } catch (Exception e) {
        out.println("테이블 department 조회에 문제가 생겼습니다<hr>");
        out.println(e.toString());
        e.printStackTrace();
    } finally {
        if (stmt != null) stmt.close();
        if (con != null) con.close();
    }
%>

</table>
</body>
</html>
