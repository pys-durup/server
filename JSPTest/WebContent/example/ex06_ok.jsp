<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


	/*
	출력과 관계없는 자바 코드는 주로 페이지의 상단에서 작업
	코드를 분리해서 가독성을 높이기 위함입니다
	request.getParameter(String key)
	
	전송한 데이터의 인코딩 처리
		클라이언트가 전송한 데이터는 항상 깨지는 것이 아니다
		GET 안깨짐, POST 깨짐
		
		웹서버(Apache Tomcat) 
			7.0 이전까지는 EUC-KR 사용
			8.0 이후부터 UTF-8사용
		
		POST는 웹 서버를 이용하는 방식 
		GET은 웹 서버랑 상관없는 방식 -> 주소 URL 뒤에 붙여서 보내는 방식
	
		
	getParameter(String key)
		key값의 컨트롤이 존재하면서 값을 입력하면 입력값을 반환한다
		key값의 컨트롤이 존재하는데 값을 입력하지 않으면 빈 문자열을 반환한다
		key값의 컨트롤이 존재 하지 않으면 null을 반환한다
		
	
	*/
	
	// 전송한 데이터의 인코딩 처리
	request.setCharacterEncoding("UTF-8");
	
	
	// 텍스트 박스
	String txt1 = request.getParameter("txt1");
	
	System.out.println(txt1 == null); // false
	System.out.println(txt1 == ""); // true
	
	
	// 암호 박스
	String txt2 = request.getParameter("txt2");
	
	// 다중 텍스트 박스
	String txt3 = request.getParameter("txt3");
	
	// 모든 개행문자를 화면에 출력할때는 <br>태그로 치환하면 된다
	txt3 = txt3.replace("\r\n", "<br>");
	

	/*
		체크 박스
		value 없을때
			체크 -> "on" 반환(예약어)
			체크X -> null 반환
		value 있을때
			체크 -> value값을 반환
			체크X -> null 반환
	*/
	
	String cb1 = request.getParameter("cb1");
	String cb2 = request.getParameter("cb2");
	
	
	
	
	/*
	
	체크 박스들
		request.getParameter(key) 반환값이 String이므로 단일값을 반환하는 메서드
		다중값을 다루기 위한 request.getParameterValuse(key) 라는 메서드가 존재한다
	
		String[] 을 반환한다
		
		아무것도 체크하지 않으면 null 값
	*/

	
	// 체크 박스들
	// 체크된 박스 개수와 상관없이
	// String cbs = request.getParameter("cbs");
	// System.out.println(cbs);
	String[] cbs = request.getParameterValues("cbs");
	//System.out.println(cbs.length);
	
	
	
	// 라디오 버튼
	// 동시에 여러값을 체크하지 못하기 때문에 무조건 단일값을 전송
	// getParameter(key) 메서드를 사용
	// 아무것도 체크하지 않으면 null 값
	
	String rb = request.getParameter("rb");
	
	
	
	// 셀렉트 박스
	String sel1 = request.getParameter("sel1");
	
	
	// 셀렉트 박스 - 다중선택
	String[] sel2 = request.getParameterValues("sel2");

	// 히든 태그
	String id = request.getParameter("id");
	


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="/example/inc/asset.jsp" %>

</head>
<body>
	<!-- ex06_ok.jsp -->
	<div class="container">
	
		<h1 class="page-header">전송 결과</h1>
		
		<h2>텍스트 박스</h2>
		<div><%= txt1 %></div>
		
		
		<h2>암호 박스</h2>
		<div><%= txt2 %></div>
		
		<!-- Enter가 Space로 치환돼서 표시된다 -->		
		<h2>다중 텍스트 박스</h2>
		<div><%= txt3 %></div>
		
		<h2>체크 박스</h2>
		<div><%= cb1 %></div>
		<div><%= cb2 %></div>
		
		<h2>체크 박스들</h2>
		<!-- cbs가 null이 아닐때 -->
		<% for (int i=0; cbs!=null&&i<cbs.length; i++) { %>
		<div><%= cbs[i] %></div>
		<% } %>
		
		<h2>라디오 버튼</h2>
		<div><%= rb %></div>
		
		
		<h2>셀렉트 박스</h2>
		<div><%= sel1 %></div>
		
		
		<h2>셀렉트 박스 다중 선택</h2>
		<div><%= Arrays.toString(sel2) %></div>
		
		<h2>히든태그</h2>
		<div><%= id %></div>
		
	
	</div>
</body>
</html>
























