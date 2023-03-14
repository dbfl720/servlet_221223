package com.test.lesson04;

import java.io.*;
import java.sql.*;

import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.test.common.*;

@WebServlet("/lesson04/insert_quiz02")
public class InsertQuiz02 extends HttpServlet {
	
	@Override
//	form태그에서 썼던 post방식과 일치해야 하기 때문에 doPost 씀.
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request parameters
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		// 중간 점검 해야한다. 브레이크  포인트 걸어서 name url 넘어오는지 체크해야됨!! 항상!!! 
		
		// DB연결
		MysqlService ms = MysqlService.getInstance();  // 싱글톤.
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
		
		// 즐겨찾기 목록 페이지로 Redirect
		response.sendRedirect("/lesson04/quiz02.jsp");
	}
}
