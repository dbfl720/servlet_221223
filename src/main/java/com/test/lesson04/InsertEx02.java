package com.test.lesson04;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/insert_ex02")
public class InsertEx02 extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
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
		
		// DB 연결 해제
		ms.disconnect();
		// 유저목록 화면으로 Redirect
		
	}

}
