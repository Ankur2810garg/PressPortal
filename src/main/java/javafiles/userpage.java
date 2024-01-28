package javafiles;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userpage
 */
public class userpage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userpage() {
        super();
        // TODO Auto-generated constructor stub
    }

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
			    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/press","root","Hariom@123");

			}
			catch(Exception e)
			{
				System.out.println("DB Connection Failed");
			}
			
	}

}
