package webditor.servlet;

import java.io.IOException;
import java.io.PrintWriter;

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
import webditor.datatransfer.Project;

/**
 * Servlet implementation class newProjectServlet
 */
public class newProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public newProjectServlet() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
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

			String projectname = request.getParameter("name");
			String id = request.getParameter("id");

			Project proejct = new Project(projectname, id);
			// DB connection
			WebditorDAO dao = new WebditorDAOImpl();

			// 프로젝트 생성 정상 처리

			RequestDispatcher dispatcher;

			HttpSession session = request.getSession(true);
			session.setAttribute("id", id);

			dispatcher = request.getRequestDispatcher("edit.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

	}
}
