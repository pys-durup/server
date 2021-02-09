<%@page import="com.test.jsp.Student"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/example/inc/asset.jsp" %>
<style>
	body { margin-bottom: 300px; }
</style>
</head>
<body>
	<!-- ex17_el.jsp -->
	<div class="container">
		<h1 class="page-header">EL</h1>
		
		<%
			
			//자바 데이터
			int a = 10;
		
			//내장 객체 데이터
			pageContext.setAttribute("b", 20);
		
		%>
		
		<h2>표현식</h2>
		<div>a: <%= a %></div>
		<div>b: <%= pageContext.getAttribute("b") %></div>
		
		<h2>EL</h2>
		<div>a: ${a}</div>
		<div>b: ${pageContext.getAttribute("b")}</div>
		<div>b: ${b}</div> <!-- 위의 코드와 동일하다 --> 
		<!-- 내장 객체 데이터를(key값)을 가져올 수 있다 -->
		
				
		
		
		<%
		
			int c = 30;
			pageContext.setAttribute("d", 40);
			
		%>
		
		<h2>EL + 연산</h2>
		
		<div>c + 10 = <%= c + 10 %></div>
		<!-- 내장 객체 데이터의 자료형은 object -->
		<div>d + 10 = <%= (int)pageContext.getAttribute("d") + 10 %></div>
		<div>d + 10 = ${d} + 10</div>
		<!-- 형변환이 필요없다 -->
		
		<div>d + 10 = ${d + 10}</div>
		<div>d - 10 = ${d - 10}</div>
		<div>d * 10 = ${d * 10}</div>
		<div>d / 10 = ${d / 10}</div>
		<div>d % 10 = ${d % 10}</div>
		<div>d % 10 = ${d mod 10}</div>
		
		<div>d > 10 = ${d > 10}</div>
		<div>d &gt; 10 = ${d gt 10}</div>
		
		<div>d < 10 = ${d < 10}</div>
		<div>d &lt; 10 = ${d lt 10}</div>
		
		<div>d == 10 = ${d == 10}</div>
		<div>d != 10 = ${d != 10}</div>
		
		<div>${true && false }</div>
		<div>${true || false }</div>
		
		<div>${d > 0 ? "양수" : "음수" }</div> 권장
		<div>${d > 0 ? '양수' : '음수' }</div> 비권장
		
		<div>${ "홍길동".equals("홍길동") }</div> 권장				
		<div>${ "홍길동" == "홍길동" }</div> 비권장
		
		
		<%
		
			//int a;
		
			HashMap<String,String> map = new HashMap<String,String>();
		
			map.put("name", "홍길동");
			map.put("age", "20");
			map.put("job", "학생");
			
			//EL을 사용해서 map을 접근해서 특정 값을 화면에 출력하고 싶다.
			// -> 불가능 -> 가능하게 -> map을 내장 객체에 넣는다. -> EL을 사용 가능
		
			pageContext.setAttribute("map", map);
			pageContext.setAttribute("a", a);
			
		%>
		
		<h2>HahsMap 출력 지원</h2>
		
		<div>이름: <%= map.get("name") %></div>
		<div>나이: <%= Integer.parseInt(map.get("age")) - 1 %></div>
		<div>직업: <%= map.get("job") %></div>
		
		<div>이름: ${map.get("name")}</div> X
		<div>이름: ${map.name}</div> 1
		<div>이름: ${map["name"]}</div> 2
		
		<div>이름: ${map.name}</div>
		<div>나이: ${map.age - 1}</div>
		<div>직업: ${map.job}</div>
		
		<%
		
			//자바 객체 > 자바빈 or DTO(VO)
			Student s = new Student();
			
			s.setName("아무개");
			s.setKor(100);
			s.setEng(90);
			s.setMath(80);
			
			request.setAttribute("s", s);
		
		%>
		
		<h2>자바 객체 출력 지원</h2>
		
		<div>이름: <%= s.getName() %></div>
		<div>평균: <%= (s.getKor() + s.getEng() + s.getMath()) / 3.0 %></div>
		
		<div>이름: ${s.getName()}</div> X
		<div>이름: ${s.name}</div> 1
		<div>이름: ${s["name"]}</div> 2
		<div>평균: ${(s.kor + s.eng + s.math) / 3}</div>
		
		
		
		<h2>기타</h2>
		
		<%
			
			//EL은 존재하지 않는 key를 사용해도 에러 발생X -> null -> 아무것도 출력 안함
			
			//String color = null;
			//String color = "";
			String color = "yellow";
			pageContext.setAttribute("color", color);
			
		%>
		
		<div>${color}</div>
		<div>${pageContext.getAttribute("color")}</div>
		
		<div>${color == null}</div>
		<div>${pageContext.getAttribute("color") == null}</div>
		
		<!--  
			empty 연산자
			- 선언하지 않은 key -> true
			- null값 -> true
			- "" -> true
			- 값이 존재 -> false
		-->
		<div>empty: ${empty color}</div>
		
		
		
	
		
	</div>
	
	<script>

	</script>
</body>
</html>

















 --%>