<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<%
	List<String> list = new ArrayList<>();
	
	%>
	
	
	<!-- jsp의 선언문 <%! %> 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요. -->
	<%!	
	
	
	 /* 선생님 코드 */
       public int getSum(int n) {
		int sum = 0;
		for (int i = 1; i <= n; i++) {
			sum += i;
		}
		return sum;
	}     
	%>
	

	
	
	
	
	
	
	
	<!--2. 스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요.  -->
	
	<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0; i < scores.length; i++ ){  // 0 ~ 4
		sum += scores[i];   // omg... 배열이니깐.. scores[i] .... ㅠ
	}
	double average = sum / (double)scores.length;
	%>
	

	
	
	
	
	
	
	<!-- 3. 아래 채점표로 시험점수가 몇점인지 구하세요. -->
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int b = 0;
	for (int i = 0; i < scoreList.size(); i++){
		if(scoreList.get(i).equals("O")){
			b += 100 / scoreList.size();
		}
	}
	%>
	
	
	
	
	
	<!--4.주어진 생년월일을 가진 사람의 나이를 구하세요.  -->
	
	<%
	String birthDay = "20010820";
	String yearStr = birthDay.substring(0,4);  // substring 연도 잘라내기 !! 
	//out.print(yearStr);
	int age = 2023 - Integer.parseInt(yearStr) + 1;
	%>
	

	
	
	
	
	<%-- 출력할 때는 html 구간에서 한다!!  --%>
	<h1>1부터 50까지의 합은 <%= getSum(50) %></h1>
	<h1> 평균 점수는 <%= average %>입니다.</h1>
	<h1>채점 결과는 <%= b %>점 입니다.</h1>
	<h1><%=birthDay %>의 나이는 <%=age %>세입니다.</h1>
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>