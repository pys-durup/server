<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	// 데이터 받기
	// request 라는 내장 객체가 있는데 (예약어)
	// getParameter() 라는 메서드를 사용할 수 있다
	// String request.getParameter(String key)
	// key : 태그의 name 값
	
	// 데이터를 수신하기 전에 인코딩을 처리하기
	// 클라이언트가 서버로 전송한 데이터에 대한 인코딩, 안하면 한글이 깨진다
	// 인터넷에서 기본적으로 사용하는 Character Encoding은 euc-kr
	request.setCharacterEncoding("UTF-8");
	
	String num = request.getParameter("num"); // <input type="text" name="num">
	String txt = request.getParameter("txt");


	// POST 방식
	// http://localhost:8090/JSPTest/example/ex05_ok.jsp
	// 데이터를 패킷안에 패키징 해서 보내는 방식
	// 데이터의 크기 제한이 없다
	
	// GET 방식
	// http://localhost:8090/JSPTest/example/ex05_ok.jsp?num=123456&txt=%EB%AC%B8%EC%9E%90%EC%97%B4
	// 데이터를 URL에 보내는 방식
	// 비영문권 문자는 base64방식으로 인코딩을 한다
	// 기본적으로 URL은 256자를 넘길 수 없다 -> 256자를 넘기면 데이터가 
	
	// 256byte를 넘겼을때 전송이 되는 이유?
	// 최근에 GET 방식은 대략 4000byte 까지는 전송이 가능해졌다
	// 하지만 GET 방식은 소량의 데이터를 넘겨줄때 사용한다
	
	String txt2 = request.getParameter("txt2");
	
	// 웹은 페이지 하나가 다른 페이지에서 접근할 수 없는 폐쇄된 환경
	// 어떤 페이지에서의 업무를 다른페이지로 이어가려면 데이터를 전송해줘야 한다

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- ex05_ok.jsp -->
	<h1>데이터 받기</h1>
	
	<div>num: <%= num %></div>
	<div>txt: <%= txt %></div>
	<div>txt2: <%= txt2 %></div>
	
	
</body>
</html>