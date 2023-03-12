package com.test.lesson04;

import java.io.*;
import java.sql.*;

import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.test.common.*;

@WebServlet("/lesson04/quiz01")
public class Quiz01 extends HttpServlet{

	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		
		// db 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();  // !!!!!!!**** 실질적인 DB연결 (꼭 써야함!)
		
		
		// query insert
//		String insertQuery = "insert into `real_estate` (`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`)"
//				+ "value(3, '헤라펠리스 101동 5305호', '350', '매매', 1500000, NULL)";
//		try {
//			ms.update(insertQuery);
//		} catch (SQLException e1) {
//			e1.printStackTrace();
//		}
		
		
		// query select => 출력
		PrintWriter out = response.getWriter();
		String selectQuery = 
				"select * from `real_estate` order by `id`desc limit 10";
		try {
			ResultSet res = ms.select(selectQuery);
			while (res.next()) {
				out.print("매물 주소: " + res.getString("address") + ", ");
				out.print("면적: " + res.getInt("area") + ", ");
				out.println("타입: " + res.getString("type"));
			}
		}	catch (SQLException e) {
			e.printStackTrace();
		}
		
		// db 연결 해제
		ms.disconnect();
	}
	
}
