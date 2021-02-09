<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.jsp.Ex04" %>
   
<%!
	// 선언부
	// 선언 부에서 정의한 메소드는 재사용할 수 있지만 그 영역이 해당 JSP 페이지를 벗어날 수 없다
	public int sum(int a, int b) {
		return a + b;
	} 
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- ex04_declaration.jsp -->
	
	<%
		// 자바 영역 -> 지역(메서드 내에서)
		
		int a = 10;
	
		for (int i=0; i<10; i++) {
			
		}
		
		// 메서드 안에 메서드를 만드는 것 -> 문법에 어긋난다 
		/* public int sum(int a, int b) {
			return a + b;
		} */
		
		int m1 = 10;
		int m2 = 20;
	
	%>
	
	<%= sum(m1, m2) %>
	<%= Ex04.sum(m1, m2) %>
	
	
</body>
</html>