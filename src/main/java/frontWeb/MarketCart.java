package frontWeb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/*import jspexp.a13_database.DB;*/
import java.util.ArrayList;
import java.util.List;


public class MarketCart {

	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	public void insertCart(CartVO c) {
		String sql = "INSERT INTO MARKETCART \r\n"
				+ "SELECT ?,imgname,brand,prodname,?,price,discount FROM MARKETPROD\r\n"
				+ "WHERE prodname =?";
		try {
			con = DB.con();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, c.getId());
			pstmt.setInt(2,c.getCnt() );
			pstmt.setString(3, c.getProdname());

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
	
	public List<CartVO> getSearchCartList(CartVO c){
		List<CartVO> clist = new ArrayList<CartVO>();
		String sql = "SELECT * FROM MARKETCART\r\n"
				+ "WHERE id = ?";
		try {
			con = DB.con();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, c.getId());

			
			rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
			// select * ==> deptno, dname, loc
			while(rs.next()) {
				// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
				// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
				clist.add(new CartVO(
						rs.getString(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getInt(5),
						rs.getDouble(6),
						rs.getDouble(7)
							));
				
			}
			System.out.println("데이터 건수:"+clist.size());
			
		} catch (SQLException e) {
			System.out.println("DB에러:"+e.getMessage());
		} catch(Exception e) {
			System.out.println("일반 에러:"+e.getMessage());
		}finally {
			DB.close(rs, pstmt, con);
		}
		
		return clist;
	}
	
	public static void main(String[] args) {
		

	}

}
