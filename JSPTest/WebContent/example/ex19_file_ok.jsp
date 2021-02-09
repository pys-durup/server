<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	// 1. 데이터 가져오기
	// 	문자열 -> request.getParameter()
	//	파일 -> 외부 라이브러리를 이용해서 가져온다
	// 	cos.jar의 MultipartRequest 사용
	
	/* 
		
		<form enctype="multipart/form-data"> 일때
		request.getParameter()가 동작하지 않는다
		문자열과 비문자열을 같이 보내는 enctype이기 때문에
		문자열만 처리하는 getParameter은 동작하지 않는다
		
		-> 첨부파일을 보낼때는 MultipartRequest를 이용해서 처리
	
	*/
	
	// MultipartRequest 클래스(객체)
	// request의 기능을 그대로 구현 + 파일 업로드 기능 추가 구현
	
	request.setCharacterEncoding("UTF-8");
	
	/* String txt = request.getParameter("txt");  */
	/* System.out.println(txt); // null 값이 찍힌다 */

	// 업로드할 파일이 저장될 폴더의 위치를 지정(로컬 절대 경로로 지정)
	// WebContent > example > files
	String path = application.getRealPath("/example/files");
	
	System.out.println(path);
	// C:\class\server\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\JSPTest\example\files
	
	
	// 업로드 파일의 최대 크기 지정(제한)
	// 바이트
	int size = 1024 * 1024 * 100; // 100MB
	
	// 변수 선언
	String txt = ""; // 텍스트 입력값
	String filename = ""; // 첨부 파일 명
	String orgfilename = ""; // 첨부 파일 명
	
	try {
		
		// MultipartRequest 객체 생성 (**********)
		// MultipartRequest 객체의 생서자에서 파일 업로드도 동시에 처리된다.(*******)
		MultipartRequest multi = new MultipartRequest(
										request, // 원래 request -> Wrapper 클래스 - request의 기능을 그대로 가져올 수 있다
										path, // 업로드 위치
										size, // 최대 크기
										"UTF-8", // 인코딩 방식 지정
										new DefaultFileRenamePolicy() // 파일명 관리 객체
									);
		
		// 데이터 가져오기
		txt = multi.getParameter("txt");
		
		// 업로드는 종료된 상태에서
		// 업로드된 파일을 제어하기 위해서는?
		// 업로드한 파일의 정보가져오기
		filename = multi.getFilesystemName("attach");
		orgfilename = multi.getOriginalFileName("attach");
		
		
		
	} catch(Exception e) {
		System.out.println(e);
	}
	
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
	<!--  -->
	<div class="container">
		<h1 class="page-header">결과</h1>
		
		<div class="well">
			<strong>문자열:</strong>
			<%= txt %>
		</div>
		<div class="well">
			<strong>파일명:</strong>
			<%= filename %>
		</div>
		<div class="well">
			<strong>파일명:</strong>
			<%= orgfilename %>
		</div>

		<hr>
		
		<h2>파일 다운로드</h2>
		
		<div>
			<a href="/jsp/example/files/<%= filename %>"><%= filename %></a>
			<!-- 이미지 파일의 경우 다운로드가 아닌 파일이 열린다 -->
			<!-- 브라우저가 열 수 있는 파일들은 해석해서 보여준다 -->
			
			
		</div>
		
		<div>
			<a href="download.jsp?filename=<%= filename %>&orgfilename=<%= orgfilename %>"><%= orgfilename %></a>
		</div>
		
		<div>
			<a href="/jsp/example/files/<%= filename %>" download><%= filename %></a>
			<!-- download 무조건 다운로드 할 수 있도록 하는 키워드 -> 최신 브라우저에만 적용 -->
		</div>
		
		
	</div>
	
	<script>

	</script>
</body>
</html>