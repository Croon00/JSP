package myServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PostServlet
 */
@WebServlet("/postServlet")
public class PostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// �ѱ� ���ڵ� 
		request.setCharacterEncoding("utf-8"); 
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userEmail = request.getParameter("userEmail");
		
		// �ѱ� ���ڵ� 
		response.setCharacterEncoding("text/html; charset=UTF-8");
		// ���������� ����ϱ� ���� PrinterWriter  ���� ���� ���� 
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>ȸ�� ���� ���</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>ȸ�� ����</h1>");
		out.println("<p>���̵� : " + userId + "</p>");
		out.println("<p>��й�ȣ : " + userPwd + "</p>");
		out.println("<p>�̸��� : " + userEmail + "</p>");		
		out.println("</body>");
		out.println("</html>");
		
		
	}

}










