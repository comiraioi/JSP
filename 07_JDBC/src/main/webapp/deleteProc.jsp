<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
deleteProc.jsp<br>

<%
	request.setCharacterEncoding("UTF-8");
	//form에서 입력한 값
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
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
		String sql1 = "select passwd from register where id=?";
		ps = conn.prepareStatement(sql1);
		ps.setString(1,id);
		rs = ps.executeQuery();
		if(rs.next()){	//id가 일치하는 레코드가 있으면
			String dbpasswd = rs.getString("passwd");
			//테이블에서 가져온 passwd와 form에서 입력한 passwd가 일치하면
			if(dbpasswd.equals(passwd)){	
				String sql2 = "delete from register where id=?";
				ps = conn.prepareStatement(sql2);
				
				ps.setString(1, id);
				ps.setString(2, passwd);
				
				//4.sql문 실행
				int cnt = ps.executeUpdate();
				if(cnt>0){
				%>
					<script type="text/javascript">
						alert("delete 성공.");
					</script>
					<meta http-equiv="refresh" content="0; url=select.jsp">
				<%		
				}//if(cnt>0)
			}else{
			%>
				<script type="text/javascript">
					alert("비밀번호가 일치하지 않습니다.");
				</script>
				<meta http-equiv="refresh" content="0; url=deleteForm.jsp">
			<%
			}//if(dbpasswd.equals(passwd))~else
		}else{
		%>
			<script type="text/javascript">
				alert("일치하는 아이디가 없습니다.");
			</script>
			<meta http-equiv="refresh" content="0; url=deleteForm.jsp">
<%
		}//if(rs.next())~else
	}catch(Exception e){
		System.out.println("예외 발생");
	}finally{
		try{
			if(ps != null)
				ps.close();
			if(rs != null)
				rs.close();
			if(conn != null)
				conn.close();
			
			System.out.println("접속 끊기 성공");
			
		}catch(SQLException e){
				System.out.println("접속 끊기 실패");
		}
	}
%>