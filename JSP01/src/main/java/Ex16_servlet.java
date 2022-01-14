import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex16_servlet
 */
// �ּ� url web_mapping 
@WebServlet("/ex16")
public class Ex16_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// �ѱ� ���ڵ� 
		response.setCharacterEncoding("text/html; charset=UTF-8");
		// ���������� ����ϱ� ���� PrinterWriter  ���� ���� ���� 
		PrintWriter out = response.getWriter();
		// out.println(html�±�, ����, ���� ���) ��밡�� => �������� ��� 
		out.println("<h1>Hello world</h1>");
	}

}







