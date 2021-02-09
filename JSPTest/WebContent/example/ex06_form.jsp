<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 조각 페이지를 넣어준다 -->
<!-- /가 WebContent 폴더를 가리킨다 -->
<%@include file="/example/inc/asset.jsp" %>
</head>
<body>
	<!-- ex06_form.jsp -->
	
	<div class="container">
	
		<h1 class="page-header">컨트롤 입력 + 전송</h1>
		
		<!-- 
		GET 일때 한글이 깨지지 않음
		POST 일때 한글이 깨짐
		-->
		<form method="POST" action="ex06_ok.jsp">
			
			<h2>텍스트 박스</h2>
			<input type="text" name="txt1">
			
			<h2>암호 박스</h2>
			<input type="password" name="txt2">
			
			<h2>다중 텍스트 박스</h2>
			<textarea name="txt3" cols="50" rows="5"></textarea>
			
			<h2>체크 박스</h2>
			<input type="checkbox" name="cb1">
			<input type="checkbox" name="cb2" value="cat">
			
			<h2>체크 박스들</h2>
			<!-- name 속성을 동일하게 설정 -->
			<input type="checkbox" name="cbs" value="red"> 빨강
			<input type="checkbox" name="cbs" value="yellow"> 노랑
			<input type="checkbox" name="cbs" value="blue"> 파랑
			
			
			<h2>라디오 버튼</h2>
			<input type="radio" name="rb" value="dog"> 강아지
			<input type="radio" name="rb" value="cat"> 고양이
			<input type="radio" name="rb" value="mouse"> 생쥐
			
			
			<h2>셀렉트 박스</h2>
			<select name="sel1">
				<option value="one">하나</option>
				<option value="two">둘</option>
				<option value="three">셋</option>
			</select>
			
			
			<h2>셀렉트 박스</h2>
			<select name="sel2" multiple size="5">
				<option value="one">하나</option>
				<option value="two">둘</option>
				<option value="three">셋</option>
			</select>
			
			
			<h2>히든 태그</h2>
			<input type="hidden" name="id" value="hong">
			
			
			
			
			<hr>
			<input type="submit" class="btn btn-primary" value="전송하기">
		</form>
		
		<hr>
		
		<!-- <a href="ex06_ok.jsp?txt1=">이동하기</a> txt는 빈문자열-->
		<!-- <a href="ex06_ok.jsp">이동하기</a> txt는 null-->
	
	</div>
</body>
</html>