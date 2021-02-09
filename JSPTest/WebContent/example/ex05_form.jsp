<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- ex05_form.jsp -->
	
	<h1>데이터 전송하기</h1>
	
	<!-- form 태그를 사용하는 방식은 거의 대부분 POST를 사용한다 -->
	
	<h2>POST 방식으로 전송하기</h2>
	<form method="POST" action="ex05_ok.jsp">
		숫자 : <input type="text" name="num"> <!-- Client 에서 Server로 보낼때는 name 속성을 사용 -->
		<hr>
		문자 : <input type="text" name="txt">
		<hr>
		<textarea name="txt2"></textarea>
		<hr>
		<input type="submit" value="전송하기">
	</form>
	
	<h2>Get 방식으로 전송하기</h2>
		<form method="GET" action="ex05_ok.jsp">
		숫자 : <input type="text" name="num"> <!-- Client 에서 Server로 보낼때는 name 속성을 사용 -->
		<hr>
		문자 : <input type="text" name="txt">
		<hr>
		<textarea name="txt2"></textarea>
		<hr>
		<input type="submit" value="전송하기">
	</form>
	
	<h2>링크 사용해서 데이터 전달하기 = GET 방식 전송</h2>
	<a href="ex05_ok.jsp?num=123&txt=hong&txt2=java">ex05_ok.jsp 페이지로 이동하기</a>
	<!-- 직접 URL에 데이터를 넣어줄 수 있다 = GET 방식과 동일-->
	
	
	<h2> JavaScript 사용하기</h2>
	
	<button type="button" id="btn1">클릭하세요</button>
	
	
	<script>
	
		document.getElementById("btn1").onclick = function() {
			
			// 절대 공백문자 사용 금지
			// url?key=value
			// url?key=value&key=value
			// URL 에서 넘기는 데이터를 쿼리스트링 이라고 부른다
			location.href = "ex05_ok.jsp?num=111&txt=버튼&txt2=클릭했습니다."
					
		}
	
	</script>
	
	
	
	
</body>
</html>




















