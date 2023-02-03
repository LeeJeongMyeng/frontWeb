package webproject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import frontWeb.CartVO;
import frontWeb.DB;


public class Gesipan {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	

	
	
	public List<GesipanVO> getGesiAllList(GesipanVO sch){
		List<GesipanVO> dlist = new ArrayList<GesipanVO>();
		String sql = "SELECT * FROM QNA\r\n"
				+ "WHERE ( id || title ) like '%'||?||'%'\r\n"
				+ "ORDER BY REGITDATE  DESC";
		
		try {
			con = DB.con();
			pstmt = con.prepareStatement(sql);
			// 위 sql의 ?에 해당하는 문자열을 mapping해서 데이터를 전달
			// 1. 위 형태로 ?로 설정하는 해당 데이터 형태만 입력이 되지,
			// sql injection이 처리되지 않는다.
			// 2. ?로 같은 유형을 sql을 먼저 서버에 전달되기에 한번 컴파일된 이후로는
			//    빠르게 수행될 수 있다.
			// pstmt.setString(1번부터 ?에 해당하는 순서, 데이터 );
			pstmt.setString(1, sch.getGesiid()); //

			rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
			// select * ==> deptno, dname, loc
			while(rs.next()) {
				// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
				// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
				dlist.add(new GesipanVO(
								   rs.getInt(1),
								   rs.getString(2),
								   rs.getString(3),
								   rs.getDate(4),
								   rs.getString(5),
								   rs.getString(6),
								   rs.getString(7)));
				}
			System.out.println("데이터 건수:"+dlist.size());
			
		} catch (SQLException e) {
			System.out.println("DB에러:"+e.getMessage());
		} catch(Exception e) {
			System.out.println("일반 에러:"+e.getMessage());
		}finally {
			DB.close(rs, pstmt, con);
		}
		
		return dlist;
	}
//----------------------------------------------------------------------------------------------------
	 public GesipanVO getQnAView(GesipanVO j){
		 GesipanVO mem=null;
		 // boolean isSuccess = false;
		 String sql = "SELECT * FROM QNA\r\n"
		 		+ "WHERE QNANO = ?\r\n"
		 		+ "AND id =?";
		 try {
			 con = DB.con();
			 pstmt = con.prepareStatement(sql);
			 pstmt.setInt(1, j.getGesiqnano()); //
			 pstmt.setString(2, j.getGesiid()); //
			 rs = pstmt.executeQuery();

			 if(rs.next()) {
				 mem= new GesipanVO(  
						 rs.getInt(1),
						 rs.getString(2),
						 rs.getString(3),
						 rs.getDate(4),
						 rs.getString(5),
						 rs.getString(6)
						 );
				 
			 }
	
			 
		 } catch (SQLException e) {
			 System.out.println("DB에러:"+e.getMessage());
		 } catch(Exception e) {
			 System.out.println("일반 에러:"+e.getMessage());
		 }finally {
			 DB.close(rs, pstmt, con);
		 }
		 
		 return mem;
	 }
	//----------------------------------------------------------------------------------------------------
	 public int insertQnA(GesipanVO d) {
			String sql = "INSERT INTO QNA values(qna_seq.nextval,?,?,sysdate,?,?,'미답변')";
			int Success = 0;
			try {
				con = DB.con();
				con.setAutoCommit(false);
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, d.getGesititle());
				pstmt.setString(2, d.getGesiid());
				pstmt.setString(3, d.getGesiqnacontent());
				pstmt.setString(4, d.getGesiansercontent());
				
				//System.out.println("등록건수:"+pstmt.executeUpdate());
				Success = pstmt.executeUpdate();
				
				con.commit();
			} catch (SQLException e) {
				System.out.println("DB에러:"+e.getMessage());
				try {
					con.rollback();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					System.out.println("rollback 에러:"+e1.getMessage());
				}
			} catch(Exception e) {
				System.out.println("일반 에러:"+e.getMessage());
			}finally {
				DB.close(rs, pstmt, con);
			}
			return Success;
		}
	 public int UpdateQnA(GesipanVO d) {
		 String sql = "UPDATE QNA \r\n"
		 		+ "SET title = ?,\r\n"
		 		+ "    REGITDATE = SYSDATE,\r\n"
		 		+ "    QNACONTENT =?\r\n"
		 		+ "WHERE QNANO = ?";
		 int Success2 = 0;
		 try {
			 con = DB.con();
			 con.setAutoCommit(false);
			 pstmt = con.prepareStatement(sql);
			 pstmt.setString(1, d.getGesititle());
			 pstmt.setString(2, d.getGesiqnacontent());
			 pstmt.setInt(3, d.getGesiqnano());
			 
			 //System.out.println("등록건수:"+pstmt.executeUpdate());
			 Success2 = pstmt.executeUpdate();
			 
			 con.commit();
		 } catch (SQLException e) {
			 System.out.println("DB에러:"+e.getMessage());
			 try {
				 con.rollback();
			 } catch (SQLException e1) {
				 // TODO Auto-generated catch block
				 System.out.println("rollback 에러:"+e1.getMessage());
			 }
		 } catch(Exception e) {
			 System.out.println("일반 에러:"+e.getMessage());
		 }finally {
			 DB.close(rs, pstmt, con);
		 }
		 return Success2;
	 }
	 public int UpdateQnAMaster(GesipanVO d) {
		 String sql = "UPDATE QNA \r\n"
		 		+ "SET REGITDATE = SYSDATE,\r\n"
		 		+ "    ansercontent=?,\r\n"
		 		+ "    Status ='답변완료'\r\n"
		 		+ "WHERE QNANO = ?";
		 int Success4 = 0;
		 try {
			 con = DB.con();
			 con.setAutoCommit(false);
			 pstmt = con.prepareStatement(sql);
			 pstmt.setString(1, d.getGesiansercontent());
			 pstmt.setInt(2, d.getGesiqnano());
			 
			 //System.out.println("등록건수:"+pstmt.executeUpdate());
			 Success4 = pstmt.executeUpdate();
			 
			 con.commit();
		 } catch (SQLException e) {
			 System.out.println("DB에러:"+e.getMessage());
			 try {
				 con.rollback();
			 } catch (SQLException e1) {
				 // TODO Auto-generated catch block
				 System.out.println("rollback 에러:"+e1.getMessage());
			 }
		 } catch(Exception e) {
			 System.out.println("일반 에러:"+e.getMessage());
		 }finally {
			 DB.close(rs, pstmt, con);
		 }
		 return Success4;
	 }
	 public int DeleteQnA(GesipanVO d) {
		 String sql = "DELETE qna\r\n"
		 		+ "WHERE qnano=?";
		 int Success3 = 0;
		 try {
			 con = DB.con();
			 con.setAutoCommit(false);
			 pstmt = con.prepareStatement(sql);
			 pstmt.setInt(1, d.getGesiqnano());

			 
			 //System.out.println("등록건수:"+pstmt.executeUpdate());
			 Success3 = pstmt.executeUpdate();
			 
			 con.commit();
		 } catch (SQLException e) {
			 System.out.println("DB에러:"+e.getMessage());
			 try {
				 con.rollback();
			 } catch (SQLException e1) {
				 // TODO Auto-generated catch block
				 System.out.println("rollback 에러:"+e1.getMessage());
			 }
		 } catch(Exception e) {
			 System.out.println("일반 에러:"+e.getMessage());
		 }finally {
			 DB.close(rs, pstmt, con);
		 }
		 return Success3;
	 }
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
