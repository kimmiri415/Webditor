package webditor.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
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
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
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

			// DB connection
			WebditorDAO dao = new WebditorDAOImpl();

			RequestDispatcher dispatcher;
			if (dao.login(email, pw)) {
				// 로그인 정상 처리

				HttpSession session = request.getSession(true);
				session.setAttribute("email", email);

				dispatcher = request.getRequestDispatcher("projectList.jsp");
				dispatcher.forward(request, response);
			} else {

				response.setContentType("text/html;charset=UTF-8");
				response.setCharacterEncoding("UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script> alert('id와 pw를 확인해주세요.');location.href='index.jsp'</script>");
				out.flush();
				out.close();
			}

		} catch (Exception e1) {
			// TODO Auto-generated catch block
			getServletContext().log("Error in LoginServlet:",e1);
			e1.printStackTrace();
		}

	}
}
