package myPkg;
import java.sql.*;
import java.util.ArrayList;

public class EmplDao {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url ="jdbc:oracle:thin:@localhost:1521:orcl";
	String dbid="jspid";
	String dbpw="jsppw";
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	int cnt = -1;
	
	public EmplDao() {
		try {
			//System.out.println("EmplDao()");
			//1.드라이버 로드
			Class.forName(driver);
			//2.접속
			conn = DriverManager.getConnection(url,dbid,dbpw);
		}catch(ClassNotFoundException e){
			System.out.println("드라이버 로드 실패");
		}catch(SQLException e){
			System.out.println("접속 실패");
		}
	}//생성자
	
	/* select */
	public ArrayList<EmplBean> getAllEmpl() {
		//EmplBean 객체를 담는 lists
		ArrayList<EmplBean> lists = new ArrayList<EmplBean>();
		
		//3.sql문 작성, 분석
		String sql = "select * from empl";
		try {
			ps = conn.prepareStatement(sql);
			if (ps != null)
				System.out.println("SQL문 분석 성공");
			else
				System.out.println("SQL문 분석 실패");
			
			//4.sql문 실행
			rs = ps.executeQuery();
			if (rs != null)
				System.out.println("select 실행 성공");
			else
				System.out.println("select 실행 실패");
			
			while(rs.next()){
				int num = rs.getInt("num");
				String name = rs.getString("name");
				int deptno = rs.getInt("deptno");
				int salary = rs.getInt("salary");
				
				//한 행의 정보를 담는 EmplBean 객체 생성
				EmplBean eb = new EmplBean();
				eb.setNum(num);
				eb.setName(name);
				eb.setDeptno(deptno);
				eb.setSalary(salary);
				
				lists.add(eb);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			//5.접속 끊기
			try {
				if(conn != null)
					conn.close();
				if(ps != null)
					ps.close();
				if(rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		//System.out.println("lists.size(): "+lists.size());
		return lists;
		
	}//getAllEmpl
	
	/* insert */
	public int insertEmpl(EmplBean eb){
		//3.sql문 작성, 분석
		String sql = "insert into empl values(eseq.nextval, ?, ?, ?)";
		try {
			ps = conn.prepareStatement(sql);
			if (ps != null)
				System.out.println("SQL문 분석 성공");
			else
				System.out.println("SQL문 분석 실패");
					
			ps.setString(1, eb.getName());
			ps.setInt(2, eb.getDeptno());
			ps.setInt(3, eb.getSalary());
					
			//4.sql문 실행
			cnt = ps.executeUpdate();
			if(cnt>0)
				System.out.println("insert 성공");
			else
				System.out.println("insert 실패");
					
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			//5.접속 끊기
			try {
				if(conn != null)
					conn.close();
				if(ps != null)
					ps.close();
				if(rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return cnt;
	}
	
	/* 매개변수로 받은 해당 번호의 한 행의 데이터를 가져오는 메서드 */
	public EmplBean getEmplbyNum(String num) {
		EmplBean eb = null;
		
		//3.sql문 작성, 분석
		String sql = "select * from empl where num=?";
		try {
			ps = conn.prepareStatement(sql);
			if (ps != null)
				System.out.println("SQL문 분석 성공");
			else
				System.out.println("SQL문 분석 실패");
							
			ps.setInt(1, Integer.parseInt(num));
						
			//4.sql문 실행
			rs = ps.executeQuery();
			if (rs != null)
				System.out.println("select 실행 성공");
			else
				System.out.println("select 실행 실패");
			
			if(rs.next()) {
				//한 행의 정보를 담는 EmplBean 객체 생성
				eb = new EmplBean();
				
				eb.setNum(rs.getInt("num"));
				eb.setName(rs.getString("name"));
				eb.setDeptno(rs.getInt("deptno"));
				eb.setSalary(rs.getInt("salary"));
			}
							
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			//5.접속 끊기
			try {
				if(conn != null)
					conn.close();
				if(ps != null)
					ps.close();
				if(rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return eb;
		
	}//getEmplbyNum
	
	/* update */
	public int updateEmpl(EmplBean eb){
		//3.sql문 작성, 분석
		String sql = "update empl set name=?, deptno=?, salary=?  where num=?";
		try {
			ps = conn.prepareStatement(sql);
			if (ps != null)
				System.out.println("SQL문 분석 성공");
			else
				System.out.println("SQL문 분석 실패");
							
			ps.setString(1, eb.getName());
			ps.setInt(2, eb.getDeptno());
			ps.setInt(3, eb.getSalary());
			ps.setInt(4, eb.getNum());
							
			//4.sql문 실행
			cnt = ps.executeUpdate();
			if(cnt>0)
				System.out.println("update 성공");
			else
				System.out.println("update 실패");
							
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			//5.접속 끊기
			try {
				if(conn != null)
					conn.close();
				if(ps != null)
					ps.close();
				if(rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
				
		return cnt;
	
	}//updateEmpl
	
	/* delete */
	public int deleteEmpl(String num) {
		//3.sql문 작성, 분석
		String sql = "delete from empl where num=?";
		try {
			ps = conn.prepareStatement(sql);
			if (ps != null)
				System.out.println("SQL문 분석 성공");
			else
				System.out.println("SQL문 분석 실패");
							
			ps.setInt(1, Integer.parseInt(num));
							
			//4.sql문 실행
			cnt = ps.executeUpdate();
			if(cnt>0)
				System.out.println("delete 성공");
			else
				System.out.println("delete 실패");
							
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			//5.접속 끊기
			try {
				if(conn != null)
					conn.close();
				if(ps != null)
					ps.close();
				if(rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
				
		return cnt;		
		
	}//deleteEmpl
	
}
