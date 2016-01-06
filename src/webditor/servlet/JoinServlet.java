package webditor.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import webditor.dataaccess.WebditorDAO;
import webditor.dataaccess.WebditorDAOImpl;
import webditor.datatransfer.Customer;

/**
 * Servlet implementation class LoginServlet
 */
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JoinServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		processing(request, response);
	}

	public void processing(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");

			String email = request.getParameter("email");
			String pw = request.getParameter("password");

			Customer customer = new Customer(email, pw);

			// DB connection
			WebditorDAO dao = new WebditorDAOImpl();

			if (dao.joinUser(customer) == false) {
				response.setContentType("text/html;charset=UTF-8");
				response.setCharacterEncoding("UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script> alert('이미 존재하는 email입니다.');location.href='index.jsp'</script>");
				out.flush();
				out.close();
				return;
			}
			// 회원가입 정상 처리

			RequestDispatcher dispatcher;

			HttpSession session = request.getSession(true);
			session.setAttribute("email", email);

			dispatcher = request.getRequestDispatcher("projectList.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

	}
}
