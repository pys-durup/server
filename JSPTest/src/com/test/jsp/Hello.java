package com.test.jsp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 1. HttpServlet을 상속받는다 상속받은 클래스는 Servlet 클래스라고 부른다
public class Hello extends HttpServlet{
	
	// 2. doGet, doPost 메서드 구현
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 3, 출력
		// 요청한 브라우저에게 돌려줄 페이지 소스를 작성하기
		PrintWriter writer = resp.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<h1>Servlet</h1>");
		writer.println("Hello");
		writer.println("<head>");
		writer.println("</html>");
		
		writer.close();
		
	}
	
}

/*
Servlet 관련 클래스들에 빨간 밑줄이 쳐져있는 경우
-> Servlet 관련 클래스를 불러오지 못한다. jar 파일

Override, IOException
모든 것들에서 에러가 발생하는 경우

위의 두가지경우 모두 기존코드가 클래스를 인식하지 못하는 경우
프로젝트 > 오른쪽 버튼 > Build Path > Configure Build Path

Libraries 탭
	1. JRE System Libraries 존재 확인 -> Java 기본
		Add Library -> JRE System Libraries 생성
	
	2. Apache Tomcat v8.5 존재 확인 -> Servlet 관련 클래스
		Add Library -> Server Rumtime 생성
 */