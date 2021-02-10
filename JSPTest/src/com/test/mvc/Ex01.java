package com.test.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 1. 브라우저의 요청을 받는 첫번째 알바생
public class Ex01 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 담당 업무 구현 -> 비즈니스 코드
		
		String cup = "얼음이 담긴 컵";
		
		// JSP 호출
		req.setAttribute("cup", cup);
		
		// pageContext.forward();
		// pageContext는 jsp에서만 사용할 수 있는
		
		// pageContext.forward()와 똑같은 역할을 하는 다른 도구를 제공해 준다
		// RequestDispatcher dispatcher = req.getRequestDispatcher("/hello.jsp");
		
		// WEB-INF 안에 있는 jsp 파일을 호출
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/hi.jsp");
		// 왜 WEB-INF폴더에 파일을 더 만들어서 호출?
		// 뷰 페이지를 직접 접근할 수 없도록 WEB-INF 하위에서 관리한다
		// 잘못된 접근으로 인한 실수/에러 발생을 줄이기 위해서.
		// Servlet을 통해서는 WEB-INF 폴더안의 파일을 호출할 수 있다
		
		
		dispatcher.forward(req, resp); 
		// URL 주소 : http://localhost:8090/jsp/ex01.do
		// forward 메서드는 URL에 이전 주소가 표시된다
		
		// Servlet파일은 MVC 디자인 패턴에서 Controller라고 부른다
		// 데이터 처리와 관련된 코드를 Model이라고 부릅니다 / 데이터를 전달
		// jsp 파일은 화면에 출력을 담당하는 View 입니다 
		
		// Controller(비즈니스 구현 + 순서 제어)
		// Model(데이터 관련 업무 수행)
		// View(출력 업무)
	}
}
