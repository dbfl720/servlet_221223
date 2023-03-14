package com.test.lesson04;

import java.io.*;
import java.sql.*;

import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.test.common.*;

@WebServlet("/lesson04/insert_ex02")
public class InsertEx02 extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request parameteres 꺼낸다.
			String name = request.getParameter("name");
			String yyyymmdd = request.getParameter("yyyymmdd");
			String email = request.getParameter("email");
			String introduce = request.getParameter("introduce");
			
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// DB insert
		String insertQuery = "insert into `new_user` (`name`,`yyyymmdd`,`email`,`introduce`)"
				+ "value('" + name + "','"  
				+  yyyymmdd + "', '" + email + "', '" 
				+ introduce + "')"; 
		
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		// DB 연결 해제
		ms.disconnect();
		
		// 유저목록 화면으로 Redirect
		response.sendRedirect("/lesson04/ex02_1.jsp");
	}

}