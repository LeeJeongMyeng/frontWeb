package frontWeb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MapList {

	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public List<MapVO> getBigMapList(){
		List<MapVO> mlist = new ArrayList<MapVO>();
		String sql = "SELECT DISTINCT bigmap FROM maplist";
		try {
			con = DB.con();
			pstmt = con.prepareStatement(sql);

			
			rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
			// select * ==> deptno, dname, loc
			while(rs.next()) {
				// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
				// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
				mlist.add(new MapVO(
						rs.getString(1)		
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
	public List<MapVO> getAllMapList(){
		List<MapVO> mlist = new ArrayList<MapVO>();
		String sql = "SELECT DISTINCT * FROM maplist";
		try {
			con = DB.con();
			pstmt = con.prepareStatement(sql);
			
			
			rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
			
			// select * ==> deptno, dname, loc
			while(rs.next()) {
				// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
				// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
				mlist.add(new MapVO(
						rs.getString(1),		
						rs.getString(2),		
						rs.getString(3)		
						));
				
			}
			System.out.println("데이터 건수:"+mlist.size());
			System.out.println("데이터 mlist:"+mlist);
			System.out.println("데이터 mlist:"+mlist.get(0).getBigmap());
			
		} catch (SQLException e) {
			System.out.println("DB에러:"+e.getMessage());
		} catch(Exception e) {
			System.out.println("일반 에러:"+e.getMessage());
		}finally {
			DB.close(rs, pstmt, con);
		}
		
		return mlist;
	}
	public List<MapVO> getBMMapList(){
		List<MapVO> mlist = new ArrayList<MapVO>();
		String sql = "SELECT DISTINCT bigmap, MIDMAP  FROM maplist\r\n"
				+ "WHERE bigmap LIKE '%'||'서울특별시'||'%'";
		try {
			con = DB.con();
			pstmt = con.prepareStatement(sql);
			
			
			rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
			// select * ==> deptno, dname, loc
			while(rs.next()) {
				// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
				// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
				mlist.add(new MapVO(
						rs.getString(1),		
						rs.getString(2)		
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
	
	public List<MapVO> getMidMapList(MapVO m){
		List<MapVO> mlist = new ArrayList<MapVO>();
		String sql = "SELECT DISTINCT midmap FROM maplist\r\n"
				+ "WHERE bigmap LIKE '%'||?||'%'";
		try {
			con = DB.con();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, m.getBigmap());
			
			rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
			// select * ==> deptno, dname, loc
			while(rs.next()) {
				// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
				// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
				mlist.add(new MapVO(
						rs.getString(1)		
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
	
	public List<MapVO> getSmallMapList(MapVO m){
		List<MapVO> mlist = new ArrayList<MapVO>();
		String sql = "SELECT DISTINCT smallmap FROM maplist\r\n"
				+ "WHERE midmap LIKE '%'||?||'%'";
		try {
			con = DB.con();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, m.getMidmap());
			
			rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
			// select * ==> deptno, dname, loc
			while(rs.next()) {
				// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
				// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
				mlist.add(new MapVO(
						rs.getString(1)		
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
