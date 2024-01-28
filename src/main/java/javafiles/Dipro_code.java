package javafiles;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



/**
 * Servlet implementation class Dipro_code
 */
@WebServlet("/Dipro_code")
public class Dipro_code extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Dipro_code() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String newsresource = request.getParameter("newsresource");
		String comment = request.getParameter("comment");
		HttpSession session= request.getSession();
		session.setAttribute("newsresource", newsresource);
		session.setAttribute("comment", comment);
	}

}
