package com.test.lesson04;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class Quiz01 extends HttpServlet{

	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/plain");
		
		
		// db 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();  // !!!!!!!**** 실질적인 DB연결 (꼭 써야함!)
		
		
		// query insert
		String insertQuery = 
		
	}
	
}
