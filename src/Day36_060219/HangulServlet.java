package Day36_060219;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HangulServlet
 */
@WebServlet("/Day36_060219/hangul")
public class HangulServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HangulServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	// 1¹ø
	// protected void doGet(HttpServletRequest request, HttpServletResponse
	// response)
	// throws ServletException, IOException {
	// String name = request.getParameter("name");
	// String korName = HangulUtil.toKor(name);
	//
	// response.setContentType("text/html;charset=euc-kr");
	// PrintWriter out = response.getWriter();
	// out.println("original = " + name);
	// out.println("hangul Process = " + korName);
	// }
	/*
	 * ÅèÄ¹ÀÇ server.xml <Connector connectionTimeout="20000" port="8080"
	 * protocol="HTTP/1.1" redirectPort="8443" URIEncoding="euc-kr"
	 * userBodyEncodingForURI="true"/>·Î ¹Ù²ãÁà¾ßÇÑ´Ù.
	 */

	// 2¹ø
	// protected void doGet(HttpServletRequest request, HttpServletResponse
	// response)
	// throws ServletException, IOException {
	// String name = request.getParameter("name");
	// String korName = name;
	//
	// response.setContentType("text/html;charset=euc-kr");
	// PrintWriter out = response.getWriter();
	// out.println("original = " + name);
	// out.println("hangul Process = " + korName);
	// }

	// 3¹ø
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String name = request.getParameter("name");
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.println("hangul Process = " + name);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String name = request.getParameter("name");
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.println("hangul Process = " + name);

	}

}
