<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.address.DBUtil" %>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

	

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/address/inc/asset.jsp" %>
<style>

	#tbl th {
		width: 120px;
		text-align: center;
		vertical-align: middle;
		background-color: #EEE;
	}
	
	#tbl tx {
		width: 550px;
	}
	
</style>
</head>
<body>
	<!--  -->
	<div class="container">
		<%@include file="/address/inc/header.jsp" %>
		<div class="content">
			<h2>주소록 작성하기</h2>
			
			<!-- action 절대경로 -->
			<form method="POST" action="/jsp/address/addok.jsp">
			<table class="table table-bordered" id="tbl">
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" id="name" required class="form-control short"></td>
				</tr>
				<tr>
					<th>나이</th>
					<td><input type="text" name="age" id="age" required class="form-control short"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="address" id="address" required class="form-control short"></td>
				</tr>
				<tr>
					<th>성별</th>
					<td>
						<select name="gender" id="gender" class="form-control short">
							<option value="m">남자</option>
							<option value="f">여자</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="tel" id="tel" required class="form-control medium"></td>
				</tr>
			</table>
			
			<div class="btns">
				<input type="button" value="돌아가기" class="btn btn-default" onclick="location.href='/jsp/address/list.jps';">
				<input type="submit" value="작성하기" class="btn btn-success">
			</div>
			</form>
		</div>
		<%@include file="/address/inc/footer.jsp" %>
	</div>
	
	<script>
	
		dummy();
		
		function dummy() {
			
			let name = [ "홍길동", "아무개", "하하하"];
			let address = [ "서울시 강동구 길동", "서울시 강서구 화곡동", "서울시 강남구 대치동" ];
			let gender = [ "m", "f"];
			let tel = ["010-1111-1111", "010-2222-2222", "010-3333-3333"];
			
			$("#name").val(name[parseInt(Math.random() * name.length)]);
			$("#address").val(address[parseInt(Math.random() * name.length)]);
			$("#gender").val(gender[parseInt(Math.random() * name.length)]);
			$("#tel").val(tel[parseInt(Math.random() * name.length)]);
			$("#age").val(parseInt(Math.random() * 20) + 20);
		}

	</script>
</body>
</html>