/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.69
 * Generated at: 2021-07-16 08:00:49 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class quizDB6_005fall_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

 
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "scott";
	String pass = "tiger";
	String sql = "select * from student";

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("java.sql.Statement");
    _jspx_imports_classes.add("java.sql.DriverManager");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!-- \r\n");
      out.write("\r\n");
      out.write("DROP TABLE STUDENT; \r\n");
      out.write("\r\n");
      out.write("create table STUDENT\r\n");
      out.write("(\r\n");
      out.write("ST_NO    NUMBER PRIMARY KEY,\r\n");
      out.write("ST_NAME  NVARCHAR2(7),\r\n");
      out.write("KOR  NUMBER,\r\n");
      out.write("ENG  NUMBER,\r\n");
      out.write("MATH  NUMBER\r\n");
      out.write(");\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("CREATE SEQUENCE SEQ77\r\n");
      out.write("  INCREMENT BY 1 START WITH 1\r\n");
      out.write("  MAXVALUE 5000 MINVALUE 1\r\n");
      out.write("  NOCYCLE CACHE 2 ;\r\n");
      out.write("\r\n");
      out.write("INSERT INTO STUDENT  VALUES (SEQ77.NEXTVAL, '홍진호',  55 , 67 , 89 ); \r\n");
      out.write("INSERT INTO STUDENT  VALUES (SEQ77.NEXTVAL, '심순애',  88 , 99 , 67 ); \r\n");
      out.write("INSERT INTO STUDENT  VALUES (SEQ77.NEXTVAL, '고길동',  88 , 89 , 67 ); \r\n");
      out.write("\r\n");
      out.write("SELECT * FROM STUDENT;\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>전체 레코드 목록 표시 </title>\r\n");
      out.write("<!-- <link rel=\"stylesheet\" href=\"style.css\" /> -->\r\n");
      out.write("\r\n");
      out.write("<!-- 부트스트랩 연결 -->\r\n");
      out.write("<!-- Latest compiled and minified CSS -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\r\n");
      out.write("\r\n");
      out.write("<!-- jQuery library -->\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<!-- Popper JS -->\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<!-- Latest compiled JavaScript -->\r\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<h1 class=\"text-center\">STUDENT 테이블</h1>\r\n");
      out.write("	<table class=\"table\">\r\n");
      out.write("	<tr><td colspan=\"5\" style=\"text-align:right\"><a href=\"quizDB6_form.jsp\" class=\"btn btn-secondary\">학생 추가</a></td></tr>\r\n");
      out.write("	");

			try {
				// JDBC 드라이버 로드 
				Class.forName("oracle.jdbc.driver.OracleDriver");
				// 데이타베이스 연결 
				conn = DriverManager.getConnection(url, uid, pass);
				// sql 명령어 준비 
				stmt = conn.createStatement();
				// sql 명령어 수행후 결과값을 변수에 받을 수 있도록 준비
				rs = stmt.executeQuery(sql);

				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>" + rs.getInt("ST_NO") + "</td>");
					out.println("<td>" + rs.getString("ST_NAME") + "</td>");
					out.println("<td> <a class='btn btn-success' href='quizDB6_info.jsp?st_no=" + rs.getInt("ST_NO") + "'>더보기</a></td>");
					out.println("<td> <a class='btn btn-warning' href='quizDB6_delete.jsp?st_no=" + rs.getInt("ST_NO") + "'>삭제</a></td>");
					out.println("<td> <a class='btn btn-danger' href='quizDB6_update.jsp?st_no=" + rs.getInt("ST_NO") + "'>수정</a></td>");
					out.println("</tr>");
				}//while의 끝
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null)
						rs.close();
					if (stmt != null)
						stmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}//finally의 끝
		
      out.write("\r\n");
      out.write("		</table>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
