<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
insertProc.jsp<jsp><jsp>

<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String uname = request.getParameter("uname");
	String dname = request.getParameter("dname");
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url ="jdbc:oracle:thin:@localhost:1521:orcl";
	String dbid="jspid";
	String dbpw="jsppw";
	Connection conn = null;
	PreparedStatement ps = null;
	
	try{
		//1 드라이버 로드
		Class.forName(driver);
	
		//2.접속
		conn = DriverManager.getConnection(url,dbid,dbpw);
		
		//3.sql문 작성, 분석
		String sql = "insert into register values(?,?,?,?,?,?)";
		ps = conn.prepareStatement(sql);
		
		ps.setString(1, id);
		ps.setString(2, passwd);
		ps.setString(3, name);
		ps.setString(4, gender);
		ps.setString(5, uname);
		ps.setString(6, dname);
		
		//4.sql문 실행
		int cnt = ps.executeUpdate();
		System.out.println("insert 성공: "+cnt);
		out.println("insert 성공");
			
	}catch(ClassNotFoundException e){
		System.out.println("드라이버 로드 실패");
	}catch(SQLException e){
		System.out.println("접속,분석,insert,실행,로드 실패");
	} finally{
		try{
			if(ps!=null)
				ps.close();
			if(conn!=null)
				conn.close();
		}catch(SQLException e){
			System.out.println("접속 끊기실패");
		}
	}
%>

<!-- 2초뒤에 select.jsp로 새로고침 -->
<meta http-equiv="refresh" content="2; url=select.jsp">
