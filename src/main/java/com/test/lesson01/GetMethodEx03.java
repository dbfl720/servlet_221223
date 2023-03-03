package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpResponse;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// web - get, post 차이 알아야함! 매우 중요! 면접문제 자주 나옴.
// get : status line, header 만 있는 것. 브라우저, a클릭, body가 없다(reqeust).
// post : 
// QueryString 쿼리스트링 '?'
@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/json");
		response.setCharacterEncoding("utf-8");
		
		// 쿼리스트링에 들어있는 파라미터 꺼내기
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		
		// age가 없으면 null이다.
		int age = Integer.parseInt(request.getParameter("age"));
		
		
		PrintWriter out = response.getWriter();
//		out.println("응답");
//		out.println("user_id:" + userId);
//		out.println("name:" + name);
//		out.println("age:" + age);
		
		
		
		// "{"키" : "값", "키1":"값2"}" => JSON String
		// {"user_id":"marobiana"}, "name":"홍유리", "age":30}  // 한 쌍(키,밸류)
		out.print("{\"user_id\":\"" + userId + "\", "
				+ "\"name\":\"" + name + "\", "
				+ "\"age\":" + age + "}");
		
	}
}
