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

</style>
</head>
<body>
	<!-- ex10_two.jsp -->
	<div class="container">
		<h1 class="page-header">두번째 페이지</h1>
		
		<%-- <div>num: <%= num %></div> --%>
		<div>request + num : <%= request.getAttribute("num") %></div>
		
	</div>
	
	<script>

	</script>
</body>
</html>







