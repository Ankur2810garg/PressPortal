package javafiles;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Dao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   public Dao() {
        super();
        
    }
   
   public void db_connection()
   {
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

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					
	db_connection();		
	}

}
