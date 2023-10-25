<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% int i, j; %>
<%
	for(i =2; i<10; i++){
		for (j = 1; j<10; j++){
			out.print("[" + i + "*" +  j +" = " + i*j+"]  " );
			}
			out.print("<br>");
		}
	%>
</body>
</html>