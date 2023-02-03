package frontWeb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class User {
	
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	
	//=========================================================================================================
	 public boolean Login_boolean (String id, String pass){
		 	boolean LoginSuccess=false;
	      List<UserVO> Mlist = new ArrayList<UserVO>();
	      String sql = "SELECT * FROM MARKETUSER\r\n"
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
		//==================================================================================================
		public List<UserVO> getUserInfoAll(String id,String pass){
			List<UserVO> mlist = new ArrayList<UserVO>();
			String sql = "SELECT * FROM MARKETUSER\r\n"
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
					mlist.add(new UserVO(
							rs.getString(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4),
							rs.getString(5),
							rs.getString(6),
							rs.getString(7),
							rs.getString(8),
							rs.getInt(9)
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
