package com.test.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 1. 서블릿
public class Hello extends HttpServlet{
	
	
	//2. doGet / doPost 구현
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//3. PrintWriter 페이지 만들기 -> X
		
		//3. JSP 페이지 호출하기 수행
		
		// 페이지 이동하기
		// <form> + 데이터 전달
		// <a> + 데이터 전달(?seq=1)
		// location.href + 데이터 전달(?seq=1)
		// ------------------------------------
		// response.sendRedirect() + 데이터전달 X
		// pageContext.forward() + 데이터전달 O
		
		// 매개변수로 Response 객체가 있으므로 사용합니다
		// resp.sendRedirect("hello.jsp");
		
		// 상대표현 앞에 ./가 생략되어 있다
		// .의 의미는 현재파일이 있는 폴더 -> 현재 폴더에 jsp 파일이 없다
		// 현재 위치는 src.com.test.mvc 경로를 어떻게 지정해야 하는가?
		// 일단 잘 모를 경우 같은폴더에 있다고 가정하고 URL을 적는다
		
		// http://localhost:8090/jsp/hello.jsp
		// "/jsp"
		// Context Root Path
		// 직접 지정할 수 있고, 지정을 안하면 프로젝트 명으로 자동 지정됩니다
		// 외부에서 바라봤을때 "http://localhost:8090/jsp/" -> WebContent 폴더를 가리키는 것으로 약속되어 있다
		// "http://localhost:8090/jsp/" -> WebContent와 동일한 표현
		
		
		// 서블릿이 호출된 후 resp.sendRedirect("hello.jsp"); 를 이용해서
		// jsp를 호출
		// 서블릿이 jsp를 호출 한 경우
		
		
		// 서블릿이 서블릿을 호출 할 수 있다
		// JSP가 JSP를 호출할 수 있다
		// 서블릿이 JSP를 호출할 수 있다
		// JSP가 서블릿을 호출할 있다
		// 전부 JAVA이기 때문에 가능하다
		
		
		// 절대 경로로 지정한 경우
		// resp.sendRedirect("/hello.jsp");
		// URL 주소 : http://localhost:8090/hello.jsp
		// "/jsp" - Context Root Path가 빠져서 페이지를 찾을 수 없다
		// "/jsp"를 추가해서 사용할 수 있다
		
		resp.sendRedirect("/jsp/hello.jsp");
		
		// "/" 가 나타내는 위치
		// http://localhost:8090/
		// WebContent를 나타내는 표현은 -> "/jsp"
		
		
		
		// 왜 Servlet을 만들었고, 왜 Servlet에서 JSP를 호출하는가?
		
	}
}





















