<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예제: score.jsp</title>
</head>
<body>
	<h2> Java Beans를 이용한 학생의 이름과 성적 저장과 조회예제</h2>
	<jsp:useBean id="score" class="javabean.ScoreBean" scope="page"/>
	
	<hr>
	<h3>이름과 성적을 javaBeans scoreBean에 저장</h3><p>
	이름: <%= "김성민" %>
	성적: <%= "85" %><p>
	<jsp:setProperty name = "score" property="name" value="김성민"/>
	<jsp:setProperty name = "score" property="point" value="85"/>
	
	<hr>
	<h3>java Beans scoreBean에 저장된 정보를 조회출력</h3>
	이름: <jsp:getProperty name="score" property="name"/><br>
	성적: <jsp:getProperty name="score" property="point"/><br>
	학점: <jsp:getProperty name="score" property="grade"/>
	
	





</body>
</html>