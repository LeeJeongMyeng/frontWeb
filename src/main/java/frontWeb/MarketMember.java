package frontWeb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class MarketMember {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	
	
	public void SignUpMember(MarketMemverVO m) {
		String sql = "INSERT INTO MARKETUSER2 VALUES ('mem-'||MARKETUSER2_seq.nextval,?,?,?,?,?,?,?,?,?,?,1000)";
		try {
			con = DB.con();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
		
			pstmt.setString(1,m.getId());
			pstmt.setString(2,m.getPassword());
			pstmt.setString(3,m.getUsername());
			pstmt.setString(4,m.getEmail());
			pstmt.setString(5,m.getPassword());
			pstmt.setString(6,m.getAddress());
			pstmt.setString(7,m.getGender());
			pstmt.setString(8,m.getRrn_yyyy());
			pstmt.setString(9,m.getRrn_mm());
			pstmt.setString(10,m.getRrn_dd());

			System.out.println("등록건수:"+pstmt.executeUpdate());
			con.commit();
		} catch (SQLException e1) {
			System.out.println("DB에러:"+e1.getMessage());
			try {
				con.rollback();
			} catch (SQLException e11) {
				// TODO Auto-generated catch block
				System.out.println("rollback 에러:"+e11.getMessage());
			}
		} catch(Exception e1) {
			System.out.println("일반 에러:"+e1.getMessage());
		}finally {
			DB.close(rs, pstmt, con);
		}
	}
	
	
	
	public boolean checkId (String id){
		boolean isSuccess=false;
		List<MarketMemverVO> Mlist = new ArrayList<MarketMemverVO>();
		String sql = "SELECT * FROM MARKETUSER2\r\n"
				+ "WHERE id=?";
		try {
			con = DB.con();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
			isSuccess=rs.next(); //해당 id,pass로 조회될땜만 true 그 외, false
			
			System.out.println("데이터 건수:"+Mlist.size());
			
		} catch (SQLException e) {
			System.out.println("DB에러:"+e.getMessage());
		} catch(Exception e) {
			System.out.println("일반 에러:"+e.getMessage());
		}finally {
			DB.close(rs, pstmt, con);
		}
		
		return isSuccess;
	}
	
	//=========================================================================================================
		 public boolean Login_boolean (String id, String pass){
			 	boolean LoginSuccess=false;
		      List<MarketMemverVO> Mlist = new ArrayList<MarketMemverVO>();
		      String sql = "SELECT * FROM MARKETUSER2\r\n"
		      		+ "WHERE id=?\r\n"
		      		+ "AND PASSWORD =?";
		      try {
		         con = DB.con();
		         pstmt = con.prepareStatement(sql);
		         pstmt.setString(1, id);
		         pstmt.setString(2, pass);
		         rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
		         LoginSuccess=rs.next(); //해당 id,pass로 조회될땜만 true 그 외, false
		         
		         System.out.println("데이터 건수:"+Mlist.size());
		         
		      } catch (SQLException e) {
		         System.out.println("DB에러:"+e.getMessage());
		      } catch(Exception e) {
		         System.out.println("일반 에러:"+e.getMessage());
		      }finally {
		         DB.close(rs, pstmt, con);
		      }
		      
		      return LoginSuccess;
		   }
		 //=========================================================================================================
		 public boolean Login_boolean (String email){
			 boolean LoginSuccess=false;
			 List<MarketMemverVO> Mlist = new ArrayList<MarketMemverVO>();
			 String sql = "SELECT * FROM MARKETUSER2\r\n"
					 + "WHERE email=?";
			 try {
				 con = DB.con();
				 pstmt = con.prepareStatement(sql);
				 pstmt.setString(1, email);
				 rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
				 LoginSuccess=rs.next(); //해당 id,pass로 조회될땜만 true 그 외, false
				 
				 System.out.println("데이터 건수:"+Mlist.size());
				 
			 } catch (SQLException e) {
				 System.out.println("DB에러:"+e.getMessage());
			 } catch(Exception e) {
				 System.out.println("일반 에러:"+e.getMessage());
			 }finally {
				 DB.close(rs, pstmt, con);
			 }
			 
			 return LoginSuccess;
		 }
			//==================================================================================================
	
		 public List<MarketMemverVO> getUserInfoAll(String id,String pass){
			 List<MarketMemverVO> mlist = new ArrayList<MarketMemverVO>();
			 String sql = "SELECT * FROM MARKETUSER2\r\n"
					 + "WHERE id=?\r\n"
					 + "AND PASSWORD =?";
			 try {
				 con = DB.con();
				 pstmt = con.prepareStatement(sql);
				 pstmt.setString(1, id);
				 pstmt.setString(2, pass);
				 rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
				 // select * ==> deptno, dname, loc
				 while(rs.next()) {
					 // select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
					 // 맞게 rs.get타입("컬럼명") 지정하여야 한다.
					 mlist.add(new MarketMemverVO(
							 rs.getString(1),
							 rs.getString(2),
							 rs.getString(3),
							 rs.getString(4),
							 rs.getString(5),
							 rs.getString(6),
							 rs.getString(7),
							 rs.getString(8),
							 rs.getString(9),
							 rs.getString(10),
							 rs.getString(11),
							 rs.getInt(12)
							 ));
				 }
				 System.out.println("데이터 건수:"+mlist.size());
				 
			 } catch (SQLException e) {
				 System.out.println("DB에러:"+e.getMessage());
			 } catch(Exception e) {
				 System.out.println("일반 에러:"+e.getMessage());
			 }finally {
				 DB.close(rs, pstmt, con);
			 }
			 
			 return mlist;
		 }	
	
		 //==================================================================================================
		 
		 public List<MarketMemverVO> getUserInfoAll(String email){
			 List<MarketMemverVO> mlist = new ArrayList<MarketMemverVO>();
			 String sql = "SELECT * FROM MARKETUSER2\r\n"
					 + "WHERE email=?";
			 try {
				 con = DB.con();
				 pstmt = con.prepareStatement(sql);
				 pstmt.setString(1, email);

				 rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
				 // select * ==> deptno, dname, loc
				 while(rs.next()) {
					 // select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
					 // 맞게 rs.get타입("컬럼명") 지정하여야 한다.
					 mlist.add(new MarketMemverVO(
							 rs.getString(1),
							 rs.getString(2),
							 rs.getString(3),
							 rs.getString(4),
							 rs.getString(5),
							 rs.getString(6),
							 rs.getString(7),
							 rs.getString(8),
							 rs.getString(9),
							 rs.getString(10),
							 rs.getString(11),
							 rs.getInt(12)
							 ));
				 }
				 System.out.println("데이터 건수:"+mlist.size());
				 
			 } catch (SQLException e) {
				 System.out.println("DB에러:"+e.getMessage());
			 } catch(Exception e) {
				 System.out.println("일반 에러:"+e.getMessage());
			 }finally {
				 DB.close(rs, pstmt, con);
			 }
			 
			 return mlist;
		 }	
		 
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
