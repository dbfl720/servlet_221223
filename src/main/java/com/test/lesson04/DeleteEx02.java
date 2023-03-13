package com.test.lesson04;

import java.io.*;
import java.sql.*;

import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.test.common.*;

@WebServlet("/lesson04/delete_ex02")
public class DeleteEx02 extends HttpServlet {

	
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request parameter 삭제할 id
		int id = Integer.valueOf(request.getParameter("id"));
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// delete query DB
		String deleteQuery = "delete from `new_user` where `id` = " + id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		// DB 연결 해제
		ms.disconnect();
		
		
		// 유저 목록  페이지로 리다이렉트 이동
		response.sendRedirect("/lesson04/ex02_1.jsp");
		
		
	}
}





