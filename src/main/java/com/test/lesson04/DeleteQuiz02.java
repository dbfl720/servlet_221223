package com.test.lesson04;

import java.io.*;
import java.sql.*;

import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.test.common.*;

@WebServlet("/lesson04/delete_quiz02")
public class DeleteQuiz02 extends HttpServlet {

		@Override
//		앵커태크를 통해서 넘어오는 것이기 때문에 doGet으로 해야됨!!!!
		public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
			// request parameter
			int id = Integer.valueOf(request.getParameter("id"));
			
			//  DB 연결
			MysqlService ms = MysqlService.getInstance();
			ms.connect();
			
			// delete query DB
			String deleteQuery = "delete from `lists` where `id` = " + id;
			try {
				ms.update(deleteQuery);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
			
			// DB 연결 해제
			ms.disconnect();
			
			// 목록 출력 페이지로 redirect 이동
			response.sendRedirect("/lesson04/quiz02.jsp");
		}
}
