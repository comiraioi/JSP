<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
insertProc.jsp<br>

<%
	request.setCharacterEncoding("UTF-8");
	//form에서 입력한 값
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String reg_date = request.getParameter("reg_date");
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url ="jdbc:oracle:thin:@localhost:1521:orcl";
	String dbid="jspid";
	String dbpw="jsppw";
	Connection conn = null ;
	
	try{
		//1.드라이버 로드
		Class.forName(driver);
	
		//2.접속
		conn = DriverManager.getConnection(url,dbid,dbpw);
		
		//3.sql문 작성, 분석
		String sql = "insert into member values(?,?,?,default)";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		ps.setString(1, id);
		ps.setString(2, passwd);
		ps.setString(3, name);
		
		//4.sql문 실행
		int cnt = ps.executeUpdate();
		System.out.println("insert 성공: "+cnt);
		out.println("insert 성공");
			
	}catch(ClassNotFoundException e){
		System.out.println("드라이버 로드 실패");
	}catch(SQLException e){
		System.out.println("접속 실패");
	} finally{
		try{
			conn.close();
		}catch(SQLException e){
			System.out.println("접속 끊기실패");
		}
	}
%>

<!-- 2초뒤에 select.jsp로 새로고침 -->
<!-- <meta http-equiv="refresh" content="2; url=select.jsp"> -->

<!-- 거쳐가는 페이지, select.jsp로 넘어감 -->
<!-- forward와 redirect의 공통점과 차이점? -->
<!-- <jsp:forward page="select.jsp"/> -->
<% response.sendRedirect("select.jsp"); %>

<!-- select.jsp의 결과를 포함해서 출력 -->
<!-- <jsp:include page="select.jsp"/> -->
