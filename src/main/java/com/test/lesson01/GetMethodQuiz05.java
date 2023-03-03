package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet{  // extends 빼먹지 말자@!!!

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
			
		// 쿼리스트링
		int number = Integer.valueOf(request.getParameter("number"));
		
		PrintWriter out = response.getWriter();	
		out.print("<html><head><title>구구단</title></head><body><ul>");
		
		for(int i = 1; i <= 9; i++) {
			out.println("<li>" + number + " X " + i + " = " + (number * i) + "</li>");  // number 파라미로 넘어오니깐..
		}

		out.print("</ul></body></html>");

	}
}
