package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter(); // 출력 위해서 필요함.
		Date now = new Date(); // data 객체 만들기.

				
//		월은 무조건 대문자! M
		SimpleDateFormat today = new SimpleDateFormat("오늘의 날짜는 yyyy년 M월 d일");
		out.println(today.format(now));
		
		
		
	}
}