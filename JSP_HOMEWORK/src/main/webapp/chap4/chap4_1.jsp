<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP.ex03</title>
</head>
<body>
 <%! String s1 = "소속변수"; %>
 <% String s1 = "지역변수" ;%>
 s1 = <%=s1 %><br>
 this.s1 = <%=this.s1 %>
</body>
</html>