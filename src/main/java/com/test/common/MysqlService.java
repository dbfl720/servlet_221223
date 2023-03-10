package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Driver;

public class MysqlService {
	// 필드
	private static MysqlService mysqlService = null;
	
	// 도메인 뒤에 접속할 데이터베이스명까지 넣는다.!!! 중요 *****
	private String url = "jdbc:mysql://localhost:3306/test_221223";
	private String id = "root";
	private String password = "rootroot";
	
	private Connection conn;
	private Statement statement;
	private ResultSet res;
	
	// 메소드
	
	// Singleton 패턴: MysqlService라는 객체가 단 하나만 생성될 수 있도록 하는 디자인 패턴/ getInstance 싱글톤에서 많이 쓰는 이름.
	private MysqlService() {
	}
	
	
	public static MysqlService getInstance() {
		if (mysqlService == null) {
			mysqlService = new MysqlService();
		} 
		return mysqlService;
	}
	
	
	
	// DB 접속
	public void connect() {
		    // 1. 드라이버 메모리에 로딩
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 2. DB 연결
			conn = DriverManager.getConnection(url, id, password);
			
			
			// 3. 쿼리할 수 있는 준비  statement 
			statement = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	
	
	// DB 연결 해제
	public void disconnect() {
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	// R     CUD 
	
	
	// R: read, select
	public ResultSet select(String query) throws SQLException {  // 쿼리짠 개발자 잘못이라 에러를 날린다.
		res = statement.executeQuery(query);
		return res;
	}
	
	
	
	// CUD: insert, update, delete
	public void update(String query) throws SQLException {  // 쿼리짠 개발자 잘못이라 에러를 날린다. (내가 책임이잔 혹은 나를 부른애가 책임이냐 생각하며 에러처리 하자.)
		statement.executeUpdate(query);
	}
	
	
	
}
