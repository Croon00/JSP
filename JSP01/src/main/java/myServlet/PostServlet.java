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
		// 한글 인코딩 
		request.setCharacterEncoding("utf-8"); 
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userEmail = request.getParameter("userEmail");
		
		// 한글 인코딩 
		response.setCharacterEncoding("text/html; charset=UTF-8");
		// 웹브라우저에 출력하기 위해 PrinterWriter  참조 변수 생성 
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>회원 정보 출력</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>회원 정보</h1>");
		out.println("<p>아이디 : " + userId + "</p>");
		out.println("<p>비밀번호 : " + userPwd + "</p>");
		out.println("<p>이메일 : " + userEmail + "</p>");		
		out.println("</body>");
		out.println("</html>");
		
		
	}

}










