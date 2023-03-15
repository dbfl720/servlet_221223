package com.test.lesson04;

import java.io.*;
import java.sql.*;

import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.test.common.*;

@WebServlet("/lesson04/HONG_Insert")
public class HONG_Insert extends HttpServlet {

		@Override
		public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
			// request parameters
			String id = request.getParameter("id");
			String title = request.getParameter("title");
			String price = request.getParameter("price");
			String description = request.getParameter("description");
			String imageUrl = request.getParameter("imageUrl");
			
			
			// DB 연결
			MysqlService ms = MysqlService.getInstance();  // 싱글톤
			ms.connect();
			
			
			// 유효성 검사
			if (id != null && title != null && price != null) {
			
			// DB insert
			String insertQuery = "insert into `used_goods` (`sellerId`,`title`,`description`,`price`,`imageUrl`)"
				+"value('" + id + "', '" + title + "', '" + description + "', " + price + ", '" + imageUrl + "');";
			
			try {
				ms.update(insertQuery);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
			
			// DB 연결 해제
			ms.disconnect();
			
			// 목록 출력 페이지로 redirect
			response.sendRedirect("HONG_layout.jsp");
			
			} else {
				System.out.println("검색 정보가 없습니다.");
			}
			
		}
}
