<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.address.DBUtil" %>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

	// 1. 데이터 가져오기
	// 2. DB 작업 > delete
	// 3. 결과 출력
	// 	3.1 성공 > list.jsp 이동
	// 	3.2 실패 > edit.jsp 이동
	
	// 1.
	request.setCharacterEncoding("UTF-8");
	
	String seq = request.getParameter("seq");
	
	//System.out.println(name);
	//System.out.println(tel);
	
	
	// 2.
	Connection conn = DBUtil.open();
	
	String sql = "delete from tblAddress where seq = ?";
	
	PreparedStatement stat = conn.prepareStatement(sql);
	
	stat.setString(1, seq);
	
	int result = stat.executeUpdate();
	
	stat.close();
	conn.close();
	
	pageContext.setAttribute("result", result);

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/address/inc/asset.jsp" %>
<style>

</style>
</head>
<body>
	<!--  -->
	<div class="container">
		<%@include file="/address/inc/header.jsp" %>
		<div class="content">
			내용
		</div>
		<%@include file="/address/inc/footer.jsp" %>
	</div>
	
	   <!-- JavaScript에서 조작하기 -->
   <script>
   
      <c:if test="${result == 1}">
      alert("성공");
      location.href = "/jsp/address/list.jsp";
      </c:if>
      
      <c:if test="${result == 0}">
      alert("실패");
      location.href = "/jsp/address/del.jsp";
      </c:if>
      
   </script>

</body>
</html>