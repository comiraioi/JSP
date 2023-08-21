package myPkg;
import java.sql.*;
import java.util.ArrayList;

public class MartDao {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url ="jdbc:oracle:thin:@localhost:1521:orcl";
	String dbid="jspid";
	String dbpw="jsppw";
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	int cnt = -1;
	
	public MartDao() {
		try {
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
	public ArrayList<MartBean> getAllMart() {
		//EmplBean 객체를 담는 lists
		ArrayList<MartBean> lists = new ArrayList<MartBean>();
		
		//3.sql문 작성, 분석
		String sql = "select * from emart order by num asc";
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
				//int num = rs.getInt("num");
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String product = rs.getString("product");
				String time = rs.getString("time");
				String approve = rs.getString("approve");
				String agree = rs.getString("agree");
				
				//한 행의 정보를 담는 MartBean 객체 생성
				MartBean mb = new MartBean();
				mb.setNum(rs.getInt("num"));
				mb.setId(id);
				mb.setPw(pw);
				mb.setProduct(product);
				mb.setTime(time);
				mb.setApprove(approve);
				mb.setAgree(agree);
				
				lists.add(mb);
			}//while
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
		
		return lists;
		
	}//getAllMart
	
	/* insert */
	public int insertMart(MartBean mb) {
		//3.sql문 작성, 분석
		String sql = "insert into emart values(e_seq.nextval, ?, ?, ?, ? ,?, ?)";
		try {
			ps = conn.prepareStatement(sql);
			if (ps != null)
				System.out.println("SQL문 분석 성공");
			else
				System.out.println("SQL문 분석 실패");
							
			ps.setString(1, mb.getId());
			ps.setString(2, mb.getPw());
			ps.setString(3, mb.getProduct());
			ps.setString(4, mb.getTime());
			ps.setString(5, mb.getApprove());
			ps.setString(6, mb.getAgree());
							
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
		
	}//insertMart
	
	/* 매개변수로 받은 해당 번호의 한 행의 데이터를 가져오는 메서드 */
	public MartBean getMartbyNum(String num) {
		MartBean mb = null;
		
		//3.sql문 작성, 분석
		String sql = "select * from emart where num=?";
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
				mb = new MartBean();
				
				mb.setNum(rs.getInt("num"));
				mb.setId(rs.getString("id"));
				mb.setPw(rs.getString("pw"));
				mb.setProduct(rs.getString("product"));
				mb.setTime(rs.getString("time"));
				mb.setApprove(rs.getString("approve"));
				mb.setAgree(rs.getString("agree"));
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
		
		return mb;
		
	}//getMartbyNum
	
	/* update */
	public int updateMart(MartBean mb) {
		//3.sql문 작성, 분석
		String sql = "update emart set id=?, pw=?, product=?, time=?, approve=?, agree=?  where num=?";
		try {
			ps = conn.prepareStatement(sql);
			if (ps != null)
				System.out.println("SQL문 분석 성공");
			else
				System.out.println("SQL문 분석 실패");
							
			ps.setString(1, mb.getId());
			ps.setString(2, mb.getPw());
			ps.setString(3, mb.getProduct());
			ps.setString(4, mb.getTime());
			ps.setString(5, mb.getApprove());
			ps.setString(6, mb.getAgree());
			ps.setInt(7, mb.getNum());
							
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
		
	}//updateMart
	
	/* delete */
	public int deleteMart(String num) {
		//3.sql문 작성, 분석
		String sql = "delete from emart where num=?";
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
		
	}//deleteMart
	
}
