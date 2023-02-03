package frontWeb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;





public class MarketProd {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	
	
	
	public List<MarketVO> getProdList(MarketVO sch){
		List<MarketVO> mlist = new ArrayList<MarketVO>();
		String sql = "SELECT imgname,brand,prodname,price,discount,information FROM MARKETPROD";
		try {
			con = DB.con();
			pstmt = con.prepareStatement(sql);

			
			rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
			// select * ==> deptno, dname, loc
			while(rs.next()) {
				// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
				// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
				mlist.add(new MarketVO(
						rs.getString(1),
						rs.getString(2),
						rs.getString(3),
						rs.getDouble(4),
						rs.getDouble(5),
						rs.getString(6)
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
	public List<MarketVO> getProdList(){
		List<MarketVO> mlist = new ArrayList<MarketVO>();
		String sql = "SELECT imgname,brand,prodname,price,discount,information FROM MARKETPROD";
		try {
			con = DB.con();
			pstmt = con.prepareStatement(sql);

			
			rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
			// select * ==> deptno, dname, loc
			while(rs.next()) {
				// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
				// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
				mlist.add(new MarketVO(
						rs.getString(1),
						rs.getString(2),
						rs.getString(3),
						rs.getDouble(4),
						rs.getDouble(5),
						rs.getString(6)
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
	public List<MarketVO> getProdList1t4(){
		List<MarketVO> mlist = new ArrayList<MarketVO>();
		String sql = "SELECT * FROM (\r\n"
				+ "SELECT rownum AS num,isbn 품번,imgname 파일이름, prodname 품명, brand 브랜드, div 분류,price 가격, discount 할인율,\r\n"
				+ "		information 설명, registdate 등록일자 FROM MARKETPROD\r\n"
				+ "		ORDER BY ROWNUM)\r\n"
				+ "		WHERE num BETWEEN 1 AND 4";
		try {
			con = DB.con();
			pstmt = con.prepareStatement(sql);
			
			
			rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
			// select * ==> deptno, dname, loc
			while(rs.next()) {
				// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
				// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
				mlist.add(new MarketVO(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getDouble(7),
						rs.getDouble(8),
						rs.getString(9),
						rs.getDate(10)

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
	
	public List<MarketVO> getProdList5t8(){
		List<MarketVO> mlist = new ArrayList<MarketVO>();
		String sql = "SELECT * FROM (\r\n"
				+ "SELECT rownum AS num,isbn 품번,imgname 파일이름, prodname 품명, brand 브랜드, div 분류,price 가격, discount 할인율,\r\n"
				+ "		information 설명, registdate 등록일자 FROM MARKETPROD\r\n"
				+ "		ORDER BY ROWNUM)\r\n"
				+ "		WHERE num BETWEEN 5 AND 8";
		try {
			con = DB.con();
			pstmt = con.prepareStatement(sql);
			
			
			rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
			// select * ==> deptno, dname, loc
			while(rs.next()) {
				// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
				// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
				mlist.add(new MarketVO(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getDouble(7),
						rs.getDouble(8),
						rs.getString(9),
						rs.getDate(10)
						
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

	
	public List<MarketVO> getProdList9t12(){
		List<MarketVO> mlist = new ArrayList<MarketVO>();
		String sql = "SELECT * FROM (\r\n"
				+ "SELECT rownum AS num,isbn 품번,imgname 파일이름, prodname 품명, brand 브랜드, div 분류,price 가격, discount 할인율,\r\n"
				+ "		information 설명, registdate 등록일자 FROM MARKETPROD\r\n"
				+ "		ORDER BY ROWNUM)\r\n"
				+ "		WHERE num BETWEEN 9 AND 12";
		try {
			con = DB.con();
			pstmt = con.prepareStatement(sql);
			
			
			rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
			// select * ==> deptno, dname, loc
			while(rs.next()) {
				// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
				// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
				mlist.add(new MarketVO(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getDouble(7),
						rs.getDouble(8),
						rs.getString(9),
						rs.getDate(10)
						
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
	public List<MarketVO> getProdAllCount(){
		List<MarketVO> mlist = new ArrayList<MarketVO>();
		String sql = "SELECT count(*) FROM MARKETPROD";
		try {
			con = DB.con();
			pstmt = con.prepareStatement(sql);

			
			rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
			// select * ==> deptno, dname, loc
			while(rs.next()) {
				// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
				// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
				mlist.add(new MarketVO(
						rs.getInt(1)
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
	public List<MarketVO> getAlDdulList(){
		List<MarketVO> mlist = new ArrayList<MarketVO>();
		String sql = "SELECT imgname,brand,prodname,price,discount,information FROM MARKETPROD \r\n"
				+ "ORDER BY DISCOUNT DESC";
		try {
			con = DB.con();
			pstmt = con.prepareStatement(sql);

			
			rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
			// select * ==> deptno, dname, loc
			while(rs.next()) {
				// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
				// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
				mlist.add(new MarketVO(
						rs.getString(1),
						rs.getString(2),
						rs.getString(3),
						rs.getDouble(4),
						rs.getDouble(5),
						rs.getString(6)
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
		public List<MarketVO> getNewProdList(){
			List<MarketVO> mlist = new ArrayList<MarketVO>();
			String sql = "SELECT imgname,brand,prodname,price,discount,information FROM MARKETPROD \r\n"
					+ "ORDER BY REGISTDATE  DESC";
			try {
				con = DB.con();
				pstmt = con.prepareStatement(sql);

				
				rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
				// select * ==> deptno, dname, loc
				while(rs.next()) {
					// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
					// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
					mlist.add(new MarketVO(
							rs.getString(1),
							rs.getString(2),
							rs.getString(3),
							rs.getDouble(4),
							rs.getDouble(5),
							rs.getString(6)
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
		
//===================================================================================================================
		
				public List<MarketVO> getSearchList(MarketVO m){
					List<MarketVO> mlist = new ArrayList<MarketVO>();
					String sql = "SELECT imgname,brand,prodname,price,discount,information FROM MARKETPROD \r\n"
							+ "where ( BRAND || PRODNAME || DIV ||INFORMATION ) like '%'||?||'%'";
					try {
						con = DB.con();
						pstmt = con.prepareStatement(sql);
						pstmt.setString(1, m.getProdname());
						
						rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
						// select * ==> deptno, dname, loc
						while(rs.next()) {
							// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
							// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
							mlist.add(new MarketVO(
									rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getDouble(4),
									rs.getDouble(5),
									rs.getString(6)
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
				
//===================================================================================================================
						
						public List<MarketVO> getSearchCount(MarketVO m){
							List<MarketVO> mlist = new ArrayList<MarketVO>();
							String sql = "SELECT count(*) FROM MARKETPROD \r\n"
									+ "where ( BRAND || PRODNAME || DIV ||INFORMATION ) like '%'||?||'%'";
							try {
								con = DB.con();
								pstmt = con.prepareStatement(sql);
								pstmt.setString(1, m.getProdname());
								
								rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
								// select * ==> deptno, dname, loc
								while(rs.next()) {
									// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
									// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
									mlist.add(new MarketVO(
											rs.getInt(1)

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
						
						//===================================================================================================================
						
						public List<MarketVO> getCategoryList(MarketVO m){
							List<MarketVO> mlist = new ArrayList<MarketVO>();
							String sql = "SELECT imgname,brand,prodname,price,discount,information FROM MARKETPROD \r\n"
									+ "where div like '%'||?||'%'";
							try {
								con = DB.con();
								pstmt = con.prepareStatement(sql);
								pstmt.setString(1, m.getProdname());
								
								rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
								// select * ==> deptno, dname, loc
								while(rs.next()) {
									// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
									// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
									mlist.add(new MarketVO(
											rs.getString(1),
											rs.getString(2),
											rs.getString(3),
											rs.getDouble(4),
											rs.getDouble(5),
											rs.getString(6)
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
	//=========================================================================================================
						 public boolean Login_boolean (String id, String pass){
							 	boolean isSuccess=false;
						      List<MarketVO> Mlist = new ArrayList<MarketVO>();
						      String sql = "SELECT * FROM MARKETUSER\r\n"
						      		+ "WHERE id=?\r\n"
						      		+ "AND PASSWORD =?";
						      try {
						         con = DB.con();
						         pstmt = con.prepareStatement(sql);
						         pstmt.setString(1, id);
						         pstmt.setString(2, pass);
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
	//==================================================================================================
						 public List<FullProd> getFullProdInfo(String pname){
								List<FullProd> flist = new ArrayList<FullProd>();
								String sql = "SELECT * FROM PRODINFO p,MARKETPROD m\r\n"
										+ "WHERE p.prodname=m.PRODNAME \r\n"
										+ "AND p.prodname LIKE '%'||?||'%'";
								try {
									con = DB.con();
									pstmt = con.prepareStatement(sql);
									pstmt.setString(1, pname);
									
									rs = pstmt.executeQuery(); // sql를 넣지 않는다.!!(주의)
									// select * ==> deptno, dname, loc
									while(rs.next()) {
										// select에 해당 컬럼에 맞는 컬럼명, 데이터유형에
										// 맞게 rs.get타입("컬럼명") 지정하여야 한다.
										flist.add(new FullProd(
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
												rs.getString(12),
												rs.getString(13),
												rs.getString(14),
												rs.getDouble(15),
												rs.getDouble(16),
												rs.getString(17),
												rs.getDate(18)
													));
										
									}
									System.out.println("데이터 건수:"+flist.size());
									
								} catch (SQLException e) {
									System.out.println("DB에러:"+e.getMessage());
								} catch(Exception e) {
									System.out.println("일반 에러:"+e.getMessage());
								}finally {
									DB.close(rs, pstmt, con);
								}
								
								return flist;
							}
	public static void main(String[] args) {
		double a=38020;
		double b=34;
		
		double c= a*(b/100);
		int price = (int)Math.round(c);
		System.out.println(price);
				

	}

}
