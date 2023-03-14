package com.test.lesson04;

import java.io.*;
import java.sql.*;

import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.test.common.*;

@WebServlet("/lesson04/insert_quiz02")
public class InsertQuiz02 extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request parameters
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// DB연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// DB insert
		String insertQuery = "insert into `lists` (`name`, `url`)"
				+ "value('" + name + "','" + url + "')";
		
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		// DB 연결 해제
		ms.disconnect();
		
		// 목록 출력 페이지로 Redirect
		response.sendRedirect("/lesson04/quiz02.jsp");
	}
}
