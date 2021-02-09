<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>현재 시간</h1>
	
	<% 
		// 자바 코드
		Calendar c = Calendar.getInstance();
	
		String time = String.format("%tT", c);
	
		
		// JSP는 HTML 기반이기 때문에 바로 호출할 수 있다
		// 동적인 페이지
		
	
	%>
	<div><%= time %></div>
	
	<%@include file="inc/copyright.jsp" %>
</body>
</html>