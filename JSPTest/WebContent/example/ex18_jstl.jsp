<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- JSTL 설정 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1 class="page-header">JSTL</h1>
		
		<%
		
			//EL + JSTL -> JSP 페이지에서 순수 자바 표현이 사용될 일이 없어진다
		
			//EL
			// JSP에서 <%= % >를 대신하기 위해 만들어진 기능
			
			//JSTL
			// JSP에서 <% % >을 대신하기 위해 만들어진 기능
			
		
		%>
		
		<br>
		<br></br>
		<br />
		
		
		<h2>변수 선언</h2>
		
		<!-- com.test.jsp.Student -->
		<c:set var="num" value="10" />
		
		
		<%
		
			int a = 10; // 자바 지역 변수
			pageContext.setAttribute("b", 20); //내장 객체 요소 -> 내장 객체 변수 -> pageContext 변수
			
		%>
		<c:set var="c" value="30" /> <!-- JSTL 변수 -->
		
		<div>a: <%= a %></div>
		<div>b: <%= pageContext.getAttribute("b") %></div>
		<%-- <div>c: <%= c %></div> --%>
		
		<div>a: ${a}</div>
		<%-- 위의 코드와 같은 의미 <div>a: ${pageContext.getAttribute("a")}</div> --%>
		
		<div>b: ${b}</div>
		<div>c: ${c}</div>
		<!-- JSTL 변수는 EL로 접근할 수 있다(**********) -->
		<div>c: <%= pageContext.getAttribute("c") %></div>
		
		
		<%--
		
			<c:set> 변수는 자동으로 pageContext 객체의 setAttribute() 가 호출된다
			
		--%>
		
		<h2>변수 수정</h2>
		<c:set var="c" value="300" />
		<div>c: ${c}</div>
		
		<h2>변수 삭제(컬렉션 요소 삭제)</h2>
		<c:remove var="c" />
		<div>c: ${empty c}</div>
		
		<h2>조건문</h2>
		<c:set var="num" value="-10" />
		
		<c:if test="${num > 0 }">
			<div>${num}은 양수입니다.</div>			
		</c:if>
		<!-- else if가 없다 -->
		
		<c:if test="${num < 0 }">
			<div>${num}은 음수입니다.</div>			
		</c:if>
		
		
		<h2>조건문</h2>
		<c:choose>
			<c:when test="${num > 0}">양수</c:when>
			<c:when test="${num < 0}">음수</c:when>
			<c:otherwise>0</c:otherwise>
		</c:choose>
		
		
		
		<h2>반복문(일반 for + 향상된 for)</h2>
		
		<%-- <c:set var="i">와 동일 --%>
		<c:forEach var="i" begin="1" end="10" step="1">
			<div>숫자: ${i}</div>
		</c:forEach>
		
		<%
		
			String[] names = { "홍길동", "아무개", "하하하", "호호호", "후후후"};
			pageContext.setAttribute("names", names);
		
		%>
		
		<ol>
			<c:forEach items="${names}" var="name">
				<li>${name}</li>
			</c:forEach>
		</ol>
		
		
	</div>
</body>
</html>



















