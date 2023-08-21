<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
deleteProc.jsp<br>

<%
	request.setCharacterEncoding("UTF-8");
	//form에서 입력한 값
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url ="jdbc:oracle:thin:@localhost:1521:orcl";
	String dbid="jspid";
	String dbpw="jsppw";
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	try{
		//1.드라이버 로드
		Class.forName(driver);
	
		//2.접속
		conn = DriverManager.getConnection(url,dbid,dbpw);
		
		//3.sql문 작성, 분석
		String sql1 = "select * from member where id=?";
		ps = conn.prepareStatement(sql1);
		ps.setString(1,id);
		rs = ps.executeQuery();
		if(rs.next()){	//id가 일치하는 레코드가 있으면
			String dbpasswd = rs.getString("passwd");
			//테이블에서 가져온 passwd와 form에서 입력한 passwd가 일치하면
			if(dbpasswd.equals(passwd)){	
				String sql2 = "delete from member where id=? and passwd=?";
				ps = conn.prepareStatement(sql2);
				
				ps.setString(1, id);
				ps.setString(2, passwd);
				
				//4.sql문 실행
				int cnt = ps.executeUpdate();
				System.out.println("delete 성공: "+cnt);
				%>
				<script type="text/javascript">alert("delete 성공")</script>
				<%
				
			}else{	//일치하는 passwd가 없으면
				out.println("일치하는 패스워드가 없습니다.");
			}
		}else{	//일치하는 id가 없으면
			out.println("일치하는 아이디가 없습니다.");
		}
		
	}catch(ClassNotFoundException e){
		System.out.println("드라이버 로드 실패");
	}catch(SQLException e){
		System.out.println("접속 실패");
	} finally{
		try{
			if(rs != null)
				rs.close();
			if(ps != null)
				ps.close();
			if(conn != null)
				conn.close();
		}catch(SQLException e){
			System.out.println("접속 끊기실패");
		}
	}
%>

