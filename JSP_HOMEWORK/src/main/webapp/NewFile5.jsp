<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% int i = 12; %>
<% int n = 365; %>
1년은 <%=i %> 달입니다

<jsp:forward page="paramsub.jsp">
<jsp:param name="weeks" value="52" />
</jsp:forward>
1 년은 <%=n %>일 입니다.

</html>