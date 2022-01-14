package beans;

import java.sql.*;

import java.util.Vector;

public class RegisterMgr {

	// �����ͺ��̽� ����
	// private final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
	// ����Ŭ�� ����̹� �� �����ͺ��̽� ����
		private final String JDBC_DRIVER = "oracle.jdbc.OracleDriver";
		private final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
		private final String USER = "scott";
		private final String PASS = "tiger";
		
		// ����Ŭ�� ����̹� ���� �׽�Ʈ
		public RegisterMgr() {
			try{
				Class.forName(JDBC_DRIVER);
				System.out.println("OK: JDBC ����̹� �ε� ����");
			}catch(Exception e){
				System.out.println("Error : JDBC ����̹� �ε� ����");
			}
		}
		
		
		public Vector<RegisterBean> getRegisterList() {
			// �ʱ�ȭ ������ �ص� ����
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			// ���� ����
			Vector<RegisterBean> vlist = new Vector<RegisterBean>();
			
			try {
				conn = DriverManager.getConnection(URL, USER, PASS);
				// ��ü ���ڵ� ��ȸ
				String sql = "select * from tblRegister";
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				
				while (rs.next()) {
					// �ڹٺ� ����
					RegisterBean bean = new RegisterBean();
					// �ڹٺ��� ��� �ʵ忡 �� ����
					bean.setUserId (rs.getString("userId"));
					bean.setPwd (rs.getString("pwd"));
					bean.setName (rs.getString("name"));
					bean.setEmail (rs.getString("email"));
					bean.setPhone (rs.getString("phone"));
					// ���Ϳ� ����
					vlist.addElement(bean);
				}
			} catch (Exception ex) {
				System.out.println("Exception" + ex);
			} finally {
				if(rs!=null)   try{rs.close();}   catch(SQLException e){}
				if(stmt!=null) try{stmt.close();} catch(SQLException e){}
				if(conn!=null) try{conn.close();} catch(SQLException e){}
			}
			// ���� ��ȯ(���̺��� ��� ���ڵ尡 �����)
			return vlist;
		}
		// �� ���ڵ� ��ȸ : getRegister()

//		DB ���̺� ��û 
//		sql ���� ���� 
//		   : select * from tblRegister  where userId = ? ;
//		sql ���� ���� ��� => ResultSet 
//		ResultSet => Vector 
//		Vector => JSP
//
//		�Է� =>  String userId
//		��� => Vector 
		
		// Ư�� ���ڵ� ��ȸ 
				public RegisterBean getRegister(String userId) {
					Connection conn = null;
					Statement stmt = null;
					ResultSet rs = null;
					PreparedStatement pstmt = null;
					
					// �ڹٺ� ����
					RegisterBean bean = new RegisterBean();
					
					try {
						// DB�� �����ؼ� userId�� �ش��ϴ� ���ڵ� ��ȯ
						conn = DriverManager.getConnection(URL, USER, PASS);
						//String sql = "select * from tblRegister where userId = '" + userId + "'";
						//System.out.println(sql);
						//stmt = conn.createStatement();
						//rs = stmt.executeQuery(sql);
						
						// PreparedStatement ��ü ���� 
						String sql = "select * from tblRegister where userId = ? ";
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, userId);
						rs = pstmt.executeQuery();
						
						
						// ����ؼ� while�� ������ �޴°��� �ƴ� if�� ã�Ƽ� �ֱ�
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
					
					// �ڹٺ� ����
					RegisterBean bean = new RegisterBean();
					
					try {
						// DB�� �����ؼ� userId�� �ش��ϴ� ���ڵ� ��ȯ
						conn = DriverManager.getConnection(URL, USER, PASS);
						//String sql = "select * from tblRegister where userId = '" + userId + "'";
						//System.out.println(sql);
						//stmt = conn.createStatement();
						//rs = stmt.executeQuery(sql);
						
						// PreparedStatement ��ü ���� 
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
					
					// �ڹٺ� ����
					RegisterBean bean = new RegisterBean();
					
					try {
						// DB�� �����ؼ� userId�� �ش��ϴ� ���ڵ� ��ȯ
						conn = DriverManager.getConnection(URL, USER, PASS);
						//String sql = "select * from tblRegister where userId = '" + userId + "'";
						//System.out.println(sql);
						//stmt = conn.createStatement();
						//rs = stmt.executeQuery(sql);
						
						// PreparedStatement ��ü ���� 
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
		// ���� �޼���
		public static void main(String[] args) {
			
			// ��ü ���ڵ� ��ȸ �׽�Ʈ
			RegisterMgr reg = new RegisterMgr();
			System.out.println(reg.getRegisterList()); // []
			
			// ���Ϳ� ��ü���ڵ� ����
			Vector<RegisterBean> vlist = reg.getRegisterList();
			System.out.println(vlist);
			
			// for ���� �̿��� ���� ���
			for (RegisterBean v : vlist) {
				System.out.println(v.getUserId() +"\t");
				System.out.println(v.getName() +"\t");
				System.out.println(v.getEmail() +"\t");
				System.out.println(v.getPhone() +"\t");
				System.out.println(v.getPwd() +"\t");
				System.out.println("\n======================\n");
			}
			// ���ڵ� ��ȸ �׽�Ʈ
			RegisterBean bean = reg.getRegister("maria6767");
			System.out.println(bean);
			System.out.println(bean.getPhone());
			System.out.println(bean.getEmail());
			System.out.println(bean.getName());
		}
} // RegisterMgr
