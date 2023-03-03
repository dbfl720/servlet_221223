package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet {
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		// response 응답 정의(헤더에 들어가는 정보).
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8"); // 한글 깨지지 않게.
		
		// request parameter 받기
		String address = request.getParameter("address");
		String payCard = request.getParameter("payCard");
		int price = Integer.parseInt(request.getParameter("price")); // valueOf 써도 됨.
		
		
		
		// 출력, 응답
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>주문 결과</title></head><body>");

		if(!address.contains("서울시")) {
			out.println("배달 불가 지역입니다.");
		} else if(payCard.equals("신한카드")){ 
			out.println("결제 불가 카드 입니다.");
		} else {
			out.print(address + " <b>배달 준비중<b><br></br>");
			out.print("결제금액: " + price + "원");
		}
		
		
		// 선생님코드
//		if (address.contains("서울시") == false) {
//			out.print("배달 불가 지역입니다.");
//		} else if(payCard.equals("신한카드")) {  // string 비교는 equals()
//			out.print("결제 불가 카드 입니다.");
//		} else {
//			out.print(address + " <b>배달 준비중<b><br>");
//			out.print("결제금액: " + price + "원");
//		}
//		
//		// 선생님코드
//		if (address.contains("서울시") == false) {
//			out.print("배달 불가 지역입니다.");
//			out.print("</body></html>");
//			return;
//		}
		
		
		
		
		out.print("</body></html>");
	}
}
