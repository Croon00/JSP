package beans;

import java.sql.*;

import java.util.Vector;

public class RegisterMgr {

	// 데이터베이스 연동
	// private final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
	// 오라클용 드라이버 및 데이터베이스 설정
		private final String JDBC_DRIVER = "oracle.jdbc.OracleDriver";
		private final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
		private final String USER = "scott";
		private final String PASS = "tiger";
		
		// 오라클용 드라이버 연결 테스트
		public RegisterMgr() {
			try{
				Class.forName(JDBC_DRIVER);
				System.out.println("OK: JDBC 드라이버 로딩 성공");
			}catch(Exception e){
				System.out.println("Error : JDBC 드라이버 로딩 실패");
			}
		}
		
		
		public Vector<RegisterBean> getRegisterList() {
			// 초기화 위에서 해도 가능
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			// 벡터 선언
			Vector<RegisterBean> vlist = new Vector<RegisterBean>();
			
			try {
				conn = DriverManager.getConnection(URL, USER, PASS);
				// 전체 레코드 조회
				String sql = "select * from tblRegister";
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				
				while (rs.next()) {
					// 자바빈 선언
					RegisterBean bean = new RegisterBean();
					// 자바빈의 멤버 필드에 값 지정
					bean.setUserId (rs.getString("userId"));
					bean.setPwd (rs.getString("pwd"));
					bean.setName (rs.getString("name"));
					bean.setEmail (rs.getString("email"));
					bean.setPhone (rs.getString("phone"));
					// 벡터에 저장
					vlist.addElement(bean);
				}
			} catch (Exception ex) {
				System.out.println("Exception" + ex);
			} finally {
				if(rs!=null)   try{rs.close();}   catch(SQLException e){}
				if(stmt!=null) try{stmt.close();} catch(SQLException e){}
				if(conn!=null) try{conn.close();} catch(SQLException e){}
			}
			// 벡터 반환(테이블의 모든 레코드가 저장된)
			return vlist;
		}
		// 상세 레코드 조회 : getRegister()

//		DB 테이블 요청 
//		sql 구문 실행 
//		   : select * from tblRegister  where userId = ? ;
//		sql 구문 실행 결과 => ResultSet 
//		ResultSet => Vector 
//		Vector => JSP
//
//		입력 =>  String userId
//		출력 => Vector 
		
		// 특정 레코드 조회 
				public RegisterBean getRegister(String userId) {
					Connection conn = null;
					Statement stmt = null;
					ResultSet rs = null;
					PreparedStatement pstmt = null;
					
					// 자바빈 선언
					RegisterBean bean = new RegisterBean();
					
					try {
						// DB에 연결해서 userId에 해당하는 레코드 반환
						conn = DriverManager.getConnection(URL, USER, PASS);
						//String sql = "select * from tblRegister where userId = '" + userId + "'";
						//System.out.println(sql);
						//stmt = conn.createStatement();
						//rs = stmt.executeQuery(sql);
						
						// PreparedStatement 객체 생성 
						String sql = "select * from tblRegister where userId = ? ";
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, userId);
						rs = pstmt.executeQuery();
						
						
						// 계속해서 while로 돌려서 받는것이 아닌 if로 찾아서 넣기
						if (rs.next()) { 
							bean.setUserId (rs.getString("userId"));
							bean.setPwd (rs.getString("pwd"));
							bean.setName (rs.getString("name"));
							bean.setEmail (rs.getString("email"));
							bean.setPhone (rs.getString("phone"));
						}

					} catch (Exception ex) {
						System.out.println("Exception" + ex);
					} finally {
						if(rs!=null)   try{rs.close();}   catch(SQLException e){}
						if(stmt!=null) try{stmt.close();} catch(SQLException e){}
						if(conn!=null) try{conn.close();} catch(SQLException e){}
					}
					
					return bean;
				}
		
				public void deleteRegister(String userId) {
					Connection conn = null;
					Statement stmt = null;
					ResultSet rs = null;
					PreparedStatement pstmt = null;
					
					// 자바빈 선언
					RegisterBean bean = new RegisterBean();
					
					try {
						// DB에 연결해서 userId에 해당하는 레코드 반환
						conn = DriverManager.getConnection(URL, USER, PASS);
						//String sql = "select * from tblRegister where userId = '" + userId + "'";
						//System.out.println(sql);
						//stmt = conn.createStatement();
						//rs = stmt.executeQuery(sql);
						
						// PreparedStatement 객체 생성 
						String sql = "delete * from tblRegister where userId = ? ";
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, userId);
						pstmt.executeUpdate();
						
				
						
					} catch (Exception ex) {
						System.out.println("Exception" + ex);
					} finally {
						if(rs!=null)   try{rs.close();}   catch(SQLException e){}
						if(stmt!=null) try{stmt.close();} catch(SQLException e){}
						if(conn!=null) try{conn.close();} catch(SQLException e){}
					}
					
		
				}
				
				public RegisterBean addRegister(String userId, String pwd, String name, String email, String phone) {
					Connection conn = null;
					Statement stmt = null;
					ResultSet rs = null;
					PreparedStatement pstmt = null;
					
					// 자바빈 선언
					RegisterBean bean = new RegisterBean();
					
					try {
						// DB에 연결해서 userId에 해당하는 레코드 반환
						conn = DriverManager.getConnection(URL, USER, PASS);
						//String sql = "select * from tblRegister where userId = '" + userId + "'";
						//System.out.println(sql);
						//stmt = conn.createStatement();
						//rs = stmt.executeQuery(sql);
						
						// PreparedStatement 객체 생성 
						String sql = "INSERT INTO tblRegister  VALUES (?, ?, ?, ?, ?)";
						
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, userId);
						pstmt.setString(2, pwd);
						pstmt.setString(3, name);
						pstmt.setString(4, email);
						pstmt.setString(5, phone);
						
					} catch (Exception ex) {
						System.out.println("Exception" + ex);
					} finally {
						if(rs!=null)   try{rs.close();}   catch(SQLException e){}
						if(stmt!=null) try{stmt.close();} catch(SQLException e){}
						if(conn!=null) try{conn.close();} catch(SQLException e){}
					}
					
					return bean;
				}
		// 실행 메서드
		public static void main(String[] args) {
			
			// 전체 레코드 조회 테스트
			RegisterMgr reg = new RegisterMgr();
			System.out.println(reg.getRegisterList()); // []
			
			// 벡터에 전체레코드 저장
			Vector<RegisterBean> vlist = reg.getRegisterList();
			System.out.println(vlist);
			
			// for 문을 이용한 섹터 출력
			for (RegisterBean v : vlist) {
				System.out.println(v.getUserId() +"\t");
				System.out.println(v.getName() +"\t");
				System.out.println(v.getEmail() +"\t");
				System.out.println(v.getPhone() +"\t");
				System.out.println(v.getPwd() +"\t");
				System.out.println("\n======================\n");
			}
			// 레코드 조회 테스트
			RegisterBean bean = reg.getRegister("maria6767");
			System.out.println(bean);
			System.out.println(bean.getPhone());
			System.out.println(bean.getEmail());
			System.out.println(bean.getName());
		}
} // RegisterMgr
