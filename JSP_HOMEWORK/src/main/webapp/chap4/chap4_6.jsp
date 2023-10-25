<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<h2> 기술정보 이력서</h2>

<% String[] platform = request.getParameterValues("platform");
String number1 = request.getParameter("number1");
String number2 = request.getParameter("number2");%> 
<hr>
이름: <%=request.getParameter("name") %><p>
주민번호: <%=number1%> - <%=number2 %><p>
학년: <%=request.getParameter("grade") %> <p>
전공: <%=request.getParameter("major") %><p>
경험플랫폼: <% for(int i=0; i<platform.length; i++){
	out.print('['+platform[i]+"] ");
}
%> 
</body>
</html>